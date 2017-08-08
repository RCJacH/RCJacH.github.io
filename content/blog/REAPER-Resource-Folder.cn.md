+++
author = "RCJacH"
title =  "如何寻找Reaper资源文件目录"
description = "REAPER的Resources Path/资源文件目录到底在哪儿？"
date = "2016-06-20"
tags = ["音乐制作","REAPER"]
categories = ["音乐制作"]
+++

在使用REAPER的过程中，无论是在添加主题、脚本、插件、还是轨道/工程模板的时候，都需要把相应的文件放到一个叫做**资源文件目录**的文件夹中。那么这个文件夹到底在哪儿呢？以下提供几个能找到它的方法。

<br>

**最直接的方式**：我们打开Reaper之后，在其默认菜单里的Option（**选项**）中，倒数第五个命令是**Show REAPER resource path in explorer/finder...**（**在Explorer/Finder中打开REAPER资源文件目录…**），点击之后就会在系统默认的文件浏览器中打开该目录了。

<br>

以上介绍的方式通常能解决大部分寻找资源文件目录的需求， 可实际上我们可能会遇到特殊的情况，需要通过手动的方式去寻找这个资源文件目录。方法如下。

在windows系统下，不同的系统版本中的地址稍有不同，分别是：

Win XP与之前的系统：

C:\Documents andSettings\(username)\Application Data\REAPER\

Win 7与之后的系统：

C:\USERS\<username>\AppData\Roaming\REAPER\

<br>

以上地址，把<username>带括号替换成你的电脑用户名，直接粘贴至文件浏览器的地址栏里，点击前往或按Enter键就到达了。更便捷的链接是这个：

%appdata%\REAPER

同样直接粘贴至文件浏览器的地址栏里就可以了。

<br>

Mac OS 系统下，该地址为：

/Users/<username> /Library/Application Support/REAPER

同样，把<username>替换成你的电脑用户名即可。

<br>

此外，REAPER对于资源文件目录的优先值为：**先搜索主程序所在的文件夹**，如果没有资源文件，再搜索系统默认的资源文件地址（之前所介绍的）。所以如果找不到相关的资源，不放也查看一下Reaper运行文件所在的地址吧。