---
title: Creating a canvas
layout: page
nav_order: 1
---

# Creating a canvas

There are two ways to work with a canvas.

## Create an instance

Specify the width, height, and color mode (either `:palette` or `:rgb`) to create a new canvas:

```ruby
require 'pixelflow_canvas'

canvas = Canvas.new(320, 180, :palette)
canvas.set_pixel(160, 90, 10)
```

## Create a canvas using a block with the constructor

This method allows you to omit the `canvas` variable on every method call:

```ruby
Canvas.new(320, 180, :palette) do
    set_pixel(160, 90, 10)
end
```

You can also use the `perform` method to run a block on an existing canvas:

```ruby
canvas = Canvas.new(320, 180, :palette)
canvas.perform do
    set_pixel(160, 90, 10)
end
```
