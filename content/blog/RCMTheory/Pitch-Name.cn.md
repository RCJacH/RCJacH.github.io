+++
title = "RCJacH乐理系列教程：音名"
date = 2018-06-05T18:37:19+08:00
tags = ["音乐修养", "乐理"]
categories = ["音乐修养"]
description = "理解音名只需要这五句话。"
menu = ""
banner = "img/banners/rcmtheory/pitch_name.jpg"
images = []
+++

## 音高定义
**音高**是人类对声音频率在[对数刻度](#logarithmic)上的感受，也是用来判断声音高低的属性之一。

## 命名规则
1. 共有**七组重复的音高**，我们称之为**音高组**，并用字母**A B C D E F G**标注。
2. 在这些音高组之间，有另外**五个**没有直接用字母标注的音高。所以每次重复之间共有**十二个**不同的音高。
3. 这些字母之间，只有**E-F**与**B-C**是相邻的（此关系名为**半音**），其他字母之间皆有一个音高（此关系名为**全音**）。
4. 为了使用这些中间音，我们使用一种叫**变音记号**的名称修饰符，来改变音组字母所代表的音高。变音记号共有四种，可叠加使用，分别为：

+ **降号** (b) = -1：
<span style="display: inline-block;">
  <img src="https://user-images.githubusercontent.com/12930244/41056877-18961d9c-69f8-11e8-89b7-f74294593340.png" alt="降号" height="16" width="16"/>
</span><sup>[1](#AccidentalPNG)</sup>  

+ **升号** (#) = +1：
<span style="display: inline-block;">
  <img src="https://user-images.githubusercontent.com/12930244/41056879-18fa4448-69f8-11e8-8a67-bb344f27f6a9.png" alt="升号" height="16" width="16"/>
</span><sup>[1](#AccidentalPNG)</sup>  

+ **重升号** (x) = +2：
<span style="display: inline-block;">
  <img src="https://user-images.githubusercontent.com/12930244/41056876-184211e8-69f8-11e8-98c9-edfd46f9a186.png" alt="重升号" height="16" width="16"/>
</span><sup>[1](#AccidentalPNG)</sup>  

+ **还原记号** = 0（去除其他变音记号的影响）：
<span style="display: inline-block;">
  <img src="https://user-images.githubusercontent.com/12930244/41056875-17e4b584-69f8-11e8-94d3-9ca745a928f6.png" alt="还原记号" height="16" width="16"/>
</span><sup>[1](#AccidentalPNG)</sup>仅在五线谱中出现。

<br>
5. 正因为这些修饰符的存在，每一个音高可以有多个音名。同一个音高的不同名称被称为**等音**。


## 学习指南

#### 命名规则
1. 因历史原因，在音乐中这些字母的排列通常为**C D E F G A B**。
2. 为了建立稳固的基础概念，我们在此仅使用十二平均律作为音律标准，即任意两个临近音之间的距离在[对数刻度](#logarithmic)上是相等的。
3. 学习这个规律最好的方法就是想象钢琴键盘。![REAPER中的钢琴键盘](https://user-images.githubusercontent.com/12930244/40974841-70ad6ae2-68fb-11e8-96e6-7d364f236183.png)
4. 区分*音高组*与*修饰符*对于理解音高相关的主题极其重要 - 无论是音程、音阶还是之后的对位法、和声学 - 理解之后能很快掌握之后的知识点。对于音高，其中一个思路是*把所有12个不同的音高根据他们之间的关系定义为0-11的数字，其中C = 0，D = 2等。*去获取数字为1的音高，也就是C与D之间的音高，我们可以从0加上1（升号），或者从2减去1（降号）。这样，我们只需要去记很少的信息，同时当碰到三重升号<a href="http://cnhz.imslp.org/files/imglnks/usimg/d/d4/IMSLP519847-PMLP6989-Alkan_-_Op._39,_12_Etudes,_1._Comme_Le_Vent1_(etc).pdf">![Triple Sharps in Alkan: Etude no. 10 from Douze etudes dans tous les tons mineur, Op. 39 (1857)](https://user-images.githubusercontent.com/12930244/40971490-671d293c-68f0-11e8-845c-2f7f212d9f0b.png)</a> 或三重降号的时候 <a href="http://cnks.imslp.org/files/imglnks/usimg/8/8f/IMSLP62854-PMLP128280-Roslavets-PnoSonata01.pdf">![triple flats in Roslavets Piano Sonata No. 1 (1914)](https://user-images.githubusercontent.com/12930244/40971491-676729e2-68f0-11e8-840a-6c5d94be20bf.png)</a>也不会一脸茫然。
5. **等音不等于同一个音高。**他是否为同一个音高取决于乐器的音律，例如木管和铜管通常是以谐音列为基础的音律，而非十二平均律。举个例子，重降D，代表从D音高组为基础-2的音高，其等音为C。但重降D依然属于D音高组的变异，而C则是C音高组的组员。

#### 频率与音高 {#logarithmic}
作为参考，一个音高的频率每次重复都会增加一倍。例如，若A音高的频率为440Hz，当我们经过BCDEFG以及期间的5个额外音高后，下一个A的音高则是两倍的频率：880Hz。再下一个A则为1760Hz。同时因为共有12个不同的音高，每增加半音，我们用基础赫兹乘以2的12次方根。
![频率与音高线型刻度](https://user-images.githubusercontent.com/12930244/40973092-816d9d6c-68f5-11e8-8091-2bc305053d52.png)
上图中，当音高上升时，半音之间的距离也在增加。为了让任意频段的相邻音之间保持同样距离，我们需要使用对数刻度。
![频率与音高对数刻度](https://user-images.githubusercontent.com/12930244/40973093-81b1703c-68f5-11e8-80a9-28bf0035ca05.png)

## 细说
虽然音名属于乐理中最基础的概念，*它是那些能主动设计音乐的人与那些只能被动复现音乐的人最大的区别。*有很多乐理基础书籍、文章、甚至插件都很注重十二平均律里的十二个音，这个虽然对和声染色或序列音乐很有帮助，但并没有讲清楚功能音乐中每个音符之间的关系。有一些人甚至鼓励死记硬背，完全没有意识到我们对知识的深刻记忆来自于理解与经验，熟练只是这些努力的显性结果。

比起所谓的34个彼此之间没有任何关联的固定音高，*记忆英文字母表中前七个字母应该轻松很多，任何其他音只需要加一个变音符号就可以了*。如果一个不够，就两个（或三个）。变音符号本身就是个修饰符号，不应该作为某些音符的固定名称来看待。这样，我们在之后的概念中就根本不需要去数半音全音，并且对音程、和弦也会有非常坚固的学习基础。

<a name="AccidentalPNG">1</a>: http://linkwaregraphics.com/music/symbols/accidentals/

<br>

{{% content "../ToC.cn.md" %}}