+++
author = "RCJacH"
title =  "小脚本 - 随机生成旋律属性"
description = "今天做了个小脚本，随机生成旋律方面的一些参数，这样每天可以练习一些旋律创作。"
date = "2016-07-07"
tags = ["乐理","脚本","旋律","练习"]
categories = ["脚本模板"]
+++

今天做了个小脚本，随机生成旋律方面的一些参数，这样每天可以练习一些旋律创作。

[随机生成旋律属性脚本地址](https://repl.it/C99d/9)


点击左侧偏上的Run按钮来运行，会在右侧显示结果。



这个脚本生成一下几个参数：

**Key** = 调。目前定义为五线谱调号，以后可以考虑再生成调式/音阶参数。

**Number of Points** = 旋律线中转折点的数量，用来决定下面的旋律形状。

*旋律形状*：从音阶几级上行或下行到几级。

**Prominent Interval** = 旋律中比较重要的音程，或者重复比较多的音程。

**Number of Bars** = 小节数。



同时也做了个[随机生成旋律属性脚本中文版](https://repl.it/C99d/10)

以下是今天做的（红色部分代表旋律转折点）

![](https://cdn.rawgit.com/RCJacH/1355d1a4e0acc36c194431f5fdb0eff4/raw/6e964c1ed79b6885ed52729a0ec56d641711e0af/20160707%2520Melody%2520D%25204%25202d3u6d7%2520p4%25204b.svg)

Key: D

Number of Points: 4

--> Second

--> Down to Third

--> Up to Sixth

--> Down to Seventh

Prominent Interval: perfect Fourth

Number of Bars: 4