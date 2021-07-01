+++
author = "RCJacH"
date = "2016-07-24"
tags = ["Music Production", "REAPER", "JSFX", "Script", "MIDI"]
title = "REAPER JS: MIDI Note Beat Repeater"
categories = ["Scripts & Templates"]
description = "A REAPER JS script that repeats MIDI notes by beat length"
+++

[Download MIDI Note Beat Repeater JSFX](https://raw.githubusercontent.com/RCJacH/ReaperScript/master/JSFX/MIDI/midi_note_beat_repeater) and put it somewhere within the Effects folder of your Reaper Resources Path.

## Update:

<div class="whatsnew">
  <p>* v1.1 (2016-10-09)</p>
  <div class = "update-list">
    <p>+ Renamed</p>
    <p>+ Added Gate Function (Note Length)</p>
    <p>+ Added Sync to grid function</p>
    <p># Fixed Note On accuracy</p>
  </div>
</div>

## Description:

  This script is made to emulate the note repeating function in Native Instrument Maschine hardware.

  I have never used Maschine myself, thus I do not know how it really works.

  However, I did watch some video that demonstrated great workflow for inputting hihat patterns.



## How to use:

  You can use this script in two ways:

  1. Insert as an input FX of your track. Assign MIDI CCs to all of the 4 parameters, trigger slider4 and press a note, the pressed note will repeat itself at an interval set using slider1(Rate), while slider2(Type) determines the type of rhythm it generates.

  2. Insert as a normal FX before your sampler. Write the trigger note for the desired sample, and use envelop to control the parameters. You can even insert another track and record MIDI output of the original track, which allows you to edit the generated pattern.

  The Normal Type Lock slider(3) is great for drill type patterns where you have a steady 8th note groove with occasional 8th or 16th note triplet variations. This setting will free you from alternating the type slider from triplet to normal constantly.

  Channel Pressure is used to vary the velocity of repeated notes: output Velocity = Channel Pressure.



Input:

![Input MIDI with a long C3 note, and continuously changing Channel Pressure](https://cloud.githubusercontent.com/assets/12930244/17081975/c1074f60-519e-11e6-86e3-c11e749d10b1.png)

Process:

![Using MIDI Note Beat Repeater with occasional change of Rate](https://cloud.githubusercontent.com/assets/12930244/17081976/c108a586-519e-11e6-81b3-a81428b4c834.gif)

Output:

![A new MIDI clip consisting notes with position and length from Rate and velocity from Channel Pressure](https://cloud.githubusercontent.com/assets/12930244/17081974/c105fec6-519e-11e6-8ea1-5b1ff5e34710.png)