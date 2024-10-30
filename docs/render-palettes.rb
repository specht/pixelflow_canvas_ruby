#!/usr/bin/env ruby

require 'stringio'
require 'yaml'

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

