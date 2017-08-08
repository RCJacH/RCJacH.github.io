+++
author = "RCJacH"
title =  "Tone Sweep – 原创JSFX电鼓合成器"
description = "一款主要用于设计电子音乐打击乐器的JSFX合成器。"
date = "2017-05-05"
tags = ["音乐制作", "REAPER", "JSFX", "脚本","声音设计","合成器"]
categories = ["脚本&模板"]
+++

[Tone Sweep下载地址](https://raw.githubusercontent.com/RCJacH/ReaScripts/master/JSFX/Synth/Tone%20Sweep.jsfx)

[RCJacH的ReaPack Repository包含REAPER Daw使用的Lua和JS脚本与效果器](https://github.com/RCJacH/ReaScripts/raw/master/index.xml)

<br>

# 介绍：

Tone Sweep是一款能生成一个音高变化（扫频）的单音电鼓合成器。主要用于设计电子音乐中使用的鼓，例如低鼓，军鼓，铜鼓，以及音效。

<br>

# 用法：

1. 设置起始音高（StartingNote）以及目标音高（EndingNote）。

2. 通过拖动图形的X和Y轴按需求设置扫频的曲线和时长。

3. 使用Envelope图形以及下方参数设计音量包络。

4. 输入MIDI或者用MIDI键盘输入音符，播放一下。

5. 阅读下方更具体的参数解说。

<br>

# 控制器类别：

## 通用

Ctrl+鼠标左键重置至默认数值。

## 推子

![推子](https://cloud.githubusercontent.com/assets/12930244/25745184/36c268cc-31d0-11e7-9460-e116b73764c5.png)

可以通过直接点击推子或者按住鼠标左键后左右拖动来设置一个数值。拖动时可按下Shift或Alt键微调：Shift改变0.01，Alt改变1。注意，要先松开鼠标左键，后松开修饰键，否则数值将被设置为鼠标位置对应的数值。

## 选框

![选框](https://cloud.githubusercontent.com/assets/12930244/25745181/36bbcbb6-31d0-11e7-9ac6-c6d056741c04.png)

点击改变改参数的开启状态。

## 拖拽框

![拖拽框](https://cloud.githubusercontent.com/assets/12930244/25745183/36c0b220-31d0-11e7-91c1-bedc02a0fc40.png)

点击按住鼠标左键并上下拖动鼠标来改变数值，拖动时按住Shift可微调。

## 图形

![图形](https://cloud.githubusercontent.com/assets/12930244/25745182/36bdcdf8-31d0-11e7-8e93-d04eee147f7f.png)

点击按住鼠标左键并拖动鼠标来开遍数值，拖动时按住Shift可微调。X轴和Y轴可能分别影响两个不同的参数。

<br>

# 界面参数说明：

## 概述页面

![Tone Sweep JSFX 概述页面](https://cloud.githubusercontent.com/assets/12930244/25745175/365576a4-31d0-11e7-950e-e87ee8d5319a.png)

这个是插入JSFX后显示的第一个页面，包含了此合成器的两个最主要的元素，**音高扫频**和**音量包络**。

任何图形的X轴参数决定了其长度，Y轴参数决定了曲线的坡度。**音量包络图形**则包含三个不同的部分，Attack，Hold，和Decay。每个部分有他自己的X和Y轴。音量包络图形下方有几个拖拽框可以改变曲线形状以及时长。

在整个界面最低端有一个不可操作的波形图样，作为视觉参考。

<br>

## 音高页面

![Tone Sweep JSFX 音高页面](https://cloud.githubusercontent.com/assets/12930244/25745176/36596516-31d0-11e7-90ea-109676ff29e0.png)

第二个页面是音高页面，包含了此合成器中所有与音高、频率有关的参数。

### Pitch 音高

**A4**：这个参数是音高标准，指的是A4（MIDI音高69）这个音的频率，默认为440。

**Starting Note**：扫频的起始音高。

**Ending Note**：扫频的目标音高，可以同起始音高一样，或高于起始音高。

**Fine Tune**：这两个操作将改变对应音高的音分，即百分之一个半音。

### Sweep 扫频

**Time**：这个指的是扫频，从起始音高到目标音高，总共需要花的时长（毫秒）。

**Curve & Multiplier**：这两个参数决定了扫频的曲线坡度。

**Shape**：这个参数决定了曲线的形状。

此页面右下角的*音高曲线图形*与概述页面中的相同。

<br>

## 音量包络页面

![Tone Sweep JSFX 音量包络页面](https://cloud.githubusercontent.com/assets/12930244/25745178/3686238a-31d0-11e7-8f6d-b0f78609e0a5.png)

此页面包含了所有对音量包络有影响的参数。此合成器，作为电鼓合成器，音量包络只有三个阶段，**Attack**（**起音**）、**Hold**（**停留**)、**Decay**（**衰减**），或**AHD**。

*起音*阶段指的是，当接收到MIDI音符触发信息后，包络值从0%到达100%的阶段；*停留*阶段指的是当达到100%后所持续的时间；经过停留阶段，包络值开始从100%*衰减*至0%

起音和衰减阶段的曲线控制原理与扫频曲线原理相同。

音量包络图形与概括页面的图形一样。

<br>

## 波形页面

![Tone Sweep JSFX 波形页面](https://cloud.githubusercontent.com/assets/12930244/25745179/368e1b80-31d0-11e7-97be-cd376f544d55.png)

波形页面所包含的是那些会改变输出信号音色的参数。

**Waveform**：通过此参数选择合成器的基础波形。

### Modulations 调制

此合成器有两个调制选项，**AM振幅调制**（**Amplitude Modulation**）和**FM频率调制**（**Frequency Modulation**）。*AM*通过一个波形来改变源信号的振幅，而*FM*则通过一个波形变动源信号的频率。

**Sidechain**：用音频输入通道3-4的信号作为调制信号。

**Static** (仅FM)：非开启时，频率调制是动态的，既调制频率影响与起始目标音之差是乘法关系；开启时，调制频率与源频率是个加减法的关系。

**Frequency**：调制振荡器的频率。

**Depth**：调制信号影响的深度，可以为负数。

**Env Slant**：包络倾斜度。此参数决定了上述深度参数在AHD整体长度的倾斜度：淡入或者淡出。

**Waveform**：调制信号的波形。

下方的两个倾斜度图形是无法操控的，它们只能作为倾斜度的视觉参考。

<br>

## 设置页面

![Tone Sweep JSFX 设置页面](https://cloud.githubusercontent.com/assets/12930244/25745180/36b351b6-31d0-11e7-9376-37d6c43fc163.png)

设置页面包含了此合成器的其他设置。

### Settings 设置

**Volume**：这个参数是信号的总输出音量。

**Key filter**：这个参数决定了哪个音符作为触发键。若设置为-1，所有的输入音符都会触发此合成器。

### Velocity 力度

有以下两个参数可以改变力度对输出声音的影响。

**Volume**：力度影响音量。为0时，力度不会影响音量；当设置成更高值时，小于127的力度会降低输出的音量。

**Pitch**：力度影响起始频率。不同力度影响起始频率至目标频率的一个百分比。

### Others 其他

目前有两个选项可以改变使用这款合成器地方法。

**Note off**：未开启时，合成器的音符为OneShot，即每个触发的音符将从起音阶段经过至停留阶段最后进入衰减阶段，无视NoteOff信息。开启后，触发的音符经过起音阶段后，会将停留简短变成持续阶段（sustain）保持下去，只有接收到NoteOff信息后，才会继续至衰减阶段。

**Key Track**：未开启时，任何触发音都会触发同一个音高，从起始音至目标音。开启后，实际音高会随着触发音高做出改变。触发音会变成新的目标音，而新的起始音则通过原起始音与目标音之差计算而来。