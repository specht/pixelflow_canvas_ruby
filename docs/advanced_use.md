---
title: Advanced use
layout: page
nav_order: 3
---

# Using masks

Masks can be used to specify which parts of the image should be affected by drawing operations.

To set a mask, use the `set_mask` method:

```ruby
set_mask do
    add_color(5)
end
```

In the example above, the mask is set to all pixels that currently have a color of 5. This means that any drawing operation will only affect pixels that have a color of 5 until the mask is removed.

Remove a mask by calling the `remove_mask` method:

```ruby
remove_mask
```
# Saving the canvas

You can save the canvas to a file using the `save_as_png` method.

```ruby
save_as_png("output.png")
```

# Event polling

The Pixelflow Canvas is not just a canvas for drawing, it also has built-in event polling capabilities. You can use the `fetch_events` method to get the next event from the event queue.

