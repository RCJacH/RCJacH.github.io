+++
author = "RCJacH"
title =  "Reaper字符串快捷键系统：Vimper Solo"
description = "依照VIM文本编辑器快捷键理念的原创REAPER脚本。"
date = "2017-02-05"
tags = ["音乐制作","REAPER","录音","混音","脚本"]
categories = ["脚本&模板"]
+++

当我们开始挖掘REAPER内隐藏着的几千个操作（Action），并且随着ReaPack的成长不断添加新的用户自制脚本与扩展时，我们会发现当我们需要自定义快捷键时，能用到的键位越来越少。而为了充分利用现有的字母、数字、以及符号键，我们通常需要加上各种如Ctrl，Alt甚至Win的修饰键进行各种高难度的键位组合，而且经常过几天可能就会忘掉一大半。



为了避免这种尴尬，我做了一个按组归类快捷键的脚本。它是依照VIM文本编辑器快捷键的理念，通过一串字符触发快捷键的。



[点击这里下载Vimper Solo](http://stash.reaper.fm/29708/Vimper%20Solo.zip)。



通过这个脚本，我们不需要去记各种修饰键，只需按组激发对应的键位就好了。例如，在这个脚本内，同一个m键可以根据不同的分组静音轨道、块或层，但在REAPER里，我们得去想到三个不同的修饰键组合来触发这三个不同的功能。有的时候由于记不住某个操作是要按Shift还是要按Ctrl还是Ctrl+Shift需要反复去试，浪费很多时间。



## 使用方法：

1. 解压后把整个文件夹放到资源目录的Script文件夹内，然后在Reaper的Action List中加载RCJacH_Vimper Solo并为其设置一个快捷键（我用的是分号;）。

2. 触发脚本，根据GUI窗口提示进入不同的分组并触发不同的操作。

3. 使用Backspace退格键返回上一层菜单。

4. 也可以在Action List中加载RCJacH_Vimper Solo Repeat Action来反复触发上一次触发操作。



在Bindings.lua文件里，可以依照现有项设置新的快捷键或者修改现有的快捷键。

格式：



分组= {

NAME = “分组”,

快捷键= {CommandID, 所显示的名称},

}



*注意，任何分组必须得包含NAME= “名称”一项，否则识别不到。

**分组可以有无数层。

***如果添加新的总分组，得在最底下的return{}里添加。

****快捷键目前区分大小写。

*****显示名称可以使用中文。

![Vimper Solo 主页面](https://cloud.githubusercontent.com/assets/12930244/22625368/57c855aa-ebcf-11e6-8d81-b39f69e665e9.png)
![Vimper Solo 窗口页面](https://cloud.githubusercontent.com/assets/12930244/22625366/57c7eb2e-ebcf-11e6-9dbd-cd5caa3298ca.png)
![Vimper Solo 音轨页面](https://cloud.githubusercontent.com/assets/12930244/22625367/57c80f32-ebcf-11e6-97b9-5bf415748bd7.png)