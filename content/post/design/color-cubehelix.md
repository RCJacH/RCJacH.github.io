+++
title = "Cubehelix Color System"
date = 2020-03-28T14:42:02+08:00
tags = ["Design", "Color", "Script"]
categories = ["Design"]
description = "A system of color schemes with continuous increase in perceived intensity and change in hue."
+++

I've always been fascinated with generating color schemes with algorithms - using set of rules to calculate the most effective combination of colors - rather than manually selecting a handful based on personal preferences, which I have tried once or twice with no satisfying result. We'll save the discussion of that for later. Today, I would like to share with you an algorithm called **CUBEHELIX**.

Before we start, let's take a look at the traditional color schemes.

Normally when you search for "color scheme", you will end up with something like these:

[![Monochromatic Color Scheme](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/monochromatic-color-palette.jpg)](https://paletton.com)

![ColorSchemer Studio](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/colorschemer-studio.jpg)

Or polychromatic ones:

[![Coolors.co](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/coolors-co.jpg)](https://coolors.co)

[![klart.io](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/klart-io.jpg)](https://klart.io/colors)

Gradients:

[![CoolHue](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/coolhue.jpg)](https://webkul.github.io/coolhue/)

[![uiGradients](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/uigradients.jpg)](https://uigradients.com/)

Or even a full table:
[![Lyft color scheme](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/lyft-color-map.jpg)](https://design.lyft.com/re-approaching-color-9e604ba22c88)

[![Color Wizard](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/color-wizard.jpg)](https://hypejunction.github.io/color-wizard/)

*Hint: Texts are links.*

Great tools for inspiration they may be for creating interfaces or designs, and I do use them for that purpose, but sometimes you may want something that just gives you good results hands down. Something to suppress your impulse to ponder upon selection of individual elements, so you won't end up procrastinating over hesitation. Especially with data visualizations, generating the spectrum graph of an audio clip for example.

In fact, I was working on a musical database project for orchestration, which is still work in progress, and I wished to incorporate a more vibrant visual feedback - to color notes by their musical function on the staff. I tried a dozen color schemes and, unfortunately, they all look pretty ugly for this intension. The reason is that since there might be a lot of notes on the page, we might need a lot of colors or hues to distinguish them, and no one knows in advance what colors will be next to each other. The result is unpredictive, and thus often bizarre.

Until I came across cubehelix algorithm.

## WHAT IS CUBEHELIX

I'm going to keep this brief, since the specifications and the paper can be found on the author's website on [CUBEHELIX](www.mrao.cam.ac.uk/~dag/CUBEHELIX/).

Cubehelix **generates a set of colors (of user defined length) with increasing perceived intensity, while deviating away from grayscale, traversing through the color spaces in a spiral fashion**.

Well, they say that an image is worth a thousand ~~bucks~~ words. The result looks something like this:

![Cubehelix Gradient](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/cubehelix.jpg)

What's better is that the increase of lightness of the generated result stays identical when the colors are converted to grayscale, or when shifting hues. And this is important because red, green, and blue do not have the same perceived lightness, so often when you modify the base color, you kind of have to redo all the balances. So it's very handy to be able to change the starting color without worrying about the unbalance lightness between different colors.

![Cubehelix Gradient with luminance](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/cubehelix-luminance.jpg)


## WHERE TO GET CUBEHELIX

You can ~~buy~~ get your own cubehelix palettes *FOR FREE* from a lot of places. There are some online generators that you can use if you just want a list of colors without the actual algorithm.

[Here is the official web demo of cubehelix algorithm](http://www.mrao.cam.ac.uk/~dag/CUBEHELIX/cubetry.html). You have five parameters to customize, preview by clicking the refresh plots button in the middle, and get the list of floats, int8, or hex with buttons at the button.

[And then here's another implementation of cubehelix with seven parameters](http://davidjohnstone.net/pages/cubehelix-gradient-picker), it also has a smooth gradient and luminance gradient view of the result. Another plus is that all blocks in the swatch are returned with a preview of the color next to their hex string, which is handy.

If you want a script version, there's a list in the official article that I linked above.

There are few implementations that I think worth mention, since it's available in some common modules.

[Cubehelix in Chroma.js](https://gka.github.io/chroma.js/#cubehelix)

[Cubehelix in MATLAB](https://www.mathworks.com/matlabcentral/fileexchange/43700-cubehelix-colormap-generator-beautiful-and-versatile)

[Cubehelix in Matplotlib near the bottom of the page](https://matplotlib.org/gallery/color/colormap_reference.html?highlight=cubehelix)

And some other python modules, WHICH I TRIED BUT their implementations are not for general usage (mostly for plotting colored graphs), and installing the huge matplotlib for a simple color generator isn't worth the trouble, AND many of them are not using numpy to optimize performance. So I invested some time with my Py-Fu and wrote [a module to generate a list of colors with cubehelix algorithm](https://github.com/RCJacH/color_systems.git). With more customization options.

## MY TAKE ON CUBEHELIX

As a music producer (and I hope I currently still count as one), I've been using [Python programming language](https://www.python.org/) to do many wonderful things, for example:

```python
import numpy as np
print("Hello World!")
```

Jokes aside. I wrote a script for generating cubehelix pattern. The purpose is to generate list of color values, either in floats: (0.5, 0.5, 0.5); RGB int8: (128, 128, 128); or Hex: #808080.

I tried to allow maximum customization while still staying true to the original algorithm. Here's a list of input allowed currently:

**Shape**: Number of colors to return, the size of the list.

**Hue**: Select a hue as point of reference. 0 is Red, 1 is Green, 2 is blue, 3 is red repeated. You can use any real numbers actually.

**Rotations**: The number of cycles of the spiral. So 1 means the list starts with initial color, let's say red, then goes through green and blue, and finally arrives at red again at the end of the list. 0 means monochrome, and negative number reverse the direction of the spiral rotation. You can also enter a tuple of two colors, to set the Hue parameter not at the beginning, but somewhere in the middle. So a Hue of 1 with Rotations (-0.5, 0.7) will convert to Hue of 0.5 (1 - 0.5) and rotation of 1.2 (0.5 + 0.7).

**Saturation**: The vibrancy of the colors, 0 being gray and 1 being pure color. You can input a tuple of two numbers as well, so the list starts with one saturation value and gradually shifts to another.

**Lightness**: The lightness of the colors, 0 being black and 1 being white. Again you can input a tuple of two numbers so the lightness increases or decreases as intended in the original algorithm.

**Gamma**: Emphasis of either lower intensity or higher intensity. It's just an exponential curve to adjust lightness.


The code is up on GitHub @ [RCJACH - Color Systems](https://github.com/RCJacH/color_systems.git), still in its infancy stage, with nothing else on there, but it's growing. I'll update this post when an elaborated documentation is provided.

So that concludes my introduction to the cubehelix color scheme algorithm, ~~see you next year~~.