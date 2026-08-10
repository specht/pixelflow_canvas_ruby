require './lib/pixelflow_canvas.rb'

WIDTH      = 320
HEIGHT     = 180
TARGET_FPS = 60
SECONDS    = 10

canvas = Pixelflow::Canvas.new(WIDTH, HEIGHT, :palette)

canvas.set_draw_mode(:buffered)
canvas.set_predefined_palette(:vga)

clock = Process::CLOCK_MONOTONIC

frames = 0
pixels = 0

render_time = 0.0
flip_time   = 0.0

started = Process.clock_gettime(clock)
deadline = started + SECONDS

while Process.clock_gettime(clock) < deadline
  t0 = Process.clock_gettime(clock)

  # Deliberately rewrite every single pixel.
  #
  # This isn't meant to be pretty; it produces a moving pattern
  # and stresses set_pixel() much like a software effect such as fire.
  phase = frames * 3

  HEIGHT.times do |y|
    WIDTH.times do |x|
      color = (
        (x + phase) ^
        (y * 2 + phase)
      ) & 255

      canvas.set_pixel(x, y, color)
    end
  end

  t1 = Process.clock_gettime(clock)

  canvas.flip

  t2 = Process.clock_gettime(clock)

  frames += 1
  pixels += WIDTH * HEIGHT

  render_time += t1 - t0
  flip_time   += t2 - t1

  canvas.ensure_max_fps(TARGET_FPS)
end

finished = Process.clock_gettime(clock)
elapsed = finished - started

puts
puts "PixelFlow performance test"
puts "--------------------------"
puts "Resolution:       #{WIDTH}x#{HEIGHT}"
puts "Pixels/frame:     #{WIDTH * HEIGHT}"
puts "Frames:           #{frames}"
puts "Elapsed:          %.2f s" % elapsed
puts "Actual FPS:       %.1f" % (frames / elapsed)
puts "Pixel throughput: %.2f MPixels/s" % (pixels / elapsed / 1_000_000.0)
puts
puts "Average calculation:"
puts "  %.2f ms/frame" % (render_time / frames * 1000.0)
puts
puts "Average flip:"
puts "  %.2f ms/frame" % (flip_time / frames * 1000.0)
puts
puts "Maximum theoretical FPS from Ruby drawing:"
puts "  %.1f" % (frames / render_time)