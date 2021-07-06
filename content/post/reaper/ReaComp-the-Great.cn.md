+++
author = "RCJacH"
title =  "ReaComp到底有多强大？Pro Tools用户哭了。"
description = "图文介绍REAPER自带的ReaComp压缩神器。"
date = "2016-03-10"
tags = ["音乐制作", "REAPER","录音","混音"]
categories = ["音乐制作"]
+++


在音频处理方面，压缩一词经常被捧上天。尤其是对听感的音量变化还不是很敏感的那些初学者们，会觉得压缩处理好像是一个非常神秘的步骤。其实压缩器的性质与手动调音量一样- 衰减音量大的部分并提升音量小的部分 – 只不过压缩比手动画音量能在更短的时间内做出反应与相对措施。那么他对音频具体有什么影响呢？我们来通过Reaper自带的ReaComp来观察一下。

 

ReaComp的界面的确不是最华丽的，但麻雀虽小五脏俱全：

![ReaComp界面](https://cloud.githubusercontent.com/assets/12930244/13662756/d9bd47da-e6d7-11e5-85fe-ac17679c2b0c.png)

 

音频信号压缩的原理是把输入信号分成两份，一份通过压缩本身的信号处理，而另一份则被用于检测衡量信号。这两份信号都可以在ReaComp内进行一定程度的处理来达到所需的效果。我们用图来解释一下ReaComp内的参数分别是什么。

假设我们输入的音频是这个样子，中间有一段音量突出的片段。

![一段突然增益的正弦波](https://cloud.githubusercontent.com/assets/12930244/13662760/d9d644c4-e6d7-11e5-94ac-c5040f25cea4.JPG)

<br> 

如果我们想用压缩来控制这个片段的话，我们需要调四个参数。最重要的两个是ReaComp**左侧的阈值 (Threshold)**以及正中央的**压缩比例 (Ratio)**。当输入音频音量高于阈值时，会按着所设置的Ratio对高出的范围进行**衰减 (GR = Gain Reduction)**。例，当输入音量比阈值高出4dB而Ratio为4:1时，超出阈值的片段会衰减至所超出范围的四分之一，输出音量则会比阈值高出1dB。

剩下的Attack和Release两个参数是用来控制衰减行为的时间b。**Attack**参数决定了音频**从高于阈值那一刻起到最高衰减所需要的时间**，而**Release**决定了在**音频低于阈值后衰减恢复到0dB的时间**。我们看一下这张图可能会更容易理解，图中的压缩比例为无限:1，也就是说GR会把超出音量降至阈值。

![基础压缩示范](https://cloud.githubusercontent.com/assets/12930244/13662763/dc42aa5e-e6d7-11e5-92d2-c9b279783340.JPG)

<br>

Class Attack选项会改变Attack的曲线，让音头衰减更慢一点，如图:

![ReaComp开启Classic Attack参数的示范](https://cloud.githubusercontent.com/assets/12930244/13662762/dadbd12c-e6d7-11e5-9ea4-e6b9c36057ae.JPG)

<br> 

Auto Release选项是根据GR程度来计算是否需要**延长Release的时间**。假设我们在压缩军鼓时选择了Auto Release。如果GR是3dB，那么ReaComp会采取Release设置的x微秒；如果GR达到了20dB，Auto Release选项会让Release时间超出x，让Release时间变长。可惜的是，这样的设置在听觉上不是很舒服。许多模拟压缩所采取的Auto Release是根据GR时间长度来决定Release时间，也就是说在军鼓上衰减5dB与在贝斯上衰减5dB所造成的Release时长是不一样的。期待ReaComp能在未来的哪天实现这个功能。

 

在Ratio下方有一个Knee Size参数，他决定了GR与Threshold的关系。什么意思呢？想象一下，我们录过的主人声。有一些句子唱的很轻，一些句子音量稍微高一点，而副歌的时候音量会非常大。这个时候使用同一个阈值与压缩比例显然不是很合适。为什么呢？因为如果我们把阈值设置成仅仅低于副歌部分，那么前面的句子就不会被影响；而如果我们需要压缩所有信号，可能Ratio不会让副歌的音量衰减到平均范围，或者会让主歌部分压缩太多。这个时候，我们可以通过**Knee Size来让GR变得更圆滑**，让信号在Threshold前后Knee/2的范围内都有着不同比例的压缩。如图。

无压缩

![阈值 = 0dB，压缩比例 = 1:1，Knee = 0dB](https://cloud.githubusercontent.com/assets/12930244/13662753/d952a614-e6d7-11e5-97da-29f96a8a29a9.jpg)

Hard Knee

![阈值 = -20dB，压缩比例 = 4:1，Knee = 0dB](https://cloud.githubusercontent.com/assets/12930244/13662752/d91c6af4-e6d7-11e5-8c54-5b694588bb2f.jpg)  

Soft Knee

![阈值 = -20dB，压缩比例 = 4:1，Knee = 16dB](https://cloud.githubusercontent.com/assets/12930244/13662758/d9d2c5b0-e6d7-11e5-9537-1f49d98d3298.jpg)

<br>

Knee Size 之下的Detector input决定了检测信号的识别方式。可选项为双声道、单声道左/右、侧链双声道以及单声道（通过Channel 3 - 4的信号来激发对Channel 1 - 2的压缩）、以及Feedback (通过输出信号来激发压缩，让压缩稍微更圆润一点)。我们可以根据压缩的不同目的来选择不同识别方式，具体会在今后的文章中介绍。

<br>

再往下的两个参数分别是低通（Low Pass）与高通 (High Pass)，这个是用来调节检测信号的频段。假设我们的输入音频是一个低频比较重的木吉他，而他的低频与高频动态不是很平均的话，当低频超过了阈值，它就会触发我们不想要的衰减。这个时候如果我们把High Pass调到高于这个低频的频段，就可以让压缩只根据高频的动态来对整个信号进行适应的衰减。另一种用法是把两个参数调成齿音的频段，可以当成一个De-Esser用了。

<br>

好吧，我承认以上的参数一般压缩插件也都有（虽然调制范围有不同），并不会让ReaComp显得多么独特。但不用怕，接下来的两个参数正是ReaComp的杀手锏，那就是RMS Size和Pre-Comp。

RMS是什么？RMS，Root Mean-Square，简单来说就是一段时间的平均值。当RMS为0的时候，检测的动态为**瞬间峰值的音量**，也就是很多其他压缩插件的Peak Mode。如果我们把RMS调成10ms，算法会以10ms为单位检测这段时间的平均值来判断是否需要压缩，这样我们能让衰减更圆滑一点。ReaComp的RMS最高可以调到1000ms，也就是一秒。如果能调到5分钟的话差不多能直接自动做母带压缩了呵呵。

![RMS Size示范](https://cloud.githubusercontent.com/assets/12930244/13662754/d9bbc482-e6d7-11e5-91ec-60829bd7148a.JPG)

Pre-Comp算法相对更复杂一点，但我们目前可以把他看成信号检测预留时间。例如，当我们有一个特别短的音头需要压缩掉的时候，把Attack调成0（这是模拟压缩做不到的一点）则会造成一定程度的失真（因为音频采样需要从某个点瞬间移动到另一个点）。针对这个现象，我们可以调Pre-Comp，让插件在处理音头之前就已经开始进行衰减了，这样当我们处理到音头的时候就不会造成突然地失真。效果如下图：

![Pre-Comp示范](https://cloud.githubusercontent.com/assets/12930244/13662757/d9c0bc44-e6d7-11e5-90c7-d03a31358868.JPG)

<br>

注意，因为使用Pre-Comp需要让插件提前识别之后的音频，会增加宿主的延迟，所以可能这个工具更适合后期混音而非现场演奏、录音。

<br>

好了，我们把ReaComp中大部分参数意义复习了一遍，也该讲一讲它的神奇之处了。这个技巧最先由Cockos论坛会员[ashcat_lt](http://forum.cockos.com/showpost.php?p=1487927&postcount=4)提出，准备好颠覆我们对压缩的概念吧。

<br>

我们知道RMS是截取一个段落的平均值，我们又知道Pre-Comp能让插件“预知”一段时间的音量。那么如果我们**把Pre-Comp设置成RMS的一半**左右，我们处理的则是一个峰值与它前后一段时间的平均值。这样等于音量会自然地在峰值之前衰减，而在峰值之后恢复。同时，因为Attack和Release已经包含在整个程序内了，我们不需要额外地添加Attack和Release。峰值的音头形状可能稍微取决于RMS与Pre-Comp * 2之差。利用这个方法，我们可以把Knee Size和Threshold调到比平常高一点的位置，让输入音频一直保持Knee中间的状态，GR大概保持在1.5dB以下就好了。这个压缩技术的效果就是在保留音头的情况下非常自然地降低了动态范围，甚至根本听不出来压缩的痕迹!

操作起来很简单，你只需要如下图这样设置，然后根据你的输入及目的来调制红色框内的Threshold、Ratio、与Knee Size(其实都可以不动)。

![Half RMS技巧设置参数](https://cloud.githubusercontent.com/assets/12930244/13662755/d9bc2896-e6d7-11e5-9baa-5b25e3bcb91e.png)

<br>

我还做了一个[ReaComp预设](https://github.com/RCJacH/BlogImages/files/166703/HalfRMSComp.zip)，并把Ratio和Knee size通过Automation Modulation与Pre-Comp连到了一起，这样你的Pre-Comp时间越长GR越圆滑，反而如果Pre-Comp很短的话GR也会更猛一点。用这个预设你只需要调制Threshold和Pre-Comp，然后把RMS调到Pre-Comp的两倍左右就可以坐等奇迹了！使用方法：把zip文件解压缩至[资源文件目录]({{< ref "Resource-Folder.cn.md" >}})的FXChain下面，然后在你的FX列表内FX菜单里选择Add FXChain，之后双击加载这个预设文件就好了。

<br>

Pro Tools和Mac的用户有没有心动？其实你们也可以用任何可调制Pre-Comp/Lookahead与RMS值的压缩插件来达到这个效果，例如[Klanghelm的DC8C](http://klanghelm.com/DC8C.php)。只可惜它的RMS最高限制是100 ms，更何况ReaComp是免费的呢。