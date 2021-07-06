+++
author = "RCJacH"
title =  "REAPER JSFX - MIDI CC Eater CC屏蔽器"
description = "屏蔽所选的CC信息。"
date = "2016-03-16"
tags = ["音乐制作","MIDI","脚本","JSFX"]
categories = ["脚本&模板"]
+++

昨天有个朋友问道自己的MIDI键盘会随机自动发送一些CC控制器的信息，导致录音的时候很困扰。我的M-Audio Oxygen键盘用了几年也出现这个毛病了，而且每几个月会发送不同的CC信息哈哈，所以我在此分享一下之前用JS写的CC屏蔽的插件，叫CC Eater。

如图，这个插件只有一个选项：你想要屏蔽的CC。你也可以通过选择最顶项来屏蔽所有的CC。

![MIDI CC Eater只有一个选项，选择需要屏蔽的CC](https://cloud.githubusercontent.com/assets/12930244/13815402/5862686c-ebc5-11e5-9930-224b704f0a20.png)

具体使用方法就是，当你点击通道上的录音键之后，通道会出现一个IN FX的选项。如下图中橙色箭头所指位置。

![REAPER输入插件只有在Arm Recording准备录音时才会出现](https://cloud.githubusercontent.com/assets/12930244/13815401/585f2d28-ebc5-11e5-9c98-a00613ef51cb.png)

IN FX指的是Input FX（输入效果），也就是在你的信号录入电脑之前所处理的效果。他会对你录入的MIDI/音频有不可恢复的影响（Destructive），所以除了这种特殊需求以外很少去运用INFX。录音的朋友们尽量不要用这个Input FX为录音加压缩防爆音什么的…如果你录入的音频是爆音的，通常在出声卡的时候已经爆音了，所以你在DAW添加什么效果都没有用。具体请参考这篇[录音输入音量标准]({{< ref "Recording-Volume-Calibration.cn.md" >}})。

 

[点击这里通过官网Stash下载MIDI CC Eater](http://stash.reaper.fm/27033/midi_cc_eater)，然后放到[资源文件目录]({{< ref "Resource-Folder.cn.md" >}})下的Effects/MIDI文件夹内就可以在Reaper里调用了！

