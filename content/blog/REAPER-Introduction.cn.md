+++
author = "RCJacH"
title =  "REAPER简介"
description = "REAPER DAW，内行才懂。"
date = "2016-02-02"
tags = ["音乐制作","REAPER","编曲","录音","混音"]
categories = ["音乐制作"]
+++

![](https://user-images.githubusercontent.com/12930244/28352754-cec487f0-6c8a-11e7-962f-d99e064883ed.png)

从今天开始，本博客将在吉他/乐器练习与乐理的基础上开启新的Reaper内容分类，这个分类将主要包含**REAPER** (*Rapid Environment for Audio Production, Engineering, and Recording*) 这款DAW的进阶使用理念、音乐制作的思路与操作、音频录音与后期处理等内容。

<br>

国内用Reaper的不是很多，大部分还是处于FL Studio, PT, Cubase, Sonar, Logic, 和Live这几种更商业的DAW。当然Reaper在国外也不是很嚣张，因为人家**压根**没有花一分钱在宣传上，靠的都是口碑。什么是宣传？当你看到国外大师级别的录音/混音/母带工程师微笑地讲解着某个DAW功能的高清视频…嗯，那就是宣（Dai）传（Yan）。大部分音频工作者真正工作的时候都是因为某些功能不顺手、不稳定或者满足不了需求而心里默默跑过了一万只羊陀。

<br>

所以Reaper诞生了。目前有一些大牌的游戏与影视音效、音乐设计师公开表达他们对Reaper的爱：

[David Farmer](http://reaperblog.net/2015/12/david-farmers-intro-to-reaper-for-sound-designers/) (霍比特人、蚁人、暗黑3、魔兽世界等)

[Ariel Gross](http://reaperblog.net/2015/11/interview-with-game-audio-professional-ariel-gross/) (质量效应、星球大战游戏等)

[Eduardo Vaisman](http://reaperblog.net/2015/02/reaper-in-shangri-la-designing-demon-voices-for-far-cry-4/) (分裂细胞6：黑名单、孤岛惊魂4等)

[Ryan Canestro](http://reaperblog.net/2015/05/surround-mixing-with-ryan-canestro/) ([影视作品列表](http://www.imdb.com/name/nm5237391/))



除了音频处理功能上有实力与其他DAW竞争，Reaper包含了一下几个其他DAW只能仰望的特征：



## 价格

Reaper支持60天无限制的**免费试用**，并且用户可以在试用期之后继续使用，而限制只有打开界面时5秒钟的购买提示。如需购买正版，Reaper针对年营业额低于两万美金的商业个体或团体，以各种教育机构有一个60刀的折扣版，比不少插件都要*便宜很多*。同时，每一个正版的授权可以免费享用两个大版本的升级。如果你是版本5点几发布时购买的授权，你可以免费升级到6.99。按照Cockos他们家一年半一个大版本升级的进度来算，代表着3年左右的免费升级。相比之下Cubase8升到8.5还得花钱的是不是弱爆了?



## 更新速度

Reaper平均**每两天**放出一次[微型的beta版本更新](http://www.landoleet.org/)，修正一些Bug、添加一些API、增加一些新功能之类的。每次更新之后团队会在论坛里获得一些反馈，通常出现任何问题可能*当天*就修复了（每年元旦第二天就开始持续更新了）。

当然啦，普通用户可能不需要保持最新版本，而且beta版通常是为开发人员准备的。这种互联网形式的更新与反馈速度倒是值得学习一下。



## 自定义界面、菜单、宏

这点是Cockos公司创始人Justin Frankel (之前是Winamp的开发者) 一直强调的。先不说自定义快捷键这种行业标准，Reaper里差不多**所有的界面与菜单都可以自定义**。很多人首次打开Reaper觉得界面不美，但其实我们可以使用官网上用户自制的[皮肤](http://stash.reaper.fm/tag/Themes)。



比如[这个：](https://stash.reaper.fm/theme/1993/Concerto%201.1.ReaperThemeZip)
![](https://stash.reaper.fm/30734/concerto%20a.png)

[这个：](https://forum.cockos.com/showthread.php?t=183627)
![](http://www.houseofwhitetie.com/imperial_v5/7.png)

[这个：](http://stash.reaper.fm/theme/1702/Default_Commala_5.ReaperThemeZip)
![](http://stash.reaper.fm/26271/eWXe5wv.png)

[或者适合双屏的这个：](http://www.houseofwhitetie.com/reaper/imperial/wt_imperial.html)
![](http://www.houseofwhitetie.com/reaper/imperial/images/mixer_ss.png)

也有很多模仿款的：
[PT](https://stash.reaper.fm/theme/1338/Pro%20X-Tools%20Gold%20ED%20v1.0.2.%20MOD%20by%20FB.rar)
![](https://stash.reaper.fm/19884/ProTools_alike_ProTools_alike_screenset.PNG)

[Logic皮肤](https://stash.reaper.fm/theme/1964/I%20Logic%20V2%20Public.ReaperThemeZip)与[付费版](https://forum.cockos.com/showthread.php?t=187971)
![](https://stash.reaper.fm/30444/2.5.png)

[Sonar皮肤](https://stash.reaper.fm/theme/833/REACTION%20V1.0_beta01a.ReaperThemeZip)
![](http://stash.reaper.fm/9717/ReactionV1.0_Beta01.png)

[Adobe Audition 2017皮肤](https://stash.reaper.fm/theme/1988/Adobe%20Audition%20CC%202017)
![](https://stash.reaper.fm/30697/AA2017Edit.png)

<br>

菜单方面，很多人刚开始使用的时候会觉得很乱没有逻辑。我之前也这么觉得，所以在这里推荐一下我目前正在使用的菜单系统，[ReaMenus](https://forum.cockos.com/showthread.php?t=58672)（貌似需要[SWS扩展](http://sws.mj-s.com/)）。

<br>

### 使用方法：

把[ReaMenus下载文件](https://stash.reaper.fm/29604/ReaMenus_5.ReaperMenuSet)放到Reaper的[资源文件目录]({{< ref "REAPER-Resource-Folder.cn.md" >}})中的MenuSets文件夹内，在Option菜单里的Customize menus/toolbars选项内，下方有一个Import。点击后选择新下载的文件，你就能看到整个菜单都变了样子呢！可惜目前菜单不支持[K酱的中文翻译版](https://bitbucket.org/Kommit/reaper_cn)，以后说不定。



而宏又是什么呢？在Reaper里，一个宏是一群操作的组合。通过宏，我们可以**用一个快捷键执行多个操作**。例如我们可以按一个键Solo所有名字里带有DR的轨道（鼓组），或者一键把选中的item通过原轨道效果导出成音频段放在新的一轨中（保留音量、相位包络和发送设置），也可以结合多个自制脚本达到意想不到的效果。

<br>

## 自制脚本

目前Reaper支持Lua、EEL、C++、Python、以及自家的Jesusonic Effects（JSFX）五种脚本语言，其中JSFX与EEL偏向实时音频或者MIDI处理。通过这些脚本，我们可以**做到很多DAW本身做不到的功能** -- 从简单的信号处理，到改变工程制作方式（例如仿Ableton Live的[Playtime](http://www.helgoboss.org/projects/playtime/)），甚至自动生成MIDI也可以哟！你可能会问：“我不是程序猿怎么办？”没关系，Reaper已经自带上百个JS效果，并且官方论坛上也有很多用户自制的免费脚本。如果你能想到什么奇特的功能，不妨在论坛上留个言，也许会有大神给你写出来一个也说不定哦。

[RCJacH的ReaPack Repository包含REAPER Daw使用的Lua和JS脚本与效果器](https://github.com/RCJacH/ReaScripts/raw/master/index.xml)

<br>

## 多采样率

在使用其他DAW的时候，当你拖进来任何与工程文件不同采样率的音频或者mp3时，宿主都会自动转换成一个与工程采样率一致的wav音频文件。这样不仅增加了硬盘负担，也降低了工作效率（转码也需要时间呐！）。尤其是对于声音设计师、影视音效师这种经常会用到不同来源的采样的音频工作者来说，能够把**各种采样率**以及**各种格式**的音频自由地拼在一个工程内是多么舒适的一件事情。

<br>

## 轻量级 + Portable

Reaper的安装文件只有10-20mb，安装之后也才60mb左右。你没看错，**Megabytes**不是**Gigabytes**! 它的体积__比很多音频插件都要小__。同时，不管是Win还是Mac，他可以安装**Portable**。Portable指的是所有的设置文件都放在安装目录下，不论你把这个目录文件夹移动到哪里，Reaper内的设置都不会有变化。Win版安装时可以直接选择Portable的文件夹，而Mac版在安装之后只要把Resources文件夹内的所有文件拷贝到Reaper.app的位置就可以了。具体有什么用呢？我现在U盘上同一个文件夹内装有Win + Mac两个版本的Reaper，它们共同使用同一套设置资源。再加上Reaper授权只是一个放在安装文件夹内的一个小文件而并非需要硬件或需要安装的ilok和eLicenser，我们可以把这个U盘插到**任何电脑**上 ([已经支持Linux](https://forum.cockos.com/showthread.php?t=193760)) 都能**直接运行**，保留最习惯界面、菜单和快捷键!

<br>

## 超稳定

能把这么全面的一款DAW打包成这么小的体积，说明它的引擎没有加入哗众取宠的包装和设计（Analog Summing之类的），只保留了最核心的代码。同时每个插件还可以单独分别用防止插件错误而造成宿主崩溃的Dedicated Process Bridging功能来运行。很多人认为Reaper算是最稳定的DAW。

<br>

当然，这款DAW还**隐藏着很多非常强大的功能**，包括视频效果、逆天的Automation Modulation、以及任意轨多通道的信号发送等常用功能。我会在未来的帖子中慢慢介绍的!

<br>

看到这里有没有一点点小动心？大家速速跑去[官网下载REAPER](http://reaper.fm/download.php)试试看吧！