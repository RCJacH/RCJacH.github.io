+++
author = "RCJacH"
title =  "Tone Sweep - REAPER JSFX Percussion Synth"
description = "A JSFX Synth that generates a monophonic sweeping tone, used to design synth percussion sounds."
date = "2017-05-05"
tags = ["Production", "REAPER", "JSFX", "Script","Sound Design","Synth"]
categories = ["Scripts & Templates"]
alias = ["/blog/reaper-jsfx-tone-sweep/"]
+++

You can download it from here:
[Tone Sweep on Github](https://raw.githubusercontent.com/RCJacH/ReaScripts/master/JSFX/Synth/Tone%20Sweep.jsfx)

or Simply add my repository in ReaPack:

[RCJacH ReaPack Repository](https://github.com/RCJacH/ReaScripts/raw/master/index.xml)

<br>

# Description:

This synth generates a monophonic sweeping tone when receiving a MIDI note input. Intended for designing percussive sounds, such as kicks, snares, toms, or sound FXs in electronic music genres.

<br>

# Quick Instruction: 

1. Set a starting and ending note.

2. If necessary, change the Pitch Sweep Curve and length by dragging the Pitch Curve Graph, x axis for length, and y axis for curve.

3. Design the Envelope using the Envelope Graph and Drag Boxes.

4. Play.

5. Read the elaborated explanation of each parameter written below.

<br>

# Controls Types:

## All controls

Control + Click to reset value to default.

## Slider

![Slider Control](https://cloud.githubusercontent.com/assets/12930244/25745184/36c268cc-31d0-11e7-9460-e116b73764c5.png)

Click directly on to the slider to set a value or drag the knob left or right to change value. While dragging, hold Shift to fine tune by 0.01, hold Alt to fine tune by 1. Note that modifier keys must not be released before mouse click, or value will be set to the current mouse position.

## Check box

![Check Box](https://cloud.githubusercontent.com/assets/12930244/25745181/36bbcbb6-31d0-11e7-9ac6-c6d056741c04.png)

Click to change the activate or inactivate the setting.

## Drag Box

![Drag Box](https://cloud.githubusercontent.com/assets/12930244/25745183/36c0b220-31d0-11e7-91c1-bedc02a0fc40.png)

Click and drag to change value by 1, hold Shift while dragging to fine tune by 0.01.

## Graph

![Graph XY Control](https://cloud.githubusercontent.com/assets/12930244/25745182/36bdcdf8-31d0-11e7-8e93-d04eee147f7f.png)

Click and drag to change value by 1, hold Shift while dragging to fine tune by 0.01. X and Y axis may affect different values.

<br>

# GUI Pages

## Overview Page

![Tone Sweep JSFX Overview Page, with simplified Pitch, Envelope controls](https://cloud.githubusercontent.com/assets/12930244/25745175/365576a4-31d0-11e7-950e-e87ee8d5319a.png)

The very first page, which displays right after you insert the JSFX, is an overview page, consist of graphs of the two fundamental elements of this synth, **Pitch Sweep** and **Envelope**. The X axis of the **Pitch Curve Graph** indicates the length of the pitch sweeping in millisecond, while the Y axis of the same graph affects the curve percentage of the sweeping. The two drag boxes on the left is the starting note (the top one) and the ending note, which translate into frequency displayed on the right side of the Pitch Curve Graph.

**Envelope Graph** works the same way, except it is divided into three sections: Attack, Hold, and Decay. Each section (except for the hold section) has X and Y axis assigned to the length and curve slope, just like the Pitch Curve Graph. There are more drag boxes affecting the shape and length of each section below the graph.

At the bottom, there is a non-controllable graph displaying the final waveform. You can use it as a visual reference.

Now lets explore more in-depth parameters on the other pages.

Drag the GUI Page slider on the top to access different pages of the GUI.

<br>

## The Pitch Page

![Tone Sweep JSFX Pitch Page, with fine control of starting and ending pitch, sweeping time, shape, and curve](https://cloud.githubusercontent.com/assets/12930244/25745176/36596516-31d0-11e7-90ea-109676ff29e0.png)

The second page is the pitch section, comprising controls that affects the frequency movement of the synth.

### Pitch

**A4**: This is the pitch standard, defining the pitch of A4, the foundation from which all other pitches are calculated.

**Starting Note**: This defines the initial pitch of the sweep.

**Ending Note**: This defines the target pitch of the sweep, it can be set to the same note as the Starting Note for a sustained note, or a higher note than the Starting Note for sweeping upwards.

**Fine Tune**: This is the offset in cents (1% of a semitone) of the above note.

### Sweep

**Time**: This is the time it takes to sweep from the Starting Note to the Ending Note.

**Curve & Multiplier**: These two controls affect the curve slope of the sweeping.

**Shape**: This defines the shape of the curve slope.

The pitch curve on the bottom right of this page is the same as the one on the first page.

<br>

## The Envelope Page:

![Tone Sweep JSFX Envelope Page, based on AHD, with fine control of curve and shape](https://cloud.githubusercontent.com/assets/12930244/25745178/3686238a-31d0-11e7-8f6d-b0f78609e0a5.png)

The envelope page consists of all the parameters that affects the volume envelope of the synth. Since this is designed to be a percussion synth, there are only three phases, the **Attack**, **Hold**, and **Decay**, or **AHD**.

The *Attack* is the phase that goes from 0% volume to 100% when a MIDI note-on message is received, then holding that 100% during the time of the *Hold* phase, and finally declining to 0% in the *Decay* phase.

The curve controls of the Attack and Decay behave the same way as the one in the pitch section.

The Envelope Graph on this page is the same one on the first page.

<br>

## The Waveform Page:

![Tone Sweep JSFX Waveform Page, with additional AM and FM settings](https://cloud.githubusercontent.com/assets/12930244/25745179/368e1b80-31d0-11e7-97be-cd376f544d55.png)

The controls on this page deal with the actual sound or timbre of the generated waveform.

**Waveform**: This slider selects the fundamental waveform of the synth (currently not anti-aliasing).

### Modulations

There are two types of modulations available, an **AM** or **Amplitude Modulation**, and **FM** or **Frequency Modulation**. *AM* generates a waveform that affects the volume of the envelope, whereas *FM* fluctuates the frequency of the sweeping pitch.

**Sidechain**: Use the channel 3 or 4 (for AM or FM) of the audio input as the modulation signal, rather than the settings below.

**Static** (FM only): With this checkbox off, frequency will be dynamic, related to the difference between starting note and ending note, or in another word multiplicative; When switched on, frequency will be static, or additive.

**Frequency**: This defines the frequency of the oscillator.

**Depth**: How much the currently level of the modulation waveform affects the original signal, can be negative.

**Env Slant**: Envelope Slant. This controls how depth changes over the duration of the AHD envelope, fading in or fading out.

**Waveform**: The waveform of the generated modulation signal.

The two slant graph are not controllable. They are there only to provide a visual reference of the slant.

<br>

## The Setting Page:

![Tone Sweep JSFX Setting Page. Volume, velocity, and extra](https://cloud.githubusercontent.com/assets/12930244/25745180/36b351b6-31d0-11e7-9376-37d6c43fc163.png)

This page deals with the miscellaneous settings of this synth.

### Settings

**Volume**: This is the master output volume of the generated signal.

**Key filter**: This controls the midi note input filter of this synth, basically defining which pitch triggers the synth. Whenset to -1, all input pitches will trigger this synth.

### Velocity

There are two velocity related parameters that change how velocity of the input MIDI note affects the generated signal.

**Volume**: The amount of volume that is affected by velocity. When set to 0, velocity will not affect volume at all; When setting to a higher value, velocity lower than 127 will generate lower volume.

**Pitch**: How much velocity affects the Starting Frequency. Basically a percentage of difference between the Starting Frequency and the Ending Frequency.

### Others

Currently there are two check boxes that may affect the way you play with this synth.

**Note off**: When inactive, this synth plays one shots,meaning all triggered notes will go through attack phase, followed by hold phase, and then decay phase. When activated, the envelope will stay in hold phase until a note off message is received.

**Key Track**: When inactive, any input note will trigger the starting and ending note in the pitch section. When activated, the pitch will follow input MIDI note, with the ending note being the triggering MIDI note number, while the starting note is calculated by adding the difference between the starting note and ending note in the pitch section.