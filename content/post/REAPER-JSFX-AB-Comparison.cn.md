+++
author = "RCJacH"
date = "2017-01-20"
tags = ["音乐制作","REAPER","JSFX","脚本","混音"]
title = "REAPER JSFX - AB Comparison 8路信号对比脚本"
categories = ["脚本&模板"]
description = "用来监听和对比不同插件、轨道信号的多模式脚本。"
+++

昨天做了个JSFX小脚本：[AB Comparison](http://forum.cockos.com/showthread.php?t=186636)。目的是更方便的监听和对比不同信号（比如说不同插件、不同轨道）。

这个脚本可以根据所设置的节拍或者微秒长度，自动切换到不同的双声道通道。同时还包含一个盲听模式。



### 使用方法：

1. 在任意音轨上放置 AB Comparison 这个JS脚本。

2. 将所需对比的乐器、插件、音轨设置成不同的双声道输出，例：插件1 = 1-2，插件2 = 3-4，插件3 = 5-6...一共能接收8个双声道输入。

3. 将 **# of Input** 设置成需要对比的双声道个数。

4. 将 **Switch Beat length** 设置为自动切换通道的拍数（每n拍切换一次）。或者，使用 **Millisecond Mode** 并将其设置为自动切换的毫秒数。

5. 选择切换模式：

+ **Manual** = 手动模式，点击0-9任意触发按钮（或对应小键盘数字）切换到对应双声道通道。

+ **Sequential** = 循序模式，输出通道将按照所设置的间隔自动切换到下一个双声道。

+ **Random** = 随机模式，输出通道将按照所设置的间隔自动切换到一个不同的随机双声道。

+ **Guessing** = 盲听模式，随机切换到一个双声道，并隐藏显示正播放的通道。点击0-9任意触发按钮显示正在播放的通道。



使用 **Answer Displaying Time** 来调制盲听模式中，显示答案至 返回到 “Guess”的时间。



**Output Channel Display** 显示正在播放的通道。循序模式和随机模式内，点击0-9任意触发按钮返回至手动模式，并切换到该通道。



### 下载地址：

[AB Comparison官网下载地址](http://forum.cockos.com/showthread.php?t=186636)

[RCJacH的ReaPack Repository包含REAPER Daw使用的Lua和JS脚本与效果器](https://github.com/RCJacH/ReaScripts/raw/master/index.xml)



非REAPER用户可以用[ReaPlugs](http://reaper.fm/reaplugs/)的ReaJs加载此脚本。Win用户专享。