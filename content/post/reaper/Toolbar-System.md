+++
author = "RCJacH"
title =  "REAPER Toolbar System"
description = "An interesting and efficient way of using REAPER's customizable toolbars."
date = "2016-09-22"
tags = ["Music Production", "REAPER","Workflow"]
categories = ["Music Production"]
alias = ["/blog/reaper-toolbar-system/"]
+++

I recently discovered an interesting and efficient way of using Reaper's customizable toolbars.

<br> 

In other DAWs, the toolbars would remain stagnant throughout the sessions, and the only change you can apply to them would be either to move them or hide them.

In Reaper, since we are lucky enough to have many customizable toolbars available, while able to customize our toolbars with any action, it wouldn't take long before our screen becomes like this

![A REAPER theme screenshot that may consist of too many toolbars](http://stash.reaper.fm/28381/Main%20Toolbars%20%28All%29%201.png)

Some people may find it necessary when working on bigger projects, it does take more time browsing through each icon to find what we really need.

What if we can use one panel for multiple toolbars, and link them into a system of toolbars?

<br>

This is what I have right now,

![A gif showing how toolbars can be connected together](https://cloud.githubusercontent.com/assets/12930244/18745748/12c15ab8-80f6-11e6-829c-d64e81bdedc2.gif)


<br>

As a reference, here's how my toolbar system works.

I have two levels of toolbars for each of the main sequencer and MIDI PianoRoll.

At the top level, I have a strip of actions serving two purposes. One is to trigger events that are session based, such as resetting MIDI devices, opening various expansion windows (sws auto-color menu, or heda's Note Reader). The second purpose is to serve as a status displaying device, showing things such as metronome clicks, pre-roll, snap to grid, relative snap, envelope follow items, which I trigger with key shortcuts.

![Main Toolbar with project scope actions, such as switching grid size and opening various windows](https://cloud.githubusercontent.com/assets/12930244/18745750/12c407d6-80f6-11e6-8191-d063e0efb872.png)

The side toolbar consists of common triggering actions separated into five groups.

### Track

![A list of track scope actions](https://cloud.githubusercontent.com/assets/12930244/18745755/12e9c8b8-80f6-11e6-96ea-986fba577edb.png)

### Item

![A list of item scope actions](https://cloud.githubusercontent.com/assets/12930244/18745747/12b5e552-80f6-11e6-8dd7-9e2138e2d279.png)

### Audio

![A list of audio scope actions](https://cloud.githubusercontent.com/assets/12930244/18745742/1298a82a-80f6-11e6-92c2-1e823ed48132.png)

### Envelope

![A list of envelope scope actions](https://cloud.githubusercontent.com/assets/12930244/18745744/129ee776-80f6-11e6-8d5f-5c100669f38b.png)

### FX

![A list of actions related to track FX and input FX](https://cloud.githubusercontent.com/assets/12930244/18745744/129ee776-80f6-11e6-8d5f-5c100669f38b.png)

<br> 

The command that does the switching is this:

![Toolbars: switch to toobar n](https://cloud.githubusercontent.com/assets/12930244/18746111/237f1cda-80f8-11e6-8e7e-9dac60476a75.png)

Along with their cousins the MIDI toolbars.

So we can assign switches to 2 whatever number of sub-toolbars you need in main toolbar, then including switch to toolbar 1 on each sub-toolbars. 


Here's my toolbar in piano roll, sharing the same philosophy, squeezed into one single horizontal panel.



### Status

![A list of actions in MIDI editor](https://cloud.githubusercontent.com/assets/12930244/18745751/12c85c32-80f6-11e6-8844-b77809acbb7c.png)

### Selection

![A list of actions related to note or CC selection](https://cloud.githubusercontent.com/assets/12930244/18745753/12dd0498-80f6-11e6-9aa0-50e421d8e5ba.png)

### Notes

![A list of actions related to note manipulation](https://cloud.githubusercontent.com/assets/12930244/18745752/12d190e0-80f6-11e6-9e3d-7cfd7c1a2e72.png)

## CC

![A short list of actions related to CC messages](https://cloud.githubusercontent.com/assets/12930244/18745743/129ba0e8-80f6-11e6-8341-1ee3ca40b3a9.png)

__Yes I hate CCs__


## Chords (for quick input and voicing manipulating)

![A list of custom actions to input various root position chords](https://cloud.githubusercontent.com/assets/12930244/18745746/12acc922-80f6-11e6-806d-f3717454390d.png)

 

This is definitely not the final state, as I will be updating them regularly, keeping only the essential actions (after cleaning up my shortcuts). However, this idea does open up a new way to organize toolbars, instead of having them clutter up our valuable screen space.