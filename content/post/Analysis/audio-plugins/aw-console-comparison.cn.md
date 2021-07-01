---
title: "如何挑选Airwindows Console插件系列"
date: 2021-07-01T16:48:52+08:00
draft: true
tags: ["插件分析", "音乐制作", "混音", "音频插件"]
categories: ["音乐制作"]
description: "让我们把所有的Airwindows Console插件都拿出来溜溜看看是驴是马。"
---

[Airwindows的仿调音台Summing功能的Console插件系列](http://www.airwindows.com/?s=console)是好东西，
一些人甚至觉得[比某款知名的A级模拟调音台还要好听](https://tapeop.com/reviews/gear/104/console-and-buss-colors-plug-ins/)。
自从开发者Chris Johnson把他家插件免费化了之后，
我每个工程都会大量使用。

最近我终于想明白了[如何在REAPER内搭建Console系统](https://forums.cockos.com/showpost.php?p=2449032&postcount=2)
（之后有空再翻译），
所以在想办法把Console插件直接嵌入到各种模板里。

不过他家插件有个小小的问题……选择太多了。

目前为止，
他已经出了两百多个免费插件了，
光Console相关的插件就已经有12个。
而且他每周都在开发新算法，
我作为用户反而有点跟不上他的开发速度。

对于收藏家来说，
能收集那么多奇特的染色插件来丰富我们的调色板是件非常幸福的事情。
更何况其中很多插件就像扭蛋一样，
使用之前根本不知道是干什么用的，
每次都有种拆礼物的感觉。
但是对于音频工作者来说，
这点反而是个灾难。
因为在制作过程中我们不希望被选择恐惧症打断思路，
也没有多少时间尝鲜。
实际上，
有效的工作流程应该是有*一个常用插件外加两三个功能明确的代替品*。
为了实现流畅的操作我们必须得使用空闲时间对这些资源进行整理，
挑出适合的，
舍弃用不上的。
为此，我创建了一个专门对比所有Airwindows Console插件的REAPER工程，
来看看每种Console到底染了什么色，
有什么区别，
哪个是最优选。

俗话说是驴是马拉出来遛遛。

[工程放到REAPER官网上了，点击这里进入下载页面](https://stash.reaper.fm/v/42335/aw%20Console%20Comparison.rpp)。

使用方式：

1. 播放工程。
2. 把单个静音的轨道Solo来听正弦波过Console Channel + Bus的声音。
    静音的轨道名是所用的Console插件名称。
3. 有一个没有挂插件的None轨道，
    可以当成参考用的干信号，
    也可以用来反向抵消其他轨来听失真染色的声音。
4. 总线挂了几个自带的测量插件，
    应该能对理解每个染色具体什么样能有些帮助，
    尤其是频谱。
5. 三个Source音轨挂了都挂上了自带的ReaSynths音源，
    其中source 1在播放440Hz，
    source 2为880Hz（第一个泛音），
    source 3则是用来测试非泛音的频率。

经过对比，我观察到了以下几点：

1. 大部分插件哪怕仅有单轨输入也会产生失真，
    除了Atmosphere, Console5RAW, Console6以及那两个PurestConsole。
2. 多轨Summing肯定会有失真。毕竟染色就是失真，不给染色我们用这个插件干嘛。
3. 所有失真都会产生直流偏差（0Hz信号），
    所以在ConsoleBus之后需要添加一个直流滤波器。
    此方面自带的ReaEQ是所有插件中CPU用量最少的，
    用它加一个20Hz的高通可以过滤大部分的偏差。
    如果你想把其全部切除，
    [Airwindows的Infrasonic插件](https://www.airwindows.com/infrasonic/)能完美实现，
    代价是更高的CPU用量。
4. 染色是非线性的。
    更高的输入音量会使过载算法产生更多泛音，
    并且整个信号会在接近0dB的地方被削波，
    所以别忘了Gain-Staging。
5. 仅用正弦波的话，最难听的失真来自于Console4、Console6、及uLaw。
6. 根据我个人的判断，最好听的几款如下：
   1. Atmosphere。据说是为了模拟声音在空气中融合的听感。
        其失真较平均，没有突兀的听感。
   2. Console5。更饱满，全频段失真上至奈奎斯特；
        [Console5Dark](https://gearspace.com/board/showpost.php?p=13053669&postcount=147)，
        此变异与原版反向后差别在-80dB左右，
        而且主要是原频率以及前几个泛音，
        但用Span把两个信号叠起来又看不出来什么区别。
        此款CPU用量更少；
        Console5Raw，一个更干净的版本，
        [不过据说会出现一些不稳定的直流偏差](https://gearspace.com/board/showpost.php?p=13034212&postcount=8)。
   3. Console7。听起来更空洞，基音音量会稍微小一点。
        它还有个失真稍微更大一点的兄弟叫Console7Cascade。
   4. PDConsole，PD代表Purest Drive。此款听起来失真量最小。
   5. PurestConsole初版。
        经不严谨测试它能跟PurestConsole2完全抵消，
        但这款的CPU用量是所有Console里面最少的，都不到二代的一半。
        而且！！这款跟Atmosphere也能完全抵消！！

总结一下，
日常用PurestConsole，
Console7当成超级模拟染色的Summing盒（它CPU用量最高），
PDConsole来当软胶（胶指粘合多个轨道的功能），
Console5或者Console5Dark当纽约式指脸怼人的硬胶。
