require './lib/pixelflow_canvas.rb'

width = 256
height = 256

canvas = Pixelflow::Canvas.new(width, height, :palette)
turtle = Pixelflow::Turtle.new(canvas)
turtle.set_color(13)

def draw(canvas, x0, y0, x1, y1, x2, y2, level)
    canvas.draw_triangle(x0, y0, x1, y1, x2, y2)
    mx0 = (x0 + x1) / 2
    my0 = (y0 + y1) / 2
    mx1 = (x1 + x2) / 2
    my1 = (y1 + y2) / 2
    mx2 = (x2 + x0) / 2
    my2 = (y2 + y0) / 2
    if level > 0
        draw(canvas, x0, y0, mx0, my0, mx2, my2, level - 1)
        draw(canvas, x1, y1, mx1, my1, mx0, my0, level - 1)
        draw(canvas, x2, y2, mx2, my2, mx1, my1, level - 1)
    end
end

draw(canvas, 128, 10, 10, 186, 246, 246, 5)