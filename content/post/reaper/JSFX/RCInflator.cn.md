---
title: "RCInflator：破解百万级音频效果器算法，打破资本主义技术壁垒（大雾"
date: 2022-01-08T16:29:02+08:00
tags: ["音乐制作","REAPER","JSFX","脚本","混音"]
categories: ["脚本&模板"]
description: "tl;dr 暂无多段的免费Inflator，100%抵消，请使用ReaPack官方源下载该JSFX脚本。"
---

欢迎来到我们插件发布会的直播间，
我是本次直播的主持人，
也是本司的CEO，CTO，COO，CFO...（以下省略100个职称）
RCJacH。
在开始之前有我邀请大家阅读以下三个注意事项：

1. 请不要询问为什么我们选择以文字形式直播。
大家都是音乐人，
都有非常高端的脑放。
调制旁通的插件都能听出变化，
文字转语音会有什么困难吗。

2. 文中有一些【鼓掌】的标签，
是为了触发脑放中的鼓掌采样，
这样能显得有很多人关注这种冷门话题。

3. 今天狗头不够用，
请大家自行脑补。

好了，
今天我们将要发布一款革命性的音频插件，
不过在此之间我先给大家科普一下行业现状。

音频插件行业一直被国外的资本主义统治。
而这些“恶毒的”资本家为了“剥削”我们这些用爱发电的音乐人，
用尽花言巧语引诱我们消费、
“骗取”我们的财产。
由于音频插件是个黑盒，
具体算法除了作者谁也说不清，
好不好使全靠“吹”，
这导致一些“聪明的”资本家发现只要找外包做个生锈破皮的硬件3D建模、
写个不知所云的宣传文案，
文中使用一些平时不会出现在同一个句子的抽象词，
例如“warmth（温暖）”、“glue（粘合）”、“life（生命）”、“power（力量）”、“tube（电子管）”等，
再贴上几张硬件设备的照片让买家产生联想，
就可以平躺收税了。

更可恶的是，
部分资本家并不满足于此，
而是会想尽办法榨干用户的剩余价值。
修几个Bug收一次钱，
整理一下代码库收一次钱，
重画个GUI又来收一次钱。
作为现实主义的加班人，
我们要全力抵制这种行为，
时刻提醒自己不可被华丽的外表蒙蔽双眼，
妥善对待口袋里的一块二毛三分钱。

有句古话说得好，
自己动手~~成单身狗~~丰衣足食。
经过~~十分钟~~长时间的艰苦奋斗，
我终于自主研发出了一款新的音频插件。

【鼓掌】

这款插件名叫RCInflator。
RC就是我，
因为是我做出来的，
所以肯定要写上我的名字，
不然写谷歌么？
Inflator则是插件的名字，
来源于inflate一词，
意思是通货膨胀。

非常符合当前的全球经济发展动向。

【鼓掌】

我在这里说明一下，
Inflator这个词可能会使有些人联想到十几年前的一款同名插件,
但实际上这两者是完全不同的插件。

首先这两款的功能不一样。
我们来看一下那款同名插件的宣传文：

> A unique and powerful plugin to increase loudness, without sacrificing sonic quality or dynamic range. Add power and presence to your mix without the pumping of compression, or use on individual channels to bring them forward and add weight. Perfect to help vocals cut through the mix.
>
> When driven harder, Inflator delivers tube-like musical warmth and provides the 'sonic glue' you need to gel your mix together!
>
> "Inflator is a rare plugin…I can’t live without it. It simply makes everything sound better..."
>
> "Just the right amount of Inflator will breathe life into anything you run through it!"

这几段话让人看得一头雾水，
不明觉厉。
但实际上它就是个增加音量的waveshaper嘛，
一句话就能说清楚的。

当然如果说透了销量就降下来了。

相比之下我这款功能就~~跟它一样~~简单很多－
它可以让任何音频都变得更好听。

没错，
连数字底噪也能变得更好听。

你不要说音量更大自然会显得更好听，
这两者本质上还是不同的。
哪怕AB测试能完全抵消也不代表声音完全一样。

如果你听不出来区别，
那肯定是因为你的监听音箱不够贵。

其次我们对比一下GUI。
人家长这个样子

![Sonnox Inflator screenshot](/img/Content/REAPER/inflator-V3-gui2.jpg)

我们看，
这个界面有大量无用的视觉元素，
例如推子钮上的颜色渐变和刻印等等。
这样的视觉设计会增加很多开发成本，
毕竟当时国外的界面设计师不是白菜价。

（虽然现在可能是了

而我的RCInflator保留了音乐人朴素的一面，
修复了调整图片尺寸可能会产生失真像素的Bug，
优化了渲染矢量图形会占用额外CPU的问题，
避免了HiDPI显示器下无法阅读的情况，
并且将极简主义发挥到了极致。

它长这个样子：

![RCInflator screenshot](/img/Content/REAPER/RCInflator.png)

请不要误会，
这种原生程式样的设计绝对不是为了节省开发成本，
而是为了凸显插件本身的音频处理功能以及增加稳定性。

说到稳定性，
告诉大家一个好消息。
RCInflator不需要iLok，
你可以随时随地在任意一台电脑上使用该插件。
同时我也没有在插件中添加在线插件激活功能、
定时callhome、
以及timebomb等降低稳定性的元素，
所以可以安心地使用它。

至少在不到一分钟的测试环节内一次都没有崩溃过。

请大家注意，
我没有添加防范措施绝对不是因为我不会写，
而是因为我衷心希望所有用户可以更轻松地上手使用它，
把精力放在创造音乐上。

【鼓掌】

所以你们看，
这两者不仅宣传语不一样，
长相也不一样，
而且连防伪措施都不一样，
怎么可能是同款插件呢对不对。

好的，
以上是这款插件的介绍，
接下来是大家最在乎的环节，
也就是这款插件的**价格**。

定价是个非常讲究的艺术，
这方面我投入了很多时间和精力。
为了能让各位理解我的决定，
我先给大家一个参考数值。
口碑很好的DMG EQuilibrium原价约210欧元，
大名鼎鼎的肥波FabFilter Pro-L 2原价是199欧元，
刚才提到的Sonnox Inflator原价是195欧元，
这三个毫不相关的插件换成RMB都将近一千五，
简直是天文数字。
我没有那么贪婪，
RCInflator原价只要194欧元。

毕竟定价太便宜会影响音质。

但是好消息！

为了~~防止国人用盗版~~支持国内的音乐人，
去中文官网购买该插件的话可以享受不到2折的优惠，
只要194.0 RMB！
【小字：实际价格不包含小数点本点】

【鼓掌】

谢谢，举手之劳。
购买地址藏在文末。

不过据小道消息，
目前官网出现了**无需支付就能下载**的bug，
我们会尽快修复。

欸，
我们刚刚收到一个来自网友的留言。
留言内容是：
这个算法不是早有人破解了吗？你们盗用人家成果吧。

哈哈哈，
这位朋友真会说笑，
~~你就不怕我们旗下二十多个水军团队在网上骂死你么~~。
哦不我是说，
朋友你误会了。
的确一年前有人在[GearSlutz，呃GearSnobs，哦不对，GearSpace上发帖子声称破解了Inflator的算法](https://gearspace.com/board/music-computers/89255-sony-oxford-inflator-please-demistify-post15125058.html#post15125058)。
但他是以预设形式发表的，
根本不是个插件啊。
所以怎么能算盗用呢？
这最多是个参考！
灵感来源！

音乐人的事，能算盗么？

好的我们又收到了一个留言：
“不是说自主研发么，
我在官方论坛上看到你们的[开发讨论贴](https://forum.cockos.com/showthread.php?t=256286)，
里面都是Sai'ke在修代码啊。”

问得好。
但朋友你格局小了。
自主研发就不可以使用别人的代码吗？
都2202了，
我们那么多自主研发的产品不也都是站在巨人的肩膀上吗？
哪怕是魔改、套壳、外包，
只要概念是我们想出来的产品是我们发布的不就是自主了么？

好了我们马上进入下一个环节，
我来讲一下这个插件怎么用。

...

其实我也不是很清楚这个插件应该怎么用，
大家可以参考Inflator的说明书，
作为...呃，*同类插件*。

哦，
对了，
下载地址。

REAPER用户请直接去用[ReaPack](https://forum.reaget.com/t/topic/219)，
官方源自然包含该插件，
名字是RCInflator (Oxford Edition)。

非REAPER用户的朋友们请在本文底下留言，
评论区超过一定数量我会考虑再出一篇《如何在其他非PT的DAW里使用JSFX》的教材。
