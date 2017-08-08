+++
author = "RCJacH"
title =  "模拟信号与电子信号的音量关系：-20 dBFS = 0 VU"
description = "这篇文章会用最短的方式解释一下模拟信号与电子信号的音量关系。"
date = "2016-04-01"
tags = ["音乐制作","录音","混音"]
categories = ["音乐制作"]
+++

这篇文章会用最短的方式解释一下模拟信号与电子信号的音量关系。

![图中以削波失真为标准，0VU等于0dBu等于-20dBFS](http://dt7v1i9vyp3mf.cloudfront.net/styles/news_large/s3/imagelibrary/Q/QA_1-0910.jpg?PGJj6f__eDitIclAF3EJ4OAhCFYqp4u4=&itok=wjRBeb4K)



图中有以下几点需要注意：

1. 电子信号会在0 dBFS的状态下遭遇电子削波，而模拟信号会在+24 dBu（也就是+20VU）的状态下遭遇削波。

2. 模拟设备在0VU以上会有逐渐增强的失真。

3. 因为大部分模拟设备不会显示20dB的动态余量，而电子设备会，所以我们在用DAW的时候需要自行留出20dB的动态余量。也就是说让每一轨、每一个插件的平均输出音量保持在-20dBFS左右，这样能保证我们用电子调音台时能与模拟调音台预留同样的动态余量。

4. 在此基础上，我们可以使用各种防模拟失真的插件来模仿模拟设备的声音，例如ToneBooster的Ferox/Reelbus、Klanghelm的IVGI、112dB的Redline PreAmp、Slate Digital的Virtual Tape Machines等等。