---
title: Getting started
layout: home
nav_order: 0
---

# Pixelflow Canvas (Ruby driver)

A virtual CRT for old school graphics programming in Visual Studio Code.

{: .info }
This is the documentation for the `pixelflow_canvas` rubygem. You can find the documentation for the Visual Studio Code extension [here](https://specht.github.io/pixelflow_canvas_vscode/).

## Creating a canvas

There are two ways to work with a canvas.

### Working with an instance

Specify the width, height, and color mode (either `:palette` or `:rgb`) to create a new canvas:

```ruby
require 'pixelflow_canvas'

canvas = Canvas.new(320, 180, :palette)
canvas.set_pixel(160, 90, 10)
```

### Pass a block to the constructor

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

## Modes of operation

The following modes of operation affect how the canvas is working and how it is displayed.

### Color modes

There are two color modes: `:palette` and `:rgb`. In palette mode, the canvas uses a fixed palette of 256 colors and each pixel is represented by an index (0...255) into this palette. In RGB mode, each pixel is represented by a 24-bit RGB value.

The default color mode is `:rgb`. It can be changed by calling `set_color_mode`.

```ruby
canvas.set_color_mode(:palette)
```

### Double buffering

There are two drawing modes: `:direct` and `:buffered`. In direct mode, every pixel gets drawn immediately. In buffered mode, the canvas is drawn to an off-screen buffer and then copied to the screen when `flip` is called. Double buffering is useful for animations to prevent flickering.

The default drawing mode is `:direct`. It can be changed by calling `set_draw_mode`.

```ruby
canvas.set_draw_mode(:buffered)
```

{: .info }
If you get a black canvas in buffered mode, make sure to call `flip` at the end of your drawing code.

### Composition modes

There are three composition modes: `:copy`, `:add`, `:subtract` and `:multiply`.

- `:copy` copies the source pixel to the destination pixel
- `:add` adds the source pixel to the destination pixel
- `:subtract` subtracts the source pixel from the destination pixel
- `:multiply` multiplies the source pixel with the destination pixel

The default composition mode is `:copy`. It can be changed by calling `set_composition_mode`.

```ruby
canvas.set_composition_mode(:add)
```

{: .info }
Composition modes other than `:copy` require the canvas to be in RGB mode.

### Interpolation modes

There are two interpolation modes: `:nearest` and `:bilinear`. This mode only affects the display of the canvas in the Visual Studio Code extension.

The default interpolation mode is `:nearest`. It can be changed by calling `set_interpolation_mode`.

```ruby
canvas.set_interpolation_mode(:bilinear)
```
[Palettes »](palettes.html){: .btn .btn-purple }

<!--
- Drawing text
  - draw_text
  - text_width
- Using masks
- Saving the canvas
- Event polling
-->