require './lib/pixelflow_canvas.rb'

width = 128
height = 128

canvas = Pixelflow::Canvas.new(width, height, :rgb)
canvas.set_compose_mode(:add)
(-5..5).each do |i|
  canvas.set_color(255, 0, 0)
  canvas.draw_text(5 - (i - 0.5) / 2, 50 + i * 10, "Pixelflow Canvas", "6x10")
  canvas.set_color(0, 255, 255)
  canvas.draw_text(5 + i / 2, 50 + i * 10, "Pixelflow Canvas", "6x10")
end