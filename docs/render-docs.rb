#!/usr/bin/env ruby

require 'stringio'
require 'yaml'
require '../lib/pixelflow_canvas'

palettes = YAML.load(File.read('../lib/pixelflow_canvas/palettes.yaml'))

s = StringIO.open do |io|
    palettes.each do |name, palette|
        io.puts
        io.puts "#### #{name}"
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
