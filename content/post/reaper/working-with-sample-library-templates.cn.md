---
title: "音源模板及常见问题"
date: 2021-06-09T07:20:52+08:00
tags:
    - reaper
    - 模板
    - 制作
    - 工作流程
categories:
    - 音乐制作
description: 介绍并对比三种音乐制作中搭建大型音源模板的思路。
cover:
    image:
---

我在2019年的时候提出过并尝试过用REAPER来搭建**音源服务器**的概念，
后来断断续续有人询问搭建方式，所以打算记录下来供大家参考。

但这篇文章不是关于搭建的。

这篇讲的是音源服务器到底是什么，
并且讨论一下它跟其他模板比起来有什么优势和劣势。

为了理解该服务器的价值，我们需要了解一下媒体音乐制作人在工作中会遇到的几个问题。

## 使用音源时会遇到的问题

### 音源本身的问题

当代音源有个*很大*的问题－他们都*很大*。
众多的乐器组、完善的技法和丰富的麦克风摆位的代价就是庞大的体积、无数个控制器参数、耗时间的设置。

作为作曲类工作者，我们很幸运能有数十上百种不同的乐器为我们服务。
每个乐器还能通过音高、力度、奏法等方式来调整所发出的音色。
如果我们把几千种重奏组合及上万种伴奏织体加入到这个公式内，
光管弦乐团内的乐器就可以搭配出数不胜数的声音，
更别提那些让人着迷的民族及稀有乐器。

虽然小编制音乐近些年在媒体配乐中有复苏的迹象，
但甲方通常还是期待媒体音乐制作人有为大编制创作制作的能力。

没办法，大编制听起来就是爽，但随之而来的是更多的工作量。

除非你是John Williams或者Howard Shore级别，
大编制同期实录后还能赚一笔，
否则你还是得窝电脑面前老老实实地给虚拟乐器画包络去。

问题是虚拟乐器，俗称音源，用起来很不友好。

首先它们很贵－呃，我们都是良民，肯定是要买正版的啊，eventually。
其次每款音源的麦克风配置、输出音量及部分MIDI控制器的设置可能都不一样。
再次，为了模拟实录听感或者追求大气厚重的声音，
我们经常需要结合不同的音源来取长补短。
综合下来，统一设置很费时费力。

当然，你可以反驳说音源不需要再次设置，安装完直接用即可。
我之前也是这么想的，在浪费掉几百个小时后发现这方式不可取。
主要原因是，虽然开盖即用可以马上输出音乐内容，
但当你开始要求一些细节的时候就需要反复翻说明书查控制器设置、
校准输出音量、
尝试音源搭配、
平衡不同音源的麦克风音色差、
甚至需要模拟麦克风拾音及房间声。
这些额外但又必要的劳动会让音乐制作职业难乎为继。

有什么解决办法么？

有。花点时间做一个模板来减少实际工作中的干扰。

其实为虚拟乐团搭建一个大型模板已经成为业内的常规操作了。
这个模板会包含可能使用到的所有音源所有技法，
系统的命名方案，
用颜色区分的乐器组，
预配置的效果器和轨道路由，
以及各种意想不到的预设功能。

举个REAPER适用的例子：

[storyteller的REAPER管弦超级大模板](http://otr.storyteller.im/)

实际工作流程中要么直接把这个模板保存为新工程，
然后把当前不用的轨道静音隐藏掉，
要么从模板中把需要的轨道拷到主工程内。

这种操作我称之为**单一模板法**。
它在二十年前就已成为业界标准操作了。
至今仍被许多活跃的媒体作曲家（例如Blakus和Mike Verta）所使用。
有些人甚至为他们的模板打造了硬件控制系统，*咳*汉斯季莫*咳*。

无论如何，*单一模板法*的确可以节省大量的初始配置时间，
但使用过程中反而会引入一些其他问题。

### 单一模板法的问题

单一模板法最大的问题还是他们*很大*，只不过这次指的是文件体积。

如果你是个REAPER用户，
你*应该*知道REAPER包含自动备份工程文件的功能。
鉴于丢失进度是准时交工最大的阻碍，
我把备份间隔设置为每5分钟保存一次。
![REAPER设置非录音时每五分钟备份一次](/img/Content/REAPER/preference_project_backup.png)

这么基础的功能其他DAW估计也有。

那么问题来了，如果我们将所有东西都加载进一个工程内，
BASE64字符串格式的插件设置会把工程文件撑到肥胖，
动不动就上百兆。
如果我们继续自动备份的话，
每小时产生的备份文件就需要一千多兆，
到最终工作完成时可能会上到几百个G。

因此，你可能不得不增加备份间隔、
删除相关性较弱的早期备份文件、
或者开始堆积外接硬盘。
无论如何，备份文件的使用效率会受到负面影响。

顺便说一下，使用REAPER的话倒是有个变通办法。

由于REAPER的工程文件是个文本文件，
甚至可以直接用文本编辑器打开并修改之，
我们可以用个版本控制系统(VCS)，
例如[git](https://git-scm.com/)，
来记录工程的修改历史。
但由于VCS都需要手动操作，
可能会影响工作中的专注状态，
所以稍微麻烦一点。
也许我们可以用VCS记录工程的每个节点（比如说休息的时候再操作），
期间则用自动备份功能。

变通方法讲解完毕。

回到原话题，
工程文件体积不是唯一的劣势，
更让人烦躁的是漫长的加载时间。

使用单一模板的工程需要加载所有可能用到的音源，
而且大概率是当代大型采样音源（喷火的BBC一共628GB，柏林450GB），
读取采样库的时间肯定会……略长于纯MIDI工程。
我n年前曾经做过一个需要加载30分钟的工程，
被客户要求打开修改一个音导出交活儿。
如果你的工作需要在多个工程之间来回切换的话，
你要么每次切换都得等音源加载，要么同时打开多个工程，
总之会增加不少管理难度。
那如果某个插件带着你的DAW一起崩溃……
您将免费获得每日崩溃的任务成就。

不过话说回来，做音乐制作的都是忍者，特别能忍。
很多不愉快的功能和工作流程都是忍过去的。
如果你对上述的*单一模板法*抱有任何不满，
可以考虑以下两种替代品。

## 单一模板法的替代品

### 模块模板法

REAPER有这么一个功能（其他DAW可能也有），
你可以把所选的轨道，包含的媒体信息，以及轨道上的插件保存成一个**轨道模板**。
轨道模板列表直接显示在右键菜单中，
点击添加进当前工程，
能省略掉打开整个大模板的时间。

此外REAPER还有个插件链模板的功能，
可以把单个轨道的多个插件及它们的当前设置保存成模板，
使其可以更方便地导入批量插入至单个或多个轨道或媒体块儿。

合理使用这两个功能就可以将那种巨大的单一模板分解成模块，
仅使用当前工程需要的部分。

举个例子，
假设我们想要把一个弦乐组保存成模板。
与其保存成一个大模板，
不如把它拆成以下三个组件：

1. 分组容器。
   我们可以充分利用REAPER的文件夹轨来对每个乐器组进行分类管理，
   即：小提琴I、小提琴II、中提琴、大提琴、低音提琴。
   可选搭配Airwindows的Console系列或者总线压缩等相关的效果器。
   然后仅保存这些母轨道为一个模板。
2. 音源。
   第二组模板仅保存加载着MIDI效果器和音源插件（例如Kontakt）的轨道，
   并且最好是以制造商、技法或任何你觉得能区分的元素来分类。
   拆细一点，
   尽量保证加载模板后不需要再删除轨道，
   以节省加载时间。
3. 音频效果器。
   有时可能为了让不同音源更融合或者专门调出某种音色会加一些EQ、压缩、甚至模拟染色失真等效果，
   而这些效果又不是每次都会添加。
   所以这些应该另保存成单独的插件模板。

当然，你完全可以按你的需求自由地组合以上三个组件，打包成套装。

个人觉得一套简单的模块模板是必备的，至少可以应付常规的独立工程。
如果你正在为大型媒体（电视剧、电影、游戏等）配乐的话，
模块模板的弊端就会浮现出来。

它维护起来太困难了。

维护在这里指的是对模板进行修改。
独立工程通常工作周期比较短，
曲目之间没有太多相关性，
所以几乎不需要修改模板。
任何修改直接在工程内完成，
保存后就可以无视了。

配乐类的工作通常前后音色统一性要求更高，
反复修改的次数也会更多一点。
把不同曲目保存成分工程的话修改起来太麻烦，
所以通常会用一个大工程做所有配乐，
然后又变成了个单一模板，
会有之前提过的问题。

对此我提议可以考虑使用音源服务器。

### 音源服务器

音源服务器指的是**一个专为加载音源而开的REAPER窗口**。
这个REAPER仅用来把接收到的MIDI信息，
经过音源和效果器后，
转成音频信号并发送给主REAPER窗口或者其他DAW。

有点像个免费版的[Vienna Ensemble Pro](https://www.vsl.co.at/en/Vienna_Software_Package/Vienna_Ensemble_Pro)。

可以搭建这种服务器的软件也许有很多，
不只是REAPER，
只要能接收多MIDI输入设备、内部路由信号、
并且可输出至多通道跳线虚拟声卡的插件宿主都可以使用。
不过我没亲自测试过不敢乱推荐。

这个方法解决了单一模板法的两大问题。

首先，你的服务器与你的工程是分开的，
所以仅需要备份工程而不需要备份服务器加载的模板。
而且由于你的工程内仅剩MIDI数据（和音频数据），
去除了音源相关的插件预设信息，
所以工程文件也会较小，
可以更频繁地备份起来。

其次，你现在所有工程音源都挂在这个服务器上，
所以每次开机仅需要加载一次音源。
同时由于你的主要工作都回归到MIDI上，
所有配置都可以靠MIDI完成，
而插件崩溃的最大凶手主要是图形界面，
使用这个模板会降低崩溃重启的机率。

它本质上是单一模板法去掉了上述缺点。
同时也避免了模块模板的缺点－对模板进行的任何改动会立即反馈至所有相关工程中。

不过这个模板倒是有一个不理想的地方：
对机器性能要求比较高。

如果你有台服务器级别的电脑，高频多核，能同时跑动你所有使用到的音源，
那么这个服务器对你完全没压力。

反而如果你的编曲电脑并没有那么高端，带不起来你的模板的话，
用服务器渲染所有音源会让你电脑爆炸。

【手动狗头

爆音。
CPU不够用嘛。
而且用服务器必须得在线渲染，
不能离线渲染，
所以播放时出现爆音卡壳之类的情况也会反映在渲染出来的音频里。

像我这种离线渲染经常降到0.1倍速的就废了。

## 总结

我所知道的建立音源相关模板的方法就以上三种。
如果你知道什么更优解的话，欢迎留言。
如果你想了解如何搭建自己的音源服务器的话，
点赞、关注、转发三连走起来。