# frozen_string_literal: true

require_relative "pixelflow_canvas/version"
require_relative "pixelflow_canvas/vga_palette.rb"
require 'chunky_png'
require 'json'
require 'socket'
require 'time'
require 'yaml'

module Pixelflow
    class Canvas
        COLOR_MODES = {
            :rgb => 0,
            :palette => 1,
        }
        ADVANCE_MODES = {
            :right => 0,
            :down => 1
        }
        DRAW_MODES = {
            :direct => 0,
            :buffered => 1
        }
        COMPOSE_MODES = {
            :copy => 0,
            :add => 1,
            :subtract => 2,
            :multiply => 3,
        }
        INTERPOLATION_MODES = {
            :nearest => 0,
            :bilinear => 1,
        }
        def initialize(width, height, color_mode = nil, &block)
            @width = 320
            @height = 180
            @x = 0
            @y = 0
            @r = color_mode == :palette ? 15 : 255
            @g = color_mode == :palette ? 0 : 255
            @b = color_mode == :palette ? 0 : 255
            @mask = nil
            @color_mode = :rgb
            @advance_mode = :right
            @draw_mode = :direct
            @compose_mode = :copy
            @palette = VGA_PALETTE.dup
            @socket = TCPSocket.new('127.0.0.1', 19223)
            set_size(width, height)
            set_color_mode(color_mode) if color_mode
            @last_timestamp = Time.now.to_f
            if block_given?
                instance_eval(&block)
            end
        end

        attr_reader :width, :height, :color_mode

        def run(&block)
            instance_eval(&block)
        end

        def set_size(width, height)
            @x = 0
            @y = 0
            @width = width
            @height = height
            recreate_screen()
            @socket.write([1, width, height].pack('Cnn'))
            @socket.flush
        end

        def recreate_screen()
            @screen = [0] * @width * @height * (@color_mode == :rgb ? 3 : 1)
        end

        def set_color_mode(mode)
            unless COLOR_MODES.keys.include?(mode)
                raise "Invalid color mode: #{mode}"
            end
            @color_mode = mode
            if mode == :palette
                @palette = VGA_PALETTE.dup
            end
            recreate_screen()
            @socket.write([2, COLOR_MODES[@color_mode]].pack('CC'))
            @socket.flush
        end

        def set_advance_mode(mode)
            unless ADVANCE_MODES.keys.include?(mode)
                raise "Invalid advance mode: #{mode}"
            end
            @advance_mode = mode
            @socket.write([4, ADVANCE_MODES[@advance_mode]].pack('CC'))
            @socket.flush
        end

        def set_draw_mode(mode)
            unless DRAW_MODES.keys.include?(mode)
                raise "Invalid draw mode: #{mode}"
            end
            @draw_mode = mode
        end

        def set_compose_mode(mode)
            unless COMPOSE_MODES.keys.include?(mode)
                raise "Invalid compose mode: #{mode}"
            end
            if mode != :copy && @color_mode != :rgb
                raise "Cannot switch compose mode to #{mode} in palette color mode!"
            end
            @compose_mode = mode
        end

        def set_interpolation_mode(mode)
            unless INTERPOLATION_MODES.keys.include?(mode)
                raise "Invalid interpolation mode: #{mode}"
            end
            @socket.write([8, INTERPOLATION_MODES[mode]].pack('CC'))
            @socket.flush
        end

        def flip()
            if @draw_mode == :buffered
                @socket.write([7].pack('C'))
                @socket.write(@screen.pack('C*'))
                @socket.flush
            end
        end

        def ensure_max_fps(fps)
            fps1 = 1.0 / fps
            t = Time.now.to_f
            if @last_timestamp
                loop do
                    sleep 0.01
                    break if (Time.now.to_f - @last_timestamp) >= fps1
                end
            end
            @last_timestamp = Time.now.to_f
        end

        def save_as_png(path)
            if @color_mode == :rgb
                image = ChunkyPNG::Image.from_rgb_stream(@width, @height, @screen.pack('C*'))
                image.save(path)
            else
                buffer = [0] * @width * @height * 3
                offset = 0
                source = 0
                (0...@height).each do |y|
                    (0...@width).each do |x|
                        i = @screen[source]
                        buffer[offset + 0] = @palette[i * 3+ 0]
                        buffer[offset + 1] = @palette[i * 3 + 1]
                        buffer[offset + 2] = @palette[i * 3 + 2]
                        source += 1
                        offset += 3
                    end
                end
                image = ChunkyPNG::Image.from_rgb_stream(@width, @height, buffer.pack('C*'))
                image.save(path)
            end
        end

        class MaskGenerator
            def initialize(canvas)
                @canvas = canvas
                @mask = [false] * canvas.width * canvas.height
            end

            attr_reader :mask

            def add_color(r = nil, g = nil, b = nil)
                offset = 0
                (0...@canvas.height).each do |y|
                    (0...@canvas.width).each do |x|
                        if @canvas.color_mode == :rgb
                            if @canvas.get_pixel(x, y) == [r, g, b]
                                @mask[offset] = true
                            end
                        else
                            if @canvas.get_pixel(x, y) == r
                                @mask[offset] = true
                            end
                        end
                        offset += 1
                    end
                end
            end
        end

        def set_mask(&block)
            @mask = MaskGenerator.new(self)
            @mask.instance_eval(&block)
        end

        def remove_mask()
            @mask = nil
        end

        def set_color(r, g = 0, b = 0)
            r = r.to_i.clamp(0, 255)
            g = g.to_i.clamp(0, 255)
            b = b.to_i.clamp(0, 255)
            @r = r
            @g = g
            @b = b
        end

        def set_palette(i, r, g, b)
            i = i.to_i.clamp(0, 255)
            r = r.to_i.clamp(0, 255)
            g = g.to_i.clamp(0, 255)
            b = b.to_i.clamp(0, 255)
            @palette[i * 3 + 0] = r
            @palette[i * 3 + 1] = g
            @palette[i * 3 + 2] = b
            @socket.write([3, i, r, g, b].pack('CCCCC'))
            @socket.flush
        end

        def set_predefined_palette(key)
            if key == :vga
                @palette = VGA_PALETTE.dup
                (0..255).each do |i|
                    @socket.write([3, i, @palette[i * 3 + 0], @palette[i * 3 + 1], @palette[i * 3 + 2]].pack('CCCCC'))
                end
                @socket.flush
            else
                @@palettes ||= YAML.load(File.read(File.join(File.dirname(__FILE__), 'pixelflow_canvas', 'palettes.yaml')))
                if @@palettes[key]
                    @palette = [0] * 768
                    @@palettes[key].each_with_index do |color, i|
                        @palette[i * 3 + 0] = color[1, 2].to_i(16)
                        @palette[i * 3 + 1] = color[3, 2].to_i(16)
                        @palette[i * 3 + 2] = color[5, 2].to_i(16)
                        @socket.write([3, i, @palette[i * 3 + 0], @palette[i * 3 + 1], @palette[i * 3 + 2]].pack('CCCCC'))
                    end
                    @socket.flush
                else
                    raise "Invalid predefined palette: #{key}"
                end
            end
        end

        def move_to(x, y)
            x = x.to_i
            y = y.to_i
            return if x < 0 || x >= @width || y < 0 || y >= @height
            @x = x
            @y = y
            buffer = [5].pack('C')
            buffer += [x].pack((@width <= 256) ? 'C' : 'n')
            buffer += [y].pack((@height <= 256) ? 'C' : 'n')
            @socket.write(buffer)
            @socket.flush
        end

        def set_pixel(x, y, r = nil, g = nil, b = nil)
            r ||= @r
            g ||= @g
            b ||= @b
            x = x.to_i
            y = y.to_i
            return if x < 0 || x >= @width || y < 0 || y >= @height
            unless x == @x && y == @y
                move_to(x, y)
            end
            if @mask
                return unless @mask.mask[y * @width + x]
            end
            if @color_mode == :rgb
                offset = (@y * @width + @x) * 3
                if @compose_mode == :add
                    r += @screen[offset + 0]
                    g += @screen[offset + 1]
                    b += @screen[offset + 2]
                    r = 255 if r > 255
                    g = 255 if g > 255
                    b = 255 if b > 255
                elsif @compose_mode == :subtract
                    r = @screen[offset + 0] - r
                    g = @screen[offset + 1] - g
                    b = @screen[offset + 2] - b
                    r = 0 if r < 0
                    g = 0 if g < 0
                    b = 0 if b < 0
                elsif @compose_mode == :multiply
                    r = (@screen[offset + 0] * r) / 255
                    g = (@screen[offset + 1] * g) / 255
                    b = (@screen[offset + 2] * b) / 255
                end
                @screen[offset + 0] = r
                @screen[offset + 1] = g
                @screen[offset + 2] = b
            else
                offset = @y * @width + @x
                @screen[offset] = r
            end
            if @draw_mode == :direct
                if @color_mode == :rgb
                    @socket.write([6, r, g, b].pack('CCCC'))
                else
                    @socket.write([6, r].pack('CC'))
                end
                @socket.flush()
            end
            if @advance_mode == :right
                @x += 1
                if @x >= @width
                    @x = 0
                    @y = (@y + 1) % @height
                end
            else
                @y += 1
                if @y >= @height
                    @y = 0
                    @x = (@x + 1) % @width
                end
            end
        end

        def get_pixel(x, y)
            x = x.to_i
            y = y.to_i
            return 0 if x < 0 || x >= @width || y < 0 || y >= @height
            if @color_mode == :rgb
                return @screen[(y * @width + x) * 3, 3]
            else
                return @screen[y * @width + x]
            end
        end

        def draw_rect(x0, y0, x1, y1)
            x0 = x0.to_i
            y0 = y0.to_i
            x1 = x1.to_i
            y1 = y1.to_i
            (x0..x1).each do |x|
                set_pixel(x, y0)
            end
            (x0..x1).each do |x|
                set_pixel(x, y1)
            end
            (y0+1..y1-1).each do |y|
                set_pixel(x0, y)
                set_pixel(x1, y)
            end
        end

        def fill_rect(x0, y0, x1, y1)
            x0 = x0.to_i
            y0 = y0.to_i
            x1 = x1.to_i
            y1 = y1.to_i
            (y0..y1).each do |y|
                (x0..x1).each do |x|
                    set_pixel(x, y)
                end
            end
        end

        def draw_line(x0, y0, x1, y1)
            x0 = x0.to_i
            y0 = y0.to_i
            x1 = x1.to_i
            y1 = y1.to_i
            dx = (x1 - x0).abs
            dy = (y1 - y0).abs
            sx = x0 < x1 ? 1 : -1
            sy = y0 < y1 ? 1 : -1
            err = dx - dy
            loop do
                set_pixel(x0, y0)
                break if x0 == x1 && y0 == y1
                e2 = 2 * err
                if e2 > -dy
                    err -= dy
                    x0 += sx
                end
                if e2 < dx
                    err += dx
                    y0 += sy
                end
            end
        end

        def draw_circle(x, y, r)
            x = x.to_i
            y = y.to_i
            r = r.to_i
            f = 1 - r
            ddF_x = 1
            ddF_y = -2 * r
            xx = 0
            yy = r
            set_pixel(x, y + r)
            set_pixel(x, y - r)
            set_pixel(x + r, y)
            set_pixel(x - r, y)
            while xx < yy
                if f >= 0
                    yy -= 1
                    ddF_y += 2
                    f += ddF_y
                end
                xx += 1
                ddF_x += 2
                f += ddF_x
                set_pixel(x + xx, y + yy)
                set_pixel(x - xx, y + yy)
                set_pixel(x + xx, y - yy)
                set_pixel(x - xx, y - yy)
                set_pixel(x + yy, y + xx)
                set_pixel(x - yy, y + xx)
                set_pixel(x + yy, y - xx)
                set_pixel(x - yy, y - xx)
            end
        end

        def fill_circle(x, y, r)
            x = x.to_i
            y = y.to_i
            r = r.to_i
            f = 1 - r
            ddF_x = 1
            ddF_y = -2 * r
            xx = 0
            yy = r
            (y - r..y + r).each do |i|
                set_pixel(x, i)
            end
            while xx < yy
                if f >= 0
                    yy -= 1
                    ddF_y += 2
                    f += ddF_y
                end
                xx += 1
                ddF_x += 2
                f += ddF_x
                (y - yy..y + yy).each do |i|
                    set_pixel(x + xx, i)
                    set_pixel(x - xx, i)
                end
                (y - xx..y + xx).each do |i|
                    set_pixel(x + yy, i)
                    set_pixel(x - yy, i)
                end
            end
        end

        def draw_ellipse(x, y, ra, rb)
            x = x.to_i
            y = y.to_i
            ra = ra.to_i
            rb = rb.to_i
            a2 = ra * ra
            b2 = rb * rb
            fa2 = 4 * a2
            fb2 = 4 * b2
            x0 = 0
            y0 = rb
            sigma = 2 * b2 + a2 * (1 - 2 * rb)
            while b2 * x0 <= a2 * y0
                set_pixel(x + x0, y + y0)
                set_pixel(x - x0, y + y0)
                set_pixel(x + x0, y - y0)
                set_pixel(x - x0, y - y0)
                if sigma >= 0
                    sigma += fa2 * (1 - y0)
                    y0 -= 1
                end
                sigma += b2 * ((4 * x0) + 6)
                x0 += 1
            end
            x0 = ra
            y0 = 0
            sigma = 2 * a2 + b2 * (1 - 2 * ra)
            while a2 * y0 <= b2 * x0
                set_pixel(x + x0, y + y0)
                set_pixel(x - x0, y + y0)
                set_pixel(x + x0, y - y0)
                set_pixel(x - x0, y - y0)
                if sigma >= 0
                    sigma += fb2 * (1 - x0)
                    x0 -= 1
                end
                sigma += a2 * ((4 * y0) + 6)
                y0 += 1
            end
        end

        def fill_ellipse(x, y, ra, rb)
            x = x.to_i
            y = y.to_i
            ra = ra.to_i
            rb = rb.to_i
            a2 = ra * ra
            b2 = rb * rb
            fa2 = 4 * a2
            fb2 = 4 * b2
            x0 = 0
            y0 = rb
            sigma = 2 * b2 + a2 * (1 - 2 * rb)
            while b2 * x0 <= a2 * y0
                (x - x0..x + x0).each do |i|
                    set_pixel(i, y + y0)
                    set_pixel(i, y - y0)
                end
                if sigma >= 0
                    sigma += fa2 * (1 - y0)
                    y0 -= 1
                end
                sigma += b2 * ((4 * x0) + 6)
                x0 += 1
            end
            x0 = ra
            y0 = 0
            sigma = 2 * a2 + b2 * (1 - 2 * ra)
            while a2 * y0 <= b2 * x0
                (x - x0..x + x0).each do |i|
                    set_pixel(i, y + y0)
                    set_pixel(i, y - y0)
                end
                if sigma >= 0
                    sigma += fb2 * (1 - x0)
                    x0 -= 1
                end
                sigma += a2 * ((4 * y0) + 6)
                y0 += 1
            end
        end

        def draw_arc(x, y, r, a0, a1, close_path = false)
            # x = x.to_i
            # y = y.to_i
            # r = r.to_i
            a0 = a0.to_f
            a1 = a1.to_f
            a0 = a0 * Math::PI / 180.0
            a1 = a1 * Math::PI / 180.0
            da = 1.0 / r
            a = a0
            while a < a1
                x0 = x + r * Math.cos(a)
                y0 = y + r * Math.sin(a)
                a += da
                x1 = x + r * Math.cos(a)
                y1 = y + r * Math.sin(a)
                draw_line(x0, y0, x1, y1)
            end
            if close_path
                x0 = x + r * Math.cos(a0)
                y0 = y + r * Math.sin(a0)
                draw_line(x, y, x0, y0)
                x0 = x + r * Math.cos(a1)
                y0 = y + r * Math.sin(a1)
                draw_line(x, y, x0, y0)
            end
        end

        def fill_arc(x, y, r, a0, a1)
            # x = x.to_i
            # y = y.to_i
            # r = r.to_i
            a0 = a0.to_f
            a1 = a1.to_f
            a0 = a0 * Math::PI / 180.0
            a1 = a1 * Math::PI / 180.0
            da = 1.0 / r
            a = a0
            while a < a1
                x0 = x + r * Math.cos(a)
                y0 = y + r * Math.sin(a)
                a += da
                x1 = x + r * Math.cos(a)
                y1 = y + r * Math.sin(a)
                fill_triangle(x, y, x0, y0, x1, y1)
            end
        end

        def draw_quadratic_bezier(x0, y0, x1, y1, x2, y2, steps = 100)
            steps = steps.to_i
            xp = nil
            yp = nil
            (0..steps).each do |i|
                t = i.to_f / steps
                x = (1 - t) ** 2 * x0 + 2 * (1 - t) * t * x1 + t ** 2 * x2
                y = (1 - t) ** 2 * y0 + 2 * (1 - t) * t * y1 + t ** 2 * y2
                if xp && yp
                    draw_line(xp.to_i, yp.to_i, x.to_i, y.to_i)
                end
                xp = x
                yp = y
            end
        end

        def draw_cubic_bezier(x0, y0, x1, y1, x2, y2, x3, y3, steps = 100)
            steps = steps.to_i
            xp = nil
            yp = nil
            (0..steps).each do |i|
                t = i.to_f / steps
                x = (1 - t) ** 3 * x0 + 3 * (1 - t) ** 2 * t * x1 + 3 * (1 - t) * t ** 2 * x2 + t ** 3 * x3
                y = (1 - t) ** 3 * y0 + 3 * (1 - t) ** 2 * t * y1 + 3 * (1 - t) * t ** 2 * y2 + t ** 3 * y3
                if xp && yp
                    draw_line(xp.to_i, yp.to_i, x.to_i, y.to_i)
                end
                xp = x
                yp = y
            end
        end

        def draw_triangle(x0, y0, x1, y1, x2, y2)
            draw_line(x0, y0, x1, y1)
            draw_line(x1, y1, x2, y2)
            draw_line(x2, y2, x0, y0)
        end

        def fill_triangle(x0, y0, x1, y1, x2, y2)
            x0 = x0.to_i
            y0 = y0.to_i
            x1 = x1.to_i
            y1 = y1.to_i
            x2 = x2.to_i
            y2 = y2.to_i
            if y0 > y1
                x0, x1 = x1, x0
                y0, y1 = y1, y0
            end
            if y1 > y2
                x1, x2 = x2, x1
                y1, y2 = y2, y1
            end
            if y0 > y1
                x0, x1 = x1, x0
                y0, y1 = y1, y0
            end
            total_height = y2 - y0
            (0...total_height).each do |i|
                second_half = i > y1 - y0 || y1 == y0
                segment_height = second_half ? y2 - y1 : y1 - y0
                alpha = i.to_f / total_height
                beta = (i - (second_half ? y1 - y0 : 0)).to_f / segment_height
                ax = x0 + (x2 - x0) * alpha
                ay = y0 + (y2 - y0) * alpha
                bx = second_half ? x1 + (x2 - x1) * beta : x0 + (x1 - x0) * beta
                by = second_half ? y1 + (y2 - y1) * beta : y0 + (y1 - y0) * beta
                if ax > bx
                    ax, bx = bx, ax
                    ay, by = by, ay
                end
                (ax.to_i..bx.to_i).each do |j|
                    set_pixel(j, y0 + i)
                end
            end
        end

        def flood_fill(x, y, r = nil, g = nil, b = nil)
            x = x.to_i
            y = y.to_i
            r ||= @r
            g ||= @g
            b ||= @b
            return if x < 0 || x >= @width || y < 0 || y >= @height
            sr = 0
            sg = 0
            sb = 0
            if @color_mode == :rgb
                sr = @screen[(y * @width + x) * 3 + 0]
                sg = @screen[(y * @width + x) * 3 + 1]
                sb = @screen[(y * @width + x) * 3 + 2]
            else
                sr = @screen[y * @width + x]
            end
            stack = [[x, y]]
            while stack.any?
                x, y = stack.pop
                next if x < 0 || x >= @width || y < 0 || y >= @height
                if @color_mode == :rgb
                    offset = (y * @width + x) * 3
                    if @screen[offset + 0] == sr && @screen[offset + 1] == sg && @screen[offset + 2] == sb
                        set_pixel(x, y)
                        stack.push([x - 1, y])
                        stack.push([x + 1, y])
                        stack.push([x, y - 1])
                        stack.push([x, y + 1])
                    end
                else
                    offset = y * @width + x
                    if @screen[offset] == sr
                        set_pixel(x, y)
                        stack.push([x - 1, y])
                        stack.push([x + 1, y])
                        stack.push([x, y - 1])
                        stack.push([x, y + 1])
                    end
                end
            end
        end

        # FONT RENDERING

        def self.load_font(font)
            @@cypher_fonts ||= {}
            return if @@cypher_fonts[font]
            # STDERR.puts "Loading font from #{path}..."
            font_data = {}
            File.open(File.join(File.dirname(__FILE__), 'pixelflow_canvas', 'fonts', "#{font}.bdf")) do |f|
                char = nil
                f.each_line do |line|
                    if line[0, 9] == 'STARTCHAR'
                        char = {}
                    elsif line[0, 8] == 'ENCODING'
                        char[:encoding] = line.sub('ENCODING ', '').strip.to_i
                    elsif line[0, 7] == 'ENDCHAR'
                        font_data[char[:encoding]] = char
                        char = nil
                    elsif line[0, 3] == 'BBX'
                        parts = line.split(' ')
                        char[:width] = parts[1].to_i
                        char[:height] = parts[2].to_i
                    elsif line[0, 6] == 'BITMAP'
                        char[:bitmap] = []
                    else
                        if char && char[:bitmap]
                            char[:bitmap] << line.to_i(16)
                        end
                    end
                end
            end
            @@cypher_fonts[font] = font_data
        end

        def draw_text(x, y, s, font, scale = 1)
            Canvas.load_font(font)
            dx = 0
            s.each_char do |c|
                glyph = @@cypher_fonts[font][c.ord]
                if glyph
                    w = ((((glyph[:width] - 1) >> 3) + 1) << 3) - 1
                    (0...glyph[:height]).each do |iy|
                        (0...glyph[:width]).each do |ix|
                            if (((glyph[:bitmap][iy] >> (w - ix)) & 1) == 1)
                                (0...scale).each do |oy|
                                    (0...scale).each do |ox|
                                        set_pixel(x + (ix + dx) * scale + ox, y + iy * scale + oy)
                                    end
                                end
                            end
                        end
                    end
                    dx += glyph[:width]
                end
            end
        end

        def text_width(s, font, scale = 1)
            Canvas.load_font(font)
            width = 0
            s.each_char do |c|
                glyph = @@cypher_fonts[font][c.ord]
                if glyph
                    width += glyph[:width] * scale
                end
            end
            width
        end

        # EVENT POLLING

        class Event
            def initialize(data)
                @data = data
            end

            attr_reader :data

            def on(type, &block)
                if type == :mouse_move && @data[0] == 3
                    yield(@data[1], @data[2])
                end
            end
        end

        def fetch_events(&block)
            @socket.write([9].pack('C'))
            @socket.flush
            json = ''
            loop do
                begin
                    buffer = @socket.recv_nonblock(1024)
                    json += buffer
                rescue IO::WaitReadable
                    break
                end
            end
            return if json.empty?
            json.split("\r\n").each do |line|
                line.strip!
                next if line.empty?
                JSON.parse(line).each do |event|
                    yield Event.new(event)
                end
            end
        end
    end

    class Turtle
        def initialize(canvas)
            @canvas = canvas
            @x = canvas.width / 2.0
            @y = canvas.height / 2.0
            @phi = 270.0
            @pen_down = true
        end

        attr_accessor :x, :y, :phi, :color, :pen_down

        def forward(l)
            nx = @x + Math.cos(@phi * Math::PI / 180.0) * l
            ny = @y + Math.sin(@phi * Math::PI / 180.0) * l
            @canvas.draw_line(@x, @y, nx, ny) if @pen_down
            @x = nx
            @y = ny
        end

        def set_color(r = 0, g = nil, b = nil)
            @canvas.set_color(r, g, b)
        end

        def turn_left(phi)
            @phi -= phi
        end

        def turn_right(phi)
            @phi += phi
        end
    end
end