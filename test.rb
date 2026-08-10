require './lib/pixelflow_canvas.rb'

def depth(x, y)
    r = (x - 128) ** 2 + (y - 128) ** 2
    return 10 if r < 5000
    r * 0.001
end

width = 256
height = 256

canvas = Pixelflow::Canvas.new(width, height, :palette)
(0...64).each { |i| canvas.set_palette(i, i, i, i) }
(0...height).each do |y|
    (0...48).each do |x|
        canvas.set_pixel(x, y, rand(64))
    end
end
(0...height).each do |y|
    sx = 0
    dx = 48
    while dx < width
        c = canvas.get_pixel(sx, y)
        canvas.set_pixel(dx, y, c)
        dx += 1
        sx = dx - 48 + depth(dx - 24, y)
    end
end

# (0...height).each do |y|
#     (0...width).each do |x|
#         d = depth(x, y)
#         canvas.set_pixel(x, y, d)
#     end
# end

