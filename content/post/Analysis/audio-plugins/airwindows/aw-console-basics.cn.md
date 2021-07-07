---
title: "Airwindows Console插件系列概念及使用简介"
date: 2021-07-06T20:12:58+08:00
draft: true
tags: ["插件分析", "音乐制作", "混音", "音频插件"]
categories: ["音乐制作"]
description: "狗不理的Console插件系列是玄学还是科学？偷偷地使用它们能让我们的混音有水电的自然味儿火电的雾霾味儿或者核电的金属味儿么？【伪"
---

我在上一篇文章中对比了一下Airwindows的Console插件，
今天我要讲讲怎样使用它们。

在此之前，请允许我先唠叨一下该系列插件的原理。

## Airwindows Console插件的原理

Airwindows Console系列插件追求的是**模拟(emulate)模拟(analog)调音台的相加效果**。

相加效果，**summing**，指的是把多个信号合并在一起的过程。
对于数字信号而言，summing就是简单的加法。
举个例子，
数值为1的采样A与数值为2的采样B相加之后，
总和为3。

数学是不是很奇妙？

模拟调音台就不一样了。
它们是电力驱动的。
每个电子元件都需要用电来描绘信号、传递信号。
非常美好。
只不过会出现以下这个现象。
当多个信号出现相位抵消的时候，
由于每个通道依然需要使用能量，
只不过由于相位抵消把这个能量浪费掉了，
导致相关的电子元件变得更不稳定、更易失真，
会让信号受到一些[不可描述的影响](https://gearspace.com/board/showpost.php?p=13049501&postcount=19)。

Console插件模仿的正是这个现象。

那它们是怎么实现的呢？

稍微有些复杂，
因为每个版本和变异所用的算法都稍微有些不同。
幸运的是，
Airwindows的作者Chris写了一个剥离了染色功能只保留了核心概念的简化版。

PurestConsole。
也正是我上篇提到的日常款。

其算法很简单。
每个音轨过一个正弦函数sin(x)添加正失真，
经过DAW自带的（数字）summing功能合并之后，
再过一个反正弦函数arcsin(x)来逆转之前的失真。
Chris称之为反失真。

用代码来表达以上概念的话则是：

``` C++
asin(sin(A) + sin(B)...)
```

如果你对视觉更敏感的话，
<a href="https://www.desmos.com/calculator/yxsyooalg8" target="_blank">点击这里查看我在Desmos上做的图</a>。

图中：

+ X轴为时域
+ Y轴为振幅
+ 黑线为原信号
+ 红线为Console渲染后的输出
+ 蓝线为其中的差值－干湿之间的区别

![Airwindows PurestConsole曲线截图](/img/content/analysis/aw-console/purestconsole_curve.png)

目不转睛看一会儿（手动调一调参数）能注意到以下两点：

1. 信号增强比例和输入音量成正比。
2. 当输入总和高于0dB (y > 1)时，
    输出值则属于未定义域。
    实际使用时估计会有难听的失真，
    所以do your gain-staging。

概念简要解释结束，
接下来让我们聊聊实际制作中的设置和应用吧

## 如何设置和使用Airwindows的Console插件

每个Console都有一对插件。

通道条的ConsoleChannel，总线条的ConsoleBus。

回顾一下上文解释的算法，
ConsoleChannel是那个正弦函数，
ConsoleBus则是反正弦函数。

所以，理论上你应该**为每一个音频轨道添加一个ConsoleChannel，
并为那些轨道相加之处（母轨道）添加一个ConsoleBus**。

有一点需要注意，**ConsoleChannel需要放在推子后的插件位置上**。
因为Console插件算法的要求是输入音量与输出音量相等才能使两个函数所添加的失真互相抵消，
所以音量和声像（左右通道音量比例）需要在信号进入Channel插件之前调整。

如果你的DAW不支持轨道在推子后添加插件的话，
咳咳REAPER咳咳，
那你~~完了~~赚大发了，因为我发现了以下这个解决方法。

### 我的DAW没有推子后插件功能怎么办

首先说一下官方解决方案，指Chris在Logic里的用法。

*在每个轨道插件链末端添加ConsoleChannel，
并在总线轨插件链首端添加ConsoleBus*，
之后在推子和声像钮上贴个“请勿触碰”的提示条严格遵守。

![Console之Channel与Bus插件链普通版](/img/content/analysis/aw-console/original_usage.png)

我之前也是这么用的，
直到有一天我终于受够了，
决定重新设计Console相关的工作流程。
主要是因为我突然意识到，
这么做忽视了DAW提供的两个重要功能。

首先，
不使用推子和声像钮意味着
我无法靠调音台的视觉反馈获取任何有价值的信息。
搜索任何轨道都得一轨一轨地去听（合理的轨道命名能缓解部分压力）。
其次，轨道音量只能通过插件来修改，
每次微调都得打开+关闭GUI，
效率极低。
不仅如此，
把Console插件嵌入音频轨道插件链上会增加干湿对比工作的难度。
因为关闭任何一轨插件链（无论是音频轨还是总线轨）
都会把本身成对的Console插件拆分开，
导致音频的过载状态不同于输入或输出。

这些问题的解决方法很简单，
我们**单独创建一个summing专用的轨道，
让其成为音频轨与总线之间的中介。
然后把所有console插件都挪到该轨道上**，
这样就可以自由地使用推子、音像钮和插件链开关了。

![总线与音频轨之间Summing专用轨道](/img/content/analysis/aw-console/dedicated_summing_track.png)

与普通模式原理相同，
该轨上ConsoleChannel插件数量对应输入的音轨数量，
每个插件应该设置成不同的双声道输入输出。
ConsoleBus应放在插件链末端，
接收所有输入通道但仅输出至首个双声道，
并在插件I/O的右键菜单中把其设置为zero out unmapped output channels（新功能），
意思是屏蔽未设置为输出的通道。

![双音轨的Console插件路由案例](/img/content/analysis/aw-console/console_plugins_routing.png)

在此之后，
我们需要为所有的子音轨设置对应的音频通道。

![把所有子轨道设置为连续的立体声通道](/img/content/analysis/aw-console/track_send_routing.png)

工作量有点大，不敢想象上百轨的工程是如何管理的。
别怕，我写了以下两个让生活更美好的脚本。

1. RCJacH_Set Airwindows Console Track FX Pin Mapping.lua

    该脚本会按上述规律设置在所选轨道中的所有插件。
    指除了最后一个插件设置成接收全部输入并仅输出前两个通道以外，
    其他插件都自动分配一个未占有的双声道输入输出。
    但这个脚本没办法设置屏蔽其他输出通道的选项，
    暂需手动。

2. RCJacH_Set Parent Send Channel Offset to Sequentially Stereos for Selected Tracks.lua

    该脚本会按顺序将所选的每个音轨设置成不同的双声道（上交母轨道的）输出。

所以对应的工作流程是：

首先在总线和子音轨之间建立summing轨。
其次在此轨道上添加一套Console插件。
Bus插件放到末端，
其他都是Channel插件，数量对应子音轨的数量。
之后选中summing轨并运行脚本1。
最后选中所有子轨道并运行脚本2。
操作终了。

添加我的ReaPack镜像来下载这两个插件：

<a href="https://forum.reaget.com/mirrors/RCJacH/ReaScripts/index.xml" target="_blank">RCJacH的ReaPack镜像</a>

### Summing专用轨道的弊端

刚才提到的这个路由方法并不是十全十美的，
我接下来要自怼了。
这个方法有两个问题：

一是：

使用普通路由的话，
我们可以在ConsoleChannel和ConsoleBus之间添加一些处理效果，
例如把正过载的音频信号发送至混响轨，
再把混响信号过一遍（总线上的）ConsoleBus反过载。

这样做据说能让混响更有粘合力。

但我木耳朵听不出来。

不管怎样，
用summing专用轨做到这一点很麻烦。
麻烦到我不想解释路由方法。

二是：

REAPER每个轨道最高只有64个音频通道，
也就是说你一个轨道最多只能用32个Console插件。
比某款经常被我吐槽但不能说名字因为会被骂的DAW的轨道限制还可怜。
这个问题的解决方案是把总线分成多个编组总线：
所有的鼓分轨先在鼓组合并，
吉他到吉他组相加去，
人声令分一组做summing。
如果通道数量还不够，
那就再拆。
把木吉他和电吉他分成两个单独的编组，
再进入到吉他大组。
每个组单独做summing，
最后把所有的编组进到总线的summing轨。
这样一层一层的处理是不是有点像模拟时代的混音了？

## 总结

看了上述介绍你应该能了解Console插件的作用和使用方法了。
它能让你的混音更融合，轨道之间有更多互动。
但这是否能让你的混音变得更好听呢？
如果你还未阅读我上篇文章，
请猛击链接[如何挑选Airwindows Console插件系列]({{< relref "aw-console-comparison.cn.md" >}})
，下载、打开工程并自行测试。
