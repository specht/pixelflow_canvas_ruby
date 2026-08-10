require './lib/pixelflow_canvas.rb'

width = 256
height = 256

canvas = Pixelflow::Canvas.new(width, height, :palette)
turtle = Pixelflow::Turtle.new(canvas)
turtle.set_color(13)

turtle.forward(10)
turtle.turn_right(90)
turtle.forward(10)
turtle.turn_right(90)
turtle.forward(10)