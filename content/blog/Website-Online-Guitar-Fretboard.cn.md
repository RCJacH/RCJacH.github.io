+++
author = "RCJacH"
title =  "在线吉他指板"
description = "最近一个朋友做了个网页端吉他指板示范。"
date = "2016-02-03"
tags = ["乐器","吉他","网站推荐"]
categories = ["脚本&模板"]
+++

最近一个朋友用[vexflow](http://my.vexflow.com/)脚本做了个[在线吉他指板](http://yxonic.github.io/fret/)。目前不支持移动端，但电脑端的朋友可以试试玩，点击任何一品添加记号。

<br>

页面低端有三个选项，所有选项只对之后添加的记号有影响。Showname代表记号显示音名，Sharp/Flat选择表示这个显示的音名如非自然音会使用升号或降号。Playback指的是每次点击会播放对应音高的音频。听起来不是采样，估计是用算法合成的？

右键指板可以选择保存为本地图片。

<br>

这个网页还可以添加一些querystring来修改参数，比如说：

[http://yxonic.github.io/fret/index.html?strings=6&start=1&end=11&width=800&tuning=Eb,Bb,Gb,Db,Ab,Eb](http://yxonic.github.io/fret/index.html?strings=6&start=1&end=11&width=800&tuning=Eb,Bb,Gb,Db,Ab,Eb)

<br>

上面地址中的strings=6代表有六根弦，如果想要个贝司指板可以改成strings=4。

<br>

后面start=1表示从1品开始(最低品)，end=11代表最高只到11品。Width=800应该表示指板整体像素长度。后面的Tuning应该是从上到下（细到粗弦）的顺序。

<br>

以上这些参数都可以随便调节，疯嗨吧！

<br>

PS. 以后博客各种谱子也争取运用vexflow的技术生成图片，近期会把功能嵌入到本博客。