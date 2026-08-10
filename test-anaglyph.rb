require './lib/pixelflow_canvas.rb'

width = 256
height = 256

canvas = Pixelflow::Canvas.new(width, height, :rgb)
canvas.set_compose_mode(:add)

canvas.set_color(255, 0, 0)
canvas.draw_line(10, 10, 100, 200)

canvas.set_color(0, 255, 0)
canvas.draw_line(20, 10, 90, 200)

canvas.save_as_png('anaglyph.png')