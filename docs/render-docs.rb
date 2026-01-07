#!/usr/bin/env ruby

require 'stringio'
require 'yaml'
require '../lib/pixelflow_canvas'
require 'digest'
require 'fileutils'

palettes = YAML.load(File.read('../lib/pixelflow_canvas/palettes.yaml'))

s = StringIO.open do |io|
    palettes.each do |name, palette|
        io.puts
        io.puts "#### #{name.to_s.gsub('_', ' ').capitalize}"
        io.puts
        io.puts <<~END_OF_STRING
        ```ruby
        set_predefined_palette(:#{name})
        ```
        END_OF_STRING
        io.puts
        io.puts "<div class='swatches'>"
        palette.each.with_index do |color, i|
            io.puts "<span style='background-color: #{color}'><span>#{i}</span></span>"
        end
        io.puts "</div>"
    end
    io.string
end

readme = File.read('palettes.md')
readme.sub!(/<!-- palettes start -->(.*?)<!-- palettes end -->/m, "<!-- palettes start -->\n#{s}\n<!-- palettes end -->")
File.write('palettes.md', readme)

s = StringIO.open do |io|
    Dir['../lib/pixelflow_canvas/fonts/*.bdf'].sort.each do |path|
        font = File.basename(path).split('.').first
        width = font.split('x').first.to_i
        height = font.split('x').last.to_i + 1
        scale = 8
        png_path = "images/#{font}.png"
        unless File.exist?(png_path)
            Pixelflow::Canvas.new(width * 26 * scale + 2 * scale, height * 4 * scale + 2 * scale, :palette) do
                set_draw_mode(:buffered)
                set_color(15)
                fill_rect(0, 0, width * 26 * scale + 2 * scale, height * 4 * scale + 2 * scale)
                set_color(0)
                draw_text(scale, scale, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', font, 8)
                draw_text(scale, height * 8 + scale, 'abcdefghijklmnopqrstuvwxyz', font, 8)
                draw_text(scale, height * 8 * 2 + scale, '`1234567890-=~!@#$%^&*()_+', font, 8)
                draw_text(scale, height * 8 * 3 + scale, ',./<>?;\':"[]{}|\\äöüÄÖÜß°éµ', font, 8)
                flip()
                save_as_png(png_path)
            end
        end
        io.puts
        io.puts "#### #{font}"
        io.puts
        io.puts "<img src='#{png_path}' alt='#{font}'>"
    end
    io.string
end

readme = File.read('drawing_things.md')
readme.sub!(/<!-- fonts start -->(.*?)<!-- fonts end -->/m, "<!-- fonts start -->\n#{s}\n<!-- fonts end -->")
File.write('drawing_things.md', readme)

Dir['*.md'].each do |path|
    s = File.read(path)
    i = 0
    loop do
        i0 = s.index('<!-- code begin', i)
        break unless i0
        i = i0 + 1
        i1 = s.index('code end -->', i0)
        snippet = s[i0+15..i1-1]
        snippet.strip!
        sha1 = Digest::SHA1.hexdigest(snippet)[0, 16]
        png_path = "images/code/#{sha1}.png"
        code = StringIO.open do |io|
            io.puts "require 'pixelflow_canvas'"
            io.print "canvas = "
            io.puts snippet
            io.puts "canvas.save_as_png('#{png_path}')"
            io.string
        end
        puts '-' * 20
        puts code
        puts '-' * 20
        unless File.exist?(png_path)
            FileUtils.mkpath(File.dirname(png_path))
            puts "CREATING #{png_path}"
            puts code
            IO.popen('ruby', 'r+') do |io|
                io.write(code)
                io.close_write
                io.read
            end
        end
        newline_index = s.index("\n", i1)
        s[i1+12..newline_index] = "<img class='full' src='#{png_path}'>\n"
    end
    File.open(path, 'w') { |f| f.write(s) }
end