+++
author = "RCJacH"
date = "2016-07-27"
tags = ["音乐制作","REAPER","JSFX","脚本","MIDI"]
title = "Reaper JSFX: Maschine式音符重复器"
categories = ["脚本&模板"]
description = "这个JS脚本能按着节拍长度来重复触发MIDI音符。"
+++

[下载MIDI Note Beat Repeater](https://raw.githubusercontent.com/RCJacH/ReaperScript/master/JSFX/MIDI/midi_note_beat_repeater) 然后放到资源文件目录下的Effects文件夹中。

[官网下载地址](http://stash.reaper.fm/v/28130/midi_note_repeater_maschine_style)

[官网论坛地址](http://forum.cockos.com/showthread.php?t=179586)

[RCJacH的ReaPack Repository包含REAPER Daw使用的Lua和JS脚本与效果器](https://github.com/RCJacH/ReaScripts/raw/master/index.xml)

## 更新：
<div class="whatsnew">
  <p>* v1.1 (2016-10-09)</p>
  <div class = "update-list">
    <p>+ 改名</p>
    <p>+ 音符长度</p>
    <p>+ 对齐格子</p>
    <p># 修改了音符准确性</p>
  </div>
</div>

## 说明：

  这个脚本是用来模拟N.I.公司Maschine硬件上的Note Repeat(音符重复）功能的。我没用过硬件，所以可能在用法会有一些出入。但通过一些视频我发现这个功能在做HiHat方面很优秀，所以做了个脚本模拟一下。

## 使用方法如下：

  这个脚本可以以两种方法使用：

  1. 作为轨道的输入FX。为所有的参数设置CC控制器，在第四个参数（开关）开启的状态下在你的MIDI键盘上按住一个（或多个）音，这个音就会以第一个参数（Rate）所设置的时值重复触发所按下的音符。第二个参数（Type）决定所选时值是普通、三连音还是附点音符。

  2. 作为普通FX插入轨道，排序至你的乐器之前。在钢琴卷帘中画出要出发的音符，用包络来控制参数。你也可以添加第二轨，用它录下第一轨的MIDI输出而得来实际重复的音符。这样你可以更细腻地去修改所生成的片段。

  用Normal Type Lock参数（第三个）来做Drill类型的片段非常轻松。你可以试试把它设置成1/8，Type设置成Triplet，然后通过改变Rate来做出加花式的8分音符、16分音符、甚至32分音符三连音。这个参数能让你节省很多反复调节交替正常和三连音的时间。

  Channel Pressure，通道触后，可以用来改变重复音符的力度：输出力度 = 通道触后。

看图。

### 输入：

![一个长音与动态的触后信息](https://cloud.githubusercontent.com/assets/12930244/17081975/c1074f60-519e-11e6-86e3-c11e749d10b1.png)

### 过程：

![通过MIDI Note Beat Repeater渲染出新的MIDI信息，并通过包络画出Rate的变化](https://cloud.githubusercontent.com/assets/12930244/17081976/c108a586-519e-11e6-81b3-a81428b4c834.gif)

### 输出：

![新MIDI的重复音符频率根据Rate决定，其力度则按着输入的触后强度决定](https://cloud.githubusercontent.com/assets/12930244/17081974/c105fec6-519e-11e6-8ea1-5b1ff5e34710.png)