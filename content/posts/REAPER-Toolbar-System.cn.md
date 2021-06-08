+++
author = "RCJacH"
title =  "REAPER工具栏系统"
description = "如何更有效地使用REAPER自定义工具栏。"
date = "2016-09-22"
tags = ["音乐制作","REAPER","工作效率"]
categories = ["音乐制作"]
+++

我最近发现了一个很有意思并且非常有效的使用Reaper自定义工具栏的方法。

<br> 

在其他DAW里，工具栏通常是固定不变的，我们最多只能移动或者隐藏它们。

但是在Reaper里，因为我们很幸运地拥有不少可自定义的工具栏，并且能在工具栏内添加任何操作，可能过不了多久我们的屏幕就变成这样了：

![这个REAPER主题使用的工具栏稍微有些多...](http://stash.reaper.fm/28381/Main%20Toolbars%20%28All%29%201.png)

可能有些人会觉得这样排列工具栏在做大项目里是必要的，不过要在这么多图标里找到需要的操作还是要花一些时间的。

我们不如在单块面板上使用多个工具栏，然后把他们都连成一整个工具栏系统！

<br>

我现在的界面是这样的：

![动图演示如何有效地把多个工具栏连在一起](https://cloud.githubusercontent.com/assets/12930244/18745748/12c15ab8-80f6-11e6-829c-d64e81bdedc2.gif)


<br>

作为参考，以下是我对工具栏系统的组成思路。

我现在在主界面以及钢琴卷界面设置了两个层次的工具栏。

最上层的工具栏所包含的操作拥有两个目的。一是触发工程范围的事件，比如说重设MIDI设备、打开各种窗口（sws自动配色 或 heda的Note Reader）。二是作为状态栏，显示一些用快捷键触发的开关性的动作，如节拍器、预卷、吸附网格、包络跟随块等。

![主工具栏包含了工程范围的操作，例如更改格子尺寸以及打开各种窗口](https://cloud.githubusercontent.com/assets/12930244/18745750/12c407d6-80f6-11e6-8191-d063e0efb872.png)

旁边的工具栏包含日常常用的操作，分为五类：

### 音轨

![此工具栏包含一些音轨范围的操作，以及至其他工具栏的跳转](https://cloud.githubusercontent.com/assets/12930244/18745755/12e9c8b8-80f6-11e6-96ea-986fba577edb.png)

### 块

![此工具栏包含块的相关操作的](https://cloud.githubusercontent.com/assets/12930244/18745747/12b5e552-80f6-11e6-8dd7-9e2138e2d279.png)

### 音频

![此工具栏包含音频的相关操作](https://cloud.githubusercontent.com/assets/12930244/18745742/1298a82a-80f6-11e6-92c2-1e823ed48132.png)

### 包络

![此工具栏包含包络的相关操作](https://cloud.githubusercontent.com/assets/12930244/18745744/129ee776-80f6-11e6-8d5f-5c100669f38b.png)

### 插件

![此工具栏包含轨道插件与输入插件的相关操作](https://cloud.githubusercontent.com/assets/12930244/18745744/129ee776-80f6-11e6-8d5f-5c100669f38b.png)

<br> 

用来切换的命令是这个：

![Toolbars: switch to toolbar n](https://cloud.githubusercontent.com/assets/12930244/18746111/237f1cda-80f8-11e6-8e7e-9dac60476a75.png)

同样功能的包含工具栏2至工具栏16，以及相关的MIDI工具栏。

这样，我们可以在母工具栏里设置一系列切换到子工具栏的操作，并在所有的子工具栏里加上一个回到母工具栏的操作。


我的钢琴卷工具栏也是用同样的方法设置的，只不过状态栏和操作栏全部放到了同一个横向面板中。


### 状态

![MIDI编辑器的主工具栏](https://cloud.githubusercontent.com/assets/12930244/18745751/12c85c32-80f6-11e6-8844-b77809acbb7c.png)

### 选择

![此工具栏包含选择音符与CC的相关操作](https://cloud.githubusercontent.com/assets/12930244/18745753/12dd0498-80f6-11e6-9aa0-50e421d8e5ba.png)

### 音符

![此工具栏包含修改音符的相关操作](https://cloud.githubusercontent.com/assets/12930244/18745752/12d190e0-80f6-11e6-9e3d-7cfd7c1a2e72.png)

## CC

![此工具栏包含修改CC的相关操作](https://cloud.githubusercontent.com/assets/12930244/18745743/129ba0e8-80f6-11e6-8341-1ee3ca40b3a9.png)

__呵呵，我讨厌CC__


## 和弦 
（为了迅速输入和弦并且修改声部排列）

![此工具栏包含了一些能快速输入原位和弦的自定义操作](https://cloud.githubusercontent.com/assets/12930244/18745746/12acc922-80f6-11e6-806d-f3717454390d.png)

 

当然，以上的截图并非是这个系统的最终状态。我会慢慢更新并完善它：添加一些常用的操作，并删除一些不常用的。不过，这个系统理念能够更有效的利用、整理、分类Reaper的工具栏，节省我们屏幕中宝贵的显示空间。