+++
author = "RCJacH"
title =  "你还在画CC吗？其实Reaper这么用更强大！"
description = "用这个可以代替REAPER里不便修改的CC功能。"
date = "2016-03-10"
tags = ["音乐制作","REAPER","MIDI","工作效率"]
categories = ["音乐制作"]
+++
许多人对Reaper自带的MIDI Control Change(MIDI CC控制器)功能很不满。可以理解，Reaper在MIDI CC这一块儿缺少了很多其他DAW特征性的功能，比如说Logic与AbletonLive的曲线功能，Cubase的Expression Map，Studio One的各种LFO形状的画笔等等。

虽然目前有一些能提高CC效率的工具，例如这款[MIDI Velocity/CC Tool](http://stash.reaper.fm/20029/MIDI%20velocity%20tool.zip)。

![动图示范如何用MIDI Velocity/CC Tool来修改MIDI CC信息](https://cloud.githubusercontent.com/assets/12930244/13280578/d51a8928-db19-11e5-8820-1d171a50e222.gif)

但他们治标不治本，无法大幅度提升编曲效率。尤其当我们做吉他

![几小节的吉他MIDI加上4个CC](https://user-images.githubusercontent.com/12930244/28321427-d635a9e0-6c05-11e7-9790-431d39fddc11.png)


做弦乐

![小提琴MIDI加上两个CC](https://user-images.githubusercontent.com/12930244/28321436-d6ac0d60-6c05-11e7-8679-8b056c58fec5.png)


弦乐组

![四部提琴组加上不知道多少个CC了](https://user-images.githubusercontent.com/12930244/28321439-d6bfc558-6c05-11e7-9226-1e6b04710563.png)


或任何需要画大量CC表情控制器的时候，这些工具所能给予的帮助实在是少得可怜。

<br>

再加上一个技术性的原因：Reaper**工程文件是可以当成文本文件直接打开并修改的**！我们可以用文本编辑器把某个插件段落的代码删掉，来挽救一个持续崩溃的工程。懂行的朋友还可以用GIT来监测工程版本，是一个很方便的功能。但我们开始画CC的时候会发现，因为每一个点都会明确记载，所以工程文件会变得无比巨大，轨道稍微多一点的工程体积会上到__几十兆甚至一百多兆__。如果你还开启了定时文件备份的功能（比如说每15分钟备份至新文件），你会在几小时之后发现硬盘空间少了好几个G！这真是一个迫使你去换新固态硬盘的好办法…

<br>

而参数包络在Reaper里反而更受到重视，不仅可以使用曲线，也有很厉害的脚本插件，比如说这款[Envelope Point Generator](http://forum.cockos.com/showthread.php?t=153348)

![Envelope Point Generator](http://i.imgur.com/xjxyQeJ.gif)

<br>

所以，我下了一个决定：**用包络来代替CC**！用包络来画曲线不仅减少了工程文件大小，也能让修改的时候变得很轻松（时间和位置只需拖拉一个点，而不需要每一个CC信息都细修）。

那么这个怎么做到的呢？有以下两种方法。

 

## 一，用ReaControlMIDI来控制CC参数。

 

Reaper自带的ReaControlMIDI长这个样子: 

![把ReaControlMIDI下方Control Change中的Enable选框点中](https://user-images.githubusercontent.com/12930244/28321437-d6acd93e-6c05-11e7-81b3-f7e175d30270.png)

而我们需要用的是红色方框内的功能。首先先点击橙色箭头指向的Enable选项来开启这个功能，用右边的RawMode来开启传统128位的CC系统，然后用下方的菜单来选择需要控制的CC参数，最常见的估计是CC1（力度/颤音深度），弯音轮，与CC11（表情/音量）。

![ReaControlMIDI下方Control Change的默认设置](https://user-images.githubusercontent.com/12930244/28321434-d68b3900-6c05-11e7-97d2-f5e3e9596fef.png)

记得把它排列在音源前面。

![把ReaControlMIDI放在音源之前](https://user-images.githubusercontent.com/12930244/28321435-d6a0183e-6c05-11e7-94a9-fa807161480c.png)


这个时候我们点击轨道上的trim标签

![轨道控制板上的Trim按钮](https://user-images.githubusercontent.com/12930244/28321430-d664b85c-6c05-11e7-8bee-08b4ed7c74c0.png)

来打开包络设置。

![ReaControlMIDI的包络列表](https://user-images.githubusercontent.com/12930244/28321425-d62db028-6c05-11e7-8160-cf35dd8b048a.png)

我们能看到ReaControlMIDI所有可以操作的参数，其中包含CC1、PW、和CC11。我们只需点击红色圈内的选框就能把包络当成CC来画啦！

<br>

## 二，使用音源参数

当我们把上一个小节的方法运用到音源参数的时候，会比通过ReaControlMIDI中转成CC更直接。我们可以直接控制任何音源所有可以操作的外部参数，例如这款免费合成器Helm所包含的一部分参数:

![免费合成器Helm的部分参数包络](https://user-images.githubusercontent.com/12930244/28321428-d653171e-6c05-11e7-9678-2a91ec2d5867.png)

Reaper版本5.1开始支持用MIDI CC来直接控制参数，不需要经过ReaControlMIDI，如图。

![通过Param -> MIDI Link -> CC 来直接控制Helm合成器参数](https://cloud.githubusercontent.com/assets/12930244/13278628/cfdf93a2-db0c-11e5-93f9-b7252196be1f.gif)

注释：选择一个可控制的参数，通过选择Param -> MIDI Link  -> CC -> 我们需要的控制器编号。图中使用的JS只是模拟CC 1的输入。

<br>

如果想利用插件（如JS脚本或序列器）在原MIDI基础上添加新信息的话，只需要右键插件输入输出选项，在MIDI output菜单里选择Merges with MIDI bus（感谢Tee先生的补充），如图：

![MIDI Output菜单里选择Merges with MIDI bus](https://cloud.githubusercontent.com/assets/12930244/13278844/8c897eae-db0e-11e5-84e5-a5d78e3dea8f.gif)

<br>


当然，我们在编曲时使用CC最多的恐怕是Kontakt内的采样音源。我们可以通过Auto一栏的Host Automation（宿主自动化）来设置。

![Kontakt中Host Automation位置](https://user-images.githubusercontent.com/12930244/28321432-d66cb480-6c05-11e7-9e70-031141d31a33.png)


有一些音源，尤其是Native Instruments自家的音源，已经给你设置好了，比如说这款Granduer钢琴。

![The Granduer默认宿主自动化设置](https://user-images.githubusercontent.com/12930244/28321426-d62ef776-6c05-11e7-8c38-ab36b73ee83f.png)


这种音源你可以马上用起来！比如在钢琴轨上通过修改”Color”、”Transient”、“Tonal Depth”三个包络，让音源在不同段落包含着不同的音色与音头强度，比后期压缩要更有针对性。

<br>

对于非NI本厂的音源来说，很遗憾，我们没有办法享受到已调制好的预设。所以需要自己动手，做一次最初的设置，然后保存为乐器模板。方法如下:

<br>

首先加载音源，例如Orange Tree Samples公司出品的Strawberry吉他，然后把Host里任何一栏拖拉到需要调制的参数上。如果这个参数是可以通过外部调制的（按钮与旋钮），鼠标箭头会变成一个带有加号的箭头，否则说明此参数不能被外部控制（下拉菜单）。

![把Host里任何一栏拖拉到需要调制的参数上](https://cloud.githubusercontent.com/assets/12930244/13278216/ce0c0cb6-db09-11e5-994e-2175eb68708a.gif)

稍微花一点时间把所有参数都设置成宿主自动化吧，必要的话可以用Param菜单的Alias Parameter功能为某个包络控制起一个自己能看得懂的名字。

![用Param菜单的Alias Parameter功能重命名参数](https://cloud.githubusercontent.com/assets/12930244/13278239/f817dc42-db09-11e5-9c23-0d9724428d28.gif)

当我们把每一个常用参数都设置成一个宿主自动化之后，就可以随心所欲的画曲线了！像下面这一轨电吉他    

![8小节吉他加上10个CC](https://user-images.githubusercontent.com/12930244/28321424-d61febbe-6c05-11e7-84f5-2710192edef5.png)


记得右键轨道选择Save tracks as track template来把设置好的选项保存为轨道模板噢！

<br>

因编曲需要，我已经设置好了几个Kontakt乐器的配置，并为每个参数设置了英文名称。有兴趣的朋友可以随意下载使用。

[Sample Modeling Kontakt铜管音源](https://github.com/RCJacH/BlogImages/files/144171/Sample.Modeling.Kontakt.zip)，包含小号x4、长号x4、圆号x4。

NI最新[Symphonic Series String Ensemble弦乐音源组](https://github.com/RCJacH/BlogImages/files/144172/SSSE.Strings.zip)，同时加载小提I、小提II、中提、大提、低音提琴。

文章内提到的[Strawberry 电吉他音源](https://github.com/RCJacH/BlogImages/files/144175/EG.Strawberry.zip)，因为扫弦相关的原因使用了老版本与个人写扫弦范围的JS，以后会单独介绍。

Vir2公司Acou6tics中的[尼龙弦吉他音源](https://github.com/RCJacH/BlogImages/files/144174/AG.Nylon.zip)，可以做非常细腻的尼龙弦吉他伴奏。

解压后放在[资源文件目录]({{< ref "Resource-Folder.cn.md" >}})的TrackTemplates文件夹内就可以在Reaper里通过右键的Insert track from template选项加载了。