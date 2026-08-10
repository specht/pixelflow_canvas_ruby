require './lib/pixelflow_canvas.rb'

width = 128
height = 64

canvas = Pixelflow::Canvas.new(width, height, :palette)
canvas.set_draw_mode(:buffered)
phi = 0
x = width / 2
y = height / 2
loop do
  canvas.set_color(15)
  canvas.fill_rect(0, 0, width - 1, height - 1)
  canvas.set_color(3)
  s = Math.sin(phi)
  c = Math.cos(phi)
  canvas.draw_quadratic_bezier(8, s * 8 + 32, x, y, 119, c * 8 + 32)
  canvas.fill_circle(x, y, 2)
  canvas.flip
  phi += 0.1
  canvas.ensure_max_fps(30)
  canvas.fetch_events do |event|
    STDERR.puts event.data.to_json
    event.on(:mouse_move) do |_x, _y|
      x = _x
      y = _y
    end
  end
end
# canvas.draw_cubic_bezier(4, 27, 166, 0, 8, -20, 59, 27)

# 2 3 5 9 12