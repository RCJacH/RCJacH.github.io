+++
author = "RCJacH"
title =  "REAPER - 原创JSFX小游戏RCMShip Perfect Pitch"
tags = ["Production", "REAPER", "JSFX", "Script","Musicianship","Exercise","Synth"]
categories = ["Scripts & Templates"]
description = "一个练习绝对音准的JSFX游戏。"
date = "2018-03-28"
+++

[RCMShip Perfect Pitch下载地址](https://raw.githubusercontent.com/RCJacH/ReaScripts/master/JSFX/Game/RCMShip%20Perfect%20Pitch.jsfx)

RCJacH的ReaPack Repository包含REAPER Daw使用的Lua和JS脚本与效果器[RCJacH ReaPack Repository](https://github.com/RCJacH/ReaScripts/raw/master/index.xml)

[如何使用ReaPack？](http://www.audiobar.net/forum.php?mod=viewthread&tid=489649)


# 简介

RCMShip （MShip代表musicianship，即音乐修养、视唱练耳）Perfect Pitch是一款包含自适应随机算法的原创JSFX游戏，用来练习绝对音感的能力。

![RCMShip Perfect Pitch](https://user-images.githubusercontent.com/12930244/38019068-3433a686-32a9-11e8-83fa-f0d44089f358.png)

# 游戏方式

1. 点击 **START**后，游戏将播放一个固定音高。
2. 猜测该音高的音名并点击相关按钮。
3. 回答后，游戏将将显示正确答案，若答错也会显示所选答案。
4. 点击 **Next** 将继续下一轮。

# 特色
  
## *自适应*
当玩家做出回答后，回答的正确与否将影响当前所播放的音出现的几率。

## *可选性*
点击**Setup**将转至音符选择页面，在此你可以手动或随机选择游戏所包含的音高，限制游戏难度或者增加变化。

## *可配置*
点击**Config**按钮切换到设置页面，可以设置一些基本参数，例如音量、音符长度、播放的八度和八度跨越等。也可以切换至MIDI输出模式，用采样播放器或者其他合成器作为音源。


# 进阶介绍

## 理论

来自404（wiki）："Absolute pitch (AP), widely referred to as perfect pitch, is a rare auditory phenomenon characterized by the ability of a person to identify or re-create a given musical note without the benefit of a reference tone." 绝对音感是一个罕见的听觉现象，指的是一个人有能力在没有参考音高的情况下识别或重现一个给定的音符音高。

绝对音感通常被视为一个与生俱来的能力，而当前虽然有一些科研性或商业性的相关产品，但还未能证明其对大众的有效性。 然而，虽然音频工作者们（录音师、混音师、母带师）需要花数些年的时间练习分辨音频的振幅、频率、时间等各种性质，长时间地针对绝对音感进行相关练习的人可能并不是多数。 在这种情况下，对于绝对音感是天生而来的主张可能没有太多的实际证明。

我的观察是，关于绝对音感的练习大概分以下三种：:

1. 常年的乐器练习建立了对乐器的声感的熟悉度。.我身边有绝对音感的人大多数也都是个非常优秀的乐手，尤其是钢琴或小提琴这种需要记音名的乐器，而非像吉他这种大部分人只记弹奏位置而非乐谱的乐器。不过有一些比较厉害的吉他手也有能力直接反映出所听到音符的弹奏位置而非其音名，在某种程度上也算是绝对音感的变异吧。一个有趣的现象是，他们其中一部分人所拥有的绝对音感是受乐器或者音色限制，例如一些钢琴乐手只能分辨钢琴声音或者像钢琴的音色，而面对吉他音色时就有些不知所措了。

2. 使用日常生活反复出现的固定频率作为参考音随时提醒自己，例如微波炉的叮声、打电话时的拨号声、地铁鸣笛声、家人的呼噜声之类的...当任何有固定音高的频率出现时，试着去找到它的音名或者频率，稍微记一下。如果它反复出现，那么每次出现时你都会被提醒一下，重复多了你对这个频率或者音符也就熟悉了。

3. 刻意练习，通常使用一些随机生成的频率或音高，通过立刻反馈快速调制个人对该音高的判断。这是此游戏所使用的练习方式，也是大部分绝对音感相关游戏所使用的练习方式。

这个游戏与其他游戏的区别是，其他游戏多数是在规定的音高（甚至音色）内随机生成播放音高，此游戏*使用了自适应的生成方式*，也就是说你对一个音高越熟悉，它所出现的几率则越低，反而反之。这样玩家可以仅关注于他们不熟悉的音高上，直到他们熟悉了该音高，这也是此游戏的目的。

注，以上三种练习方式并非单选题，同时进行最有效。

Use whatever that works.

## 控制方式

此游戏包含两种可操控对象：

1. 按钮 - 鼠标点击后释放则触发对应的操作。 ![RCMShip Perfect Pitch中的按钮](https://user-images.githubusercontent.com/12930244/38019070-349af44e-32a9-11e8-9ee2-1cb4676e7e2e.png)
2. 拖拽框 - 点击并拖拽改变数值。 拖拽框左侧有个不同颜色的圆点，其纵向位置为当前数值与其可选数值范围的百分比。![RCMShip Perfect Pitch中的拖拽框](https://user-images.githubusercontent.com/12930244/38019073-35655ce8-32a9-11e8-814c-12b286beea98.png)

操作上的颜色是用来分辨其当前状态的。

+ 深灰代表非活动的（无法触发）。
+ 浅灰代表活动的、可触发的，但不会影响游戏进程。
+ 黄色代表高优先值，触发后能继续游戏的。
+ 绿色与红色用于辨别正确与错误的音符。
+ 绿色也是播放键**Replay**的颜色，同时也作为拖拽框的颜色。
+ 红色是危险区，点击它会导致一些不可挽回的操作。 当前为 **None\All** 音符选择以及 **Reset** 清空比分按钮的颜色。
+ 点击蓝色按钮会转至设置页面。

### 比分按钮
主页面第四行第二列有个**Score**按钮，默认值为**Ratio**。当前状态会显示目前的游戏比分，竖杠左侧为此音符正确猜测次数，竖杠右侧为其错误猜测次数。点击此按钮会切换至**Percent**，**Score**（隐藏比分），再次点击则转会**Ratio**。

### 选择页面
点击**Setup**转至音符选择页面。
![RCMShip Perfect Pitch中的音符选择页面](https://user-images.githubusercontent.com/12930244/38019375-f70c90dc-32a9-11e8-868f-0e3425f38a22.png)

此页面中，你可以点击音符名来手动选择那些音符包含在随机生成的范围内。活动的音符为绿色，非活动的为深灰色。

音符下方也有个**None**或者**All**按钮，能快速设置所选音符为所有或无。

此按钮右边是**Random**随机按钮加拖拽框。这个按钮会随机生成数字所显示的音符，包括当前手选的。举个例子，如果你想设置成包含C和F的5个音符，你需要先手动选择C和F两个音（使用**None**按钮可以加快该环节），然后向下拽动**Random**按钮直到底下数字显示5，松开鼠标左键并点击**Random**按钮。此时如果你对生成的结果不满意，只需要再次点击此按钮，他会生成另外一组包含C和F的五个音。

### 配置页面

点击**Config**按钮转至配置页面。
![RCMShip Perfect Pitch中的配置页面](https://user-images.githubusercontent.com/12930244/38019376-f7462df6-32a9-11e8-89aa-1467549b57ee.png)

此页面包含了一些影响游戏引擎的设置。所有的拖拽框左侧有个显示拖拽框功能的标注。

**Volume**音量：音频模式下所生成的正弦波音量。MIDI模式下则暂时没有什么用...

**Note Length**音符长度：每一个音的播放长度，音频和MIDI模式下通用。

**Base Octave**基础八度：这个值为随机生成音的最低音。默认值为4，也就是指最低音的MIDI数为5 （从0开始数...）* 12 = 60。

**Octave Span**八度跨越：指随机生成的音符跨越多少个八度。高于0时则会生成跨越一个八度的音符。

**Pitch Name**音符名：音符名称的显示方式。

+ *C*：使用C大调为基础并加上其重属所涉及的音符，也就是说除了Bb（V7/IV），其他黑键皆为升号音。
+ *Sharp*升号：所有黑键用升号音表示，例如C# D#。
+ *Flat*降号：所有黑键用降号音表示，例如Db Eb。

**Sine**/**MIDI**音频MIDI模式：此按钮会切换游戏的输出方式，音频或MIDI。

**Reset**清空：清空当前游戏进度，不可恢复！


[RCMShip Perfect Pitch下载地址](https://raw.githubusercontent.com/RCJacH/ReaScripts/master/JSFX/Game/RCMShip%20Perfect%20Pitch.jsfx)

RCJacH的ReaPack Repository包含REAPER Daw使用的Lua和JS脚本与效果器[RCJacH ReaPack Repository](https://github.com/RCJacH/ReaScripts/raw/master/index.xml)

