+++
title = "Cubehelix颜色表算法"
date = 2020-03-30T16:56:11+08:00
tags = ["设计","颜色","脚本"]
categories = ["设计"]
description = "一个生成持续变色调变色度的算法。"
+++


我一直对自动生成颜色表的算法情有独钟。通过规则和公式来生成一系列适合搭配的颜色能让我很有满足感。而仅靠个人喜好在一千六百七十七万七千两百一十六个不同的 RGB 颜色中挑出最适合当前工程的那么几个出来总是有点海底捞针的感觉。当然，实际操作的时候肯定不是瞎点出来的，不过这不是今天的话题。今天我是来介绍一个叫 **CUBEHELIX** **"立方螺旋"** 的色盘生成算法。

再进入主题之前，我们先回顾一下传统的配色表通常是什么样的。

当你在某些打不开的搜索引擎上搜索~~色图~~色表的时候，搜索结果通常是这样的：

[![Monochromatic Color Scheme](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/monochromatic-color-palette.jpg)](https://paletton.com)

![ColorSchemer Studio](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/colorschemer-studio.jpg)

或者像这种多色系的：

[![Coolors.co](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/coolors-co.jpg)](https://coolors.co)

[![klart.io](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/klart-io.jpg)](https://klart.io/colors)

渐变：

[![CoolHue](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/coolhue.jpg)](https://webkul.github.io/coolhue/)

[![uiGradients](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/uigradients.jpg)](https://uigradients.com/)

甚至整个配色表：
[![Lyft color scheme](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/lyft-color-map.jpg)](https://design.lyft.com/re-approaching-color-9e604ba22c88)

[![Color Wizard](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/color-wizard.jpg)](https://hypejunction.github.io/color-wizard/)

*小贴士: 文字可点击*

这类工具在平明设计或者UI设计阶段的确能够激发灵感，但人嘛，一年总有那么十几个月想要点能一键生成的工具。【严肃脸】主要是因为这些工具可以抑制我们在选择单个元素时犹豫不决，反复推敲的冲动，有效的降低了拖延病的发作机率。【伪不过话说回来，有时自动生成的算法的确更有利一点，尤其是在构造可视化数据的时候，例如音频频谱图。

别说，我之前开发一个配器相关的音乐数据库时候（目前仍然 WIP），由于是五线谱，纯黑白的极简主义有点太单调了，毕竟漫画还有彩图封面呢不是么。所以当时想要加点更生动的视觉反馈 - 把每个音符依据他们在和弦中的功能染色。我尝试了十几种颜色表，很遗憾，都很丑。倒不是色表的问题，主要是因为由于出现的音符可能很多，关系比较复杂，所以为了表明身份需要很多不同的颜色甚至不同的色调，而由于这个数据库又无法提前知道哪个颜色最终会挨着哪个颜色... 所以渲染后经常会出现一些挑战审美极限的结果。不美。

直到它出现了。

## 什么是 CUBEHELIX

由于作者很慷慨地专门为[CUBEHELIX 算法建立了一个网页](www.mrao.cam.ac.uk/~dag/CUBEHELIX/)并解释了其创作思路及该论文地址，我在此就跳过长篇大论，简单地介绍一下好了。

Cubehelix "立方螺旋" 算法会**生成给定数量的颜色列表。这个颜色表拥有线性增加的强度曲线，同时也会在色轮周围旋转产生各种颜色渐变**。

我们还是上图吧。英文有句话说一张图大概值一千字的稿费。立方螺旋颜色表长这个样子：

![Cubehelix 渐变](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/cubehelix.jpg)

这个算法还有另一个优点。生成的色表在转换为灰度或替换色调后，其强度的变化不会有影响。这点挺重要的因为红绿蓝三色本身的感知亮度是不一样的，所以经常在更改基础色之后，需要重新修一遍整体平衡。所以这个算法允许不破坏亮度平衡的情况下替换起始颜色，在应用上很省心。

![Cubehelix 渐变加亮度渐变](https://github.com/RCJacH/BlogImages/raw/master/design/color/cubehelix/cubehelix-luminance.jpg)


## 伸手党通道

您可以通过以下渠道~~购买~~ 咳咳 *免费获取* cubehelix 色表。如果只需要生成结果，而不需要引用算法的话，以下几个在线的生成器就足够了。

[原官方在线效果预览](http://www.mrao.cam.ac.uk/~dag/CUBEHELIX/cubetry.html). 这里有五个参数，点击页面中间的 Refresh Plots 按钮在右侧预览颜色，通过下方四个按钮能在新页面中获取浮点、8位定点、或十六进制格式的颜色列表。

[另一个有七个参数的在线预览](http://davidjohnstone.net/pages/cubehelix-gradient-picker)，这款还能显示更顺滑的渐变以及亮度渐变。这款另一个亮点是结果色表所有的颜色在十六进制编号旁边还会有个颜色预览，便于挑选。

如果你想要脚本版，我之前贴的官贴里面有个列表。

以下几款是我觉得值得点名的，因为这些库还挺常见的。

[Cubehelix in Chroma.js](https://gka.github.io/chroma.js/#cubehelix)

[Cubehelix in MATLAB](https://www.mathworks.com/matlabcentral/fileexchange/43700-cubehelix-colormap-generator-beautiful-and-versatile)

[Cubehelix in Matplotlib，在页面最底左右](https://matplotlib.org/gallery/color/colormap_reference.html?highlight=cubehelix)

Github上有很多python脚本也加了"立方螺旋"算法。我尝试过一些，但由于三个原因被劝退：1，他们主要是用于做数据图的，所以相关函数返回的东西都不是马上能当成颜色列表用的；2，为了一个简单的颜色生成器安装整个巨大的matplotlib库有点不值；3，部分库都没有用numpy优化性能，都是通过循环计算的。所以我花了点时间写了个[能生成颜色列表的cubehelix算法模块](https://github.com/RCJacH/color_systems.git). 并多加了一点可自定义的参数。

## 敝人的脚本

作为一个音乐制作人（希望我现在还算一个音乐制作人），我一直在用[Python](https://www.python.org/)来写各种日常自动化的脚本，例如：

```python
import numpy as np
print("Hello World!")
```

Jokes aside. 我写了一个生成cubehelix色表的脚本。其目的是生成一个颜色列表，每个颜色以浮点(0.5, 0.5, 0.5)、8位定点(128, 128, 128)、或十六进制字符串#808080表示。

我尽力在不改变原算法的基础上添加设置。当前可用的输入参数：

**Shape**: 指生成颜色的数量。

**Hue**: 选择一个色调作为参考点。0为红色；1为绿色；2为蓝色；3则再次回到红色。此参数接收任何实数。

**Rotations**: 螺旋循环的次数。例，1则代表列表从起始颜色，例如红色，过渡到绿色、蓝色后再次以红色结束。0则列表为单色系。负数则反转螺旋旋转的方向。红绿蓝变成红蓝绿。此参数还可以接受列表输入，让Hue参数不作为起始色，而作为列表中间的某个颜色。例如Hue为1，Rotations为(-0.5, 0.7)则代表实际起始颜色为0.5 (1 - 0.5) 实际rotation为1.2 (0.5 + 0.7)。

**Saturation**: 颜色的饱和度，鲜艳度。0为灰色，1为纯色。此参数也可接收两个数的元组，来定义列表的起始饱和度与结尾饱和度产生渐变。

**Lightness**: 颜色的亮度。0为黑色，1为白色。这个参数也可以接收两个数的元组，来达到原算法本意的亮度渐变。

**Gamma**: 强调较低强度或较高强度。就是个调整亮度的指数曲线。


代码在我的GitHub上@ [RCJACH - Color Systems](https://github.com/RCJacH/color_systems.git)。目前只有这个算法，之后会不定期更新。等有了更详细的文档后，我再更新这篇文章。

以上总结了我对cubehelix算法的介绍，~~明年见~~。咕
