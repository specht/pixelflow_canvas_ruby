# Pixelflow Canvas Ruby Driver

This is a Ruby driver for the Pixelflow Canvas API.

## Prerequisites

This driver requires the Pixelflow Canvas extension for Visual Studio Code. You can install it from the [Visual Studio Code Marketplace](https://marketplace.visualstudio.com/items?itemName=gymnasiumsteglitz.pixelflow-canvas).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pixelflow_canvas'
```

And then execute:

```
$ bundle install
```

Or install it yourself as:

```
$ gem install pixelflow_canvas
```

## Usage

Open the Pixelflow Canvas in VS Code via `Ctrl+Shift+P` or `F1` and `Show Pixelflow Canvas`.

Then you can use the following Ruby code to draw on the canvas:

```ruby
require 'pixelflow_canvas'

canvas = Pixelflow::Canvas.new(16, 16, :palette)
(0...16).each do |y|
    (0...16).each do |x|
        canvas.set_pixel(x, y, x + y * 16)
    end
end
```

