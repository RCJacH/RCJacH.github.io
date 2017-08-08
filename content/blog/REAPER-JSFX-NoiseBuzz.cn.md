+++
author = "RCJacH"
date = "2017-01-23"
tags = ["音乐制作","REAPER","JSFX","脚本","混音","声音设计"]
title = "Reaper JSFX: NoiseBuzz噪音生成器"
categories = ["脚本&模板"]
description = "一个会在输入音频信号超过阈值后触发动态噪音信号的JSFX脚本。"
+++

我们在混音或者声音设计的时候，经常需要在现有的军鼓上面叠一层噪音，这样能让军鼓听起来更满一点。为此，我们可能需要插入一个噪音生成器、一个门限再加上各种滤波器。我觉得调制起来很麻烦所以就把这三个放在了一起，做成了JS插件。这个插件会在输入音频信号超过Threshold阈值后触发动态噪音信号（噪音音量与输入音量有直接关系），并可以通过选项来调制这个噪音的动态包络以及频段限制。



这个插件可以用于军鼓轨道（通常是军鼓bottom mic），或者放在Overhead、Room、甚至混响轨来添加一些房间的沙沙声。甚至可以叠在HiHat轨以及Supersaw合成器轨。随意玩。



### 下载地址：

[NoiseBuzz官网下载地址](http://stash.reaper.fm/v/29597/SnareBuzz.jsfx)

[RCJacH的ReaPack Repository包含REAPER Daw使用的Lua和JS脚本与效果器](https://github.com/RCJacH/ReaScripts/raw/master/index.xml)