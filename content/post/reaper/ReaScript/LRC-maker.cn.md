---
title: 如何在REAPER内制作LRC格式的滚动歌词
date: 2021-09-21T22:25:43+08:00
tags: 
  - reaper
  - 脚本
  - 歌词
  - 工作流程
categories:
  - 脚本&模板
description: 提示：新脚本
---

前几天我终于让[某云音乐的个人全部歌曲+1了](https://music.163.com/#/song?id=1875744708)。
为了~~摸鱼~~制作更精准的滚动歌词，我写了一个自动生成LRC的脚本。
LRC格式说白了就是每行歌词前面多一个时间位置信息。

脚本去[RCJacH的ReaPack库](https://github.com/RCJacH/ReaScripts)自取。

脚本名叫`RCJacH_Generate LRC Lyrics and Export to Clipboard.lua`。

如果你没有ReaPack，
也可以直接另保存[脚本源文件](https://raw.githubusercontent.com/RCJacH/ReaScripts/master/Lua/Various/RCJacH_Generate%20LRC%20Lyrics%20and%20Export%20to%20Clipboard.lua)。

这个脚本的使用方式如下：

1. 创建一个专门写歌词的轨道，轨道名随意。
2. 在每行歌词起始位置创建一个*MIDI块儿*，并把*Take名*改成该行歌词。
    MIDI块儿长度暂时不影响输出。
3. 如果想添加标签，可以在Take名最前面加一个`#`。
    例`#ar: 歌手`会变成`[ar: 歌手]`。
    这种标签是给播放器用的，但后来发现某云会自己生成部分标签。
4. 如果你想让两行之间有空隙，请使用一个空名的MIDI块儿。
5. *选择该歌词轨*。
6. 运行脚本。

该脚本会把这些歌词合并到一起，并拷贝结果至系统剪切板中，最后给你一个预览用的小弹窗。

看起来像这样。

![选择包含歌词的轨道并运行该脚本来生成LRC歌词](/img/Content/REAPER/LRC_demonstration.gif)

如图中示范，
你通过选择不同轨道来生成不同语言的歌词。

额，该脚本不包含翻译功能。

用了这个脚本我们就可以把歌词滚动量化到拍子上了（跟我们的音乐一样）【微笑

以上。

PS. 动图中的歌曲是[这首](https://music.163.com/#/song?id=409649602)。
