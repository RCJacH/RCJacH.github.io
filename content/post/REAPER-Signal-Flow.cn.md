+++
author = "RCJacH"
title =  "REAPER信号流"
description = "图文介绍REAPER DAW的音频、视频、以及MIDI信号流"
date = "2017-06-23"
tags = ["音乐制作", "REAPER","MIDI","录音","混音"]
categories = ["音乐制作"]
+++

什么是信号流？

在数字音频制作领域，信号流指的是信号（例如音频或MIDI）是如何经过DAW中每一层运算的。



因为我们在实际使用中常常会需要建立路由，无论是简单的信号发送、搭建模块合成器、还是建立使用Parameter Modulation的多轨模板，清晰地了解信号在DAW中的路径以及运算顺序会有非常大的帮助。

<br>

所以我画了以下这张图。

![REAPER信号流简版](https://user-images.githubusercontent.com/12930244/27482740-39ed437c-5855-11e7-9a39-1653e57a6d8d.png)

排除模拟输入(Input)以及输出(Output)，Reaper总共有四个信号处理阶段：**Take（层）**，**Item（块）**，**Track（轨）**，Master**（总线）**。每一个阶段在音频运算方面是完全一样的（单纯的加法），唯一的区别只是使用方式以而已。

<br>

以下则是一张包含包络的细节图。

![REAPER信号完整版](https://user-images.githubusercontent.com/12930244/27483019-42944a2e-5856-11e7-9559-9bed228d78ea.png)

注释：

Take Trim = 层音量衰减（主页面块儿上"边"往下拽的衰减）。

<br>

另外几点

+ 我们知道REAPER只有一种万能轨道。

+ 信号发送到另一轨的思路与块的信号输入至所包含轨性质是一样的。

+ 母轨道(Folder Track)就像微型总线一样，把所有子轨道的信号加在一块儿再处理。

+ 音频/MIDI通道是同路由上平行的信号流。

+ 音频只会相加同通道的信号。

+ 音量推子、Trim包络、音量包络三者可以同时使用，也就是说可以同时有三层音量调整的方法（平衡、段落、微调之类的）。

+ 监听FX（Monitor FX）在音频渲染时是旁通的。
