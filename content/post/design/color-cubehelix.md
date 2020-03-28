+++
title = "Cubehelix Color System"
date = 2020-03-28T14:42:02+08:00
tags = ["Design", "Color", "Script"]
categories = ["Design"]
description = "A system of color schemes with continuous increase in perceived intensity and change in hue."
+++

I've always been fascinated with generating color schemes with algorithms - using set of rules to calculate the most effective combination of colors - rather than manually selecting a handful based on preferences, which I have tried once or twice without satisfying result. We'll save the discussion of the advantages of algorithmically generated color schemes over hand picked ones for later. For today, I would like to share with you an algorithm called cubehelix.

Normally when you search for "color scheme", you will end up with something like these:

![Monochromatic Color Scheme](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/monochromatic-color-palette.jpg)

![ColorSchemer Studio](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/colorschemer-studio.jpg)

Or polychromatic ones:

![Colors.co](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/colors-co.jpg)

![klart.io](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/klart-io.jpg)

Gradients:

![CoolHue](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/coolhue.jpg)
![uiGradients](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/uigradients.jpg)

Or even these tables of colors:
[![Lyft color scheme](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/lyft-color-map.jpg)](https://design.lyft.com/re-approaching-color-9e604ba22c88)

[![Color Wizard](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/color-wizard.jpg)](https://hypejunction.github.io/color-wizard/)

Great tools they may be for creating interfaces or designs, but sometimes you just want something that gives you a list of colors to apply to display something (like audio spectrum) without manual selection.

In fact, I was working on a musical database project for orchestration, which is still work in progress, and I wished to incorporate a more vibrant visual feedback so that each note is colored by their musical function. I tried a dozen color schemes and they all look pretty ugly. The reason is that because since there might be a lot of notes, we might need a lot of colors or hues, and it is unknown which colors will be adjacent to each other, so the result is very unpredictive, and thus often very bizarre.

Until I came across cubehelix algorithm.

## WHAT IS CUBEHELIX

I'm going to keep this brief, since the specifications and the paper can be found on the author's website on [CUBEHELIX](www.mrao.cam.ac.uk/~dag/CUBEHELIX/).

Cubehelix pretty much generates a set of colors (of user defined length) with increasing lightness and saturation, while deviating away from grayscale, traversing through the color spaces in a spiral fashion. Well, an image might worth a thousand words. The result looks something like this:

![Cubehelix Gradient](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/cubehelix.jpg)

What's better is that the increase of lightness of the generated result stays identical when the colors are converted to grayscale, or shifting the starting position of the hue. And this is important because red, green, and blue do not have the same perceived lightness, so often when you change up the base color, you kind of have to redo all the balances. So it's very handy for cubehelix to be able to change the starting color without worrying about the unbalance lightness between different colors.

![Cubehelix Gradient with luminance](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/cubehelix-luminance.jpg)


## WHERE TO GET CUBEHELIX

You can ~~buy~~ get your own cubehelix palettes from a lot of places. There are some online generators that you can use if you just want the final result without the actual algorithm.

[Here is the official web demo of cubehelix algorithm](http://www.mrao.cam.ac.uk/~dag/CUBEHELIX/cubetry.html). You have five parameters to customize the result, preview by clicking the refresh plots button in the middle, and get the floats or hex with buttons at the button.

[And then here's another implementation of cubehelix with seven parameters](http://davidjohnstone.net/pages/cubehelix-gradient-picker), it also has a smooth gradient and luminance gradient view of the result. Another plus is that all blocks in the swatch are returned with a preview of the color, which is handy.

If you want a script version, there's a list in the official article that I linked above.

There are few implementations that I think worth mention, since it's available in some common modules.

[Cubehelix in Chroma.js](https://gka.github.io/chroma.js/#cubehelix)

[Cubehelix in MATLAB](https://www.mathworks.com/matlabcentral/fileexchange/43700-cubehelix-colormap-generator-beautiful-and-versatile)

[Cubehelix in Matplotlib near the bottom of the page](https://matplotlib.org/gallery/color/colormap_reference.html?highlight=cubehelix)

And some other python modules, WHICH I TRIED BUT their implementations are not for general usage (mostly for plotting colored graphs), and installing the huge matplotlib for a simple color generator isn't worth the trouble, and many of them are not using numpy to optimize performance. So I invested some time to up my Py-Fu and wrote a module to generate a list of colors with cubehelix algorithm. And more customization.

## MY TAKE ON CUBEHELIX

As a music producer, and I guess I currently still count as one, I've been using [Python programming language](https://www.python.org/) to do many wonderful things.

```python
import numpy as np
print("Hello World!")
```

Jokes aside. I wrote a script for generating cubehelix pattern. The purpose is to generate list of color values, either in floats: (0.5, 0.5, 0.5); RGB int8: (128, 128, 128); or Hex: #808080.

I tried to allow maximum customization while still staying true to the original algorithm. Here's a list of input allowed currently:

**Shape**: Number of colors to return, the size of the list.

**Hue**: Select a hue as point of reference. 0 is Red, 1 is Green, 2 is blue, 3 is red repeated. You can use any real numbers actually.

**Rotations**: The number of cycles of the spiral. So 1 means the list starts with initial color, let's say red, then goes through green and blue, and finally arrive at red again at the end of the list. 0 means monochrome, and negative number reverse the color order. You can also enter a tuple of two colors, to set the Hue parameter not at the beginning, but somewhere in the middle. So a Hue of 1 with Rotations (-0.5, 0.7) converts to Hue of 0.5 (1 - 0.5) and rotation of 1.2 (0.5 + 0.7).

**Saturation**: The vibrancy of the colors, 0 being grayscale and 1 being pure color. You can input a tuple of two numbers as well, so the list starts with one saturation and gradually change to another.

**Lightness**: The lightness of the colors, 0 being black and 1 being white. Again you can input a tuple of two numbers so the lightness increases as intended in the original algorithm.

**Gamma**: Emphasis of either lower intensity or higher intensity. I guess it's some sort of a curve, since it's just an exponential number to adjust lightness.


The code is up on github @ [RCJACH - Color Systems](https://github.com/RCJacH/color_systems.git), still in its infancy stage, with nothing else on there, but it's growing.