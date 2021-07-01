+++
author = "RCJacH"
title =  "REAPER网格"
description = "图文讲解如何使用REAPER网格系统，新手和高手。"
date = "2016-11-06"
tags = ["音乐制作","REAPER","MIDI","节奏"]
categories = ["音乐制作"]
+++

当我们在创作任何非散拍音乐的时候，通常需要让音符或音频在某些程度上对齐节拍的细分（subdivision）来保证节奏的稳定性。这个时候，在DAW里，我们所用到的是节拍网格（Grid）。

它长这个样子

![REAPER网格设置为1/4](https://cloud.githubusercontent.com/assets/12930244/20035010/8eab9bf8-a40e-11e6-92fc-80b06c3da04c.png)

或者这个样子

![REAPER网格设置为1/16](https://cloud.githubusercontent.com/assets/12930244/20035012/8eb66d9e-a40e-11e6-9aa7-d646d4defe37.png)

我们通常会把网格设置成常用的音符长度，例如八分音符、十六分音符等二的倍数(2 * 2^n)，或者三连音的倍数(3 * 2^n)。可是当我们需要稍微不常见的(例如五连音、七连音、九连音)或者不规则的细分时，这些选项就不太够用了。

 

作为REAPER用户，我们在这块儿还是比较幸运啦，因为REAPER网格不是固定的选项而是直接提取用户输入。这样我们则不需要局限于传统固定的格子，反而可以尝试一些不寻常的搭配。

 

首先，REAPER的格子设置可以分别在这两个地方找到。

MIDI界面的底端

![MIDI编辑器底端Grid选项](https://cloud.githubusercontent.com/assets/12930244/20035014/8edc264c-a40e-11e6-8b63-20808f5474c2.png)

以及主界面的吸附/格子设置（Snap/Grid Settings）

![Snap/Grid Settings截图](https://cloud.githubusercontent.com/assets/12930244/20035013/8ed871b4-a40e-11e6-80a0-8c05f284b949.png)


我们可以在这个设置中直接输入所需的分数来设置网格的规模。

算法则是：**网格大小 = 全音符 / 分母 * 分子**

注：全音符是四个四分音符，所以如果用非4/4的节奏谱号可能会比较难理解。

注2：每个小节重新开始计算。

 

通过简单的计算我们就可以得出

全音符九连音 = 1/9

![REAPER网格设置为1/9, 把一小节四拍平均分成九份](https://cloud.githubusercontent.com/assets/12930244/20035008/8ea5e79e-a40e-11e6-9a3b-b9e840c200f3.png)

四分音符七连音 = 1/(7*4)=1/28

![REAPER网格设置为1/28，把一小节四拍每拍平均分成七份](https://cloud.githubusercontent.com/assets/12930244/20035007/8ea55108-a40e-11e6-8ebc-f40216cff3c7.png) 

或者试一试不规律的组合，例如

5/27

![REAPER网格设置为5/27，把一小节分成五又2/5份](https://cloud.githubusercontent.com/assets/12930244/20035011/8eab9acc-a40e-11e6-95a9-ad168d81eacf.png)

此外，利用这种设置可以开启比较不寻常的节奏分解，例如把三拍分成五个音

3/20

![REAPER网格设置为3/20，把小节前三拍平均分成五份](https://cloud.githubusercontent.com/assets/12930244/20035009/8eab5ed6-a40e-11e6-88fc-3bb7b45e5c21.png)
 

我用不同组合的五连音做了个短Demo。

<iframe frameborder="no" border="0" marginwidth="0" marginheight="0" width=330 height=86 src="//music.163.com/outchain/player?type=3&id=795906323&auto=0&height=66"></iframe>