+++
author = "RCJacH"
title =  "REAPER Signal Flow"
description = "Diagram showing the signal flow of REAPER"
date = "2017-06-23"
tags = ["Music Production", "REAPER", "MIDI","Recording","Mixing"]
categories = ["Music Production"]
alias = ["/blog/reaper-signal-flow/"]
+++

What is signal flow?

For our interest in digital audio production, signal flow is how signal data, either audio or MIDI, travel through various stages of the DAW calculation.

Because of the potential complexity of our routing, from something as simple as building a send track to something more abstract such as designing modular synth or multi-track template with parameter modulations, to have a clear mental picture of the signal flow, it would be quite beneficial to know what stages and in what order our signals are going through within the DAW.

<br>

So I made a diagram to demonstrate this.

![REAPER Signal Flow Simplified](https://user-images.githubusercontent.com/12930244/27482740-39ed437c-5855-11e7-9a39-1653e57a6d8d.png)

Excluding the analog input and output stages, there are only 4 stages: **Take**, **Item**, **Track**, and **Master**. Each stage behaves in an identical way in terms of summing audio, their main difference is the scope of usage.

<br>

Here's a more thorough graph with envelopes.

![REAPER Signal Flow with volume, sends, and envelopes](https://user-images.githubusercontent.com/12930244/27483019-42944a2e-5856-11e7-9559-9bed228d78ea.png)

<br>

Few things to consider

+ We know that REAPER has only one type of tracks that can do many things.

+ For sends, the signal is pass to the receiving track in the same way item signals are passed to the containing track.

+ Folder tracks are like mini-master tracks, summing all signals of its children before processing.

+ Audio/MIDI channels are simply parallel routings within a path.

+ Audio is summed per input channel.

+ Volume Fader works parellel alongside Trim Volume and Volume envelope, providing potentially three layers of volume adjustment on the same spot for easy access.

+ Monitor FX are bypassed for rendering

