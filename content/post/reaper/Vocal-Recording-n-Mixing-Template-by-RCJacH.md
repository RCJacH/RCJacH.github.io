+++
author = "RCJacH"
date = "2016-04-16"
tags = ["Production", "REAPER", "Template", "Recording", "Mixing", "Vocal"]
title = "Vocal Recording & Mixing Template by RCJacH"
categories = ["Scripts & Templates"]
description = "A REAPER template for recording and rough mixing lead vocal and vocal harmonies against an instrumental track"
alias = ["/blog/vocal-recording-n-mixing-template-by-rcjach/"]
+++

Vocal Recording & Mixing Template

By RCJacH

# Explanation

<br>

[Vocal Recording & Mixing Template by RCJacH](http://stash.reaper.fm/v/27327/Vocal%20Recording%20%26%20Mixing%20Template%20by%20RCJacH.rar) is a REAPER template for recording and rough mixing lead vocal and vocal harmonies against an instrumental track, including native functional FXs (with a few JS effects) on each track with track controls directly visible on the mixer.

This template works the best with the default REAPER themes. All dynamic related FXs are designed to work around signals that are recorded with RMS level of **-20dBFS**.

There are four Screensets that are available through the **Screenset/Layouts** under **View** Menu. Each loads a different set of track views, serving four different purposes, listed below:

1. Recording Lead Vocal
2. Recording Vocal Harmony
3. Mixing Lead Vocal Tracks without Harmony Tracks
4. Mixing Lead Vocal Tracks with Harmony tracks

Also, on each vocal harmony group bus and the MMO tracks, there is one instance of ReaEQ labeled as DuckEQ. This FX is for automating EQ frequencies based on the loudness of the Lead Vocal, using parameter modulation, to avoid frequency clashing to a certain extend without compensating the overall tonal balance of the original track. However, feel free to bypass or delete this effect if you are using a more traditional approach.

The track **Lead Vox** and **Backing Vox** are for monitoring output levels on the mixer.

Feel free to add more tracks for your creative purposes.

Listen to my A Capella song, **[A Quest for Vocal Harmony](https://rcapella.bandcamp.com/track/a-quest-for-vocal-harmony)**, composed and produced specifically for and with this template.



# How to Use

 

## Preparation

Place the **GlobalSliders** JS in the **Effects folder** and the project file in the **ProjectTemplates** folder, both under the REAPER **Resources** folder.

Create a new project using the Vocal Recording & Mixing Template by RCJacH template. Drag the instrumental audio file to the track labeled as "MMO", and setup the audio interface and the input of both the **VL Recording** track and the **VH Recording** track.

## Recording Lead Vocal

Load the first Screenset to record lead vocal tracks. Press **Record Arm/Disarm** on the **VL Recording** track, make sure that the **VH Recording** track is disarmed. Record takes in the VL Recording track, and then drag the recorded item to an appropriate track below, so we can unify recording levels and/or effects.

## Recording Vocal Harmonies

Load the second screenset to record vocal harmonies. Press **Record Arm/Disarm** on the *VH Recording track, make sure that the **VL Recording** track is disarmed. Record takes in the **VH Recording** track, and then drag the recorded item to an appropriate track(s) below, so we can unify recording levels and/or effects. 

## Mixing Lead Vocal

The **Verse**, **Chorus**, **PC**(*Pre-Chorus*)/**Bridge** tracks are used to ensure different items do not replace each other, so we can keep the breath prior to a phrase even when overlapping occurs. We can, of course, use these three tracks to treat different sections differently, by using different volume gain, FX, or sends. Some common treatment FX, with certain parameters modulated by track controls, are placed in the **VL Final** track. There are explanations for each FX in the FX comment, feel free to experiment or replace any or all of the FX.


## Mixing Vocal Harmonies

Use the EQ and HP controls on the mixer to remove muddiness, nasality, and rumbles of each track. Use the Compression control to either peak limit (FET-like) or even out the dynamic (OPTO-like) of the track. I cannot promise the simulation quality of the compressor (or any other effects), so again feel free to experiment or replace any or all of the FX. The Density control on the group bus is controlling the spread or individual panning of the sub tracks using a ReaDelay plugin, with different settings for different harmony groups. The Dim Mid control lowers the volume of tracks that are closer to the center of the panorama. You can adjust additional panning and volume freely with the track control.


## Reverbs

I tried to stick to the built-in effect for portability since not everyone has third-party plugins. Unfortunately, since the sound of ReaVerbate isn't really as pretty as some of the more specified reverb plugins, I encourage you to replace the current chains with your favorite reverb plugin. TailVerb is likely a plate/hall reverb for creating thickness, while AirVerb is more of a room/hall type of reverb for creating the sense of space.



## Chorus

The **Chorus** track contains two modulated pitch shift effects to create chorus effects for the harmonies to thicken them up. 

 

# Terminology

 

**MMO** = Music Minus One, or instrumental track

**VL** = Vocal Lead, including rap/spoken, and Ad Libs

**VH** = Vocal Harmony, separated into three layers by their function and placement. The four capital letters following VH are arranged by their Placement, Function, Voicing, and Panorama.

### Placement:

**C** = VH Close are usually doubling of the melody, or parallel thirds/fourths, used to thicken/widen up the lead vocal.

**M** = VH Mid are usually for call & response or riff kind of arrangements. 

**F** = VH Far are usually the sustained woos and ahs. 

Although they might not sound so different when recording, this way of organizing should provide you with a clue of what kind of harmony you might need.

### Function:

**T** = Thickener, normally a track with tighter rhythm but not as tight pitch deviation, placed closer to lead vocal.

**W** = Widener, normally a track with tighter pitch but not necessarily tight rhythm, placed across the panorama.

These are used only as arrangement suggestions; you can also use them as additional voices of a harmony group.

### Voicing:

**H** = Higher or top voice of the layer

**B** = Bottom voice of the layer

### Panorama:

**L** = Left

**R** = Right

Note that the panning of individual tracks is affected by the Density control on the group bus, usually spread across the panorama, with wideners more to the side and thickeners more to the center.





# [DOWNLOAD Vocal Recording & Mixing Template by RCJacH](http://stash.reaper.fm/v/27327/Vocal%20Recording%20%26%20Mixing%20Template%20by%20RCJacH.rar)
<br>

![](https://cloud.githubusercontent.com/assets/12930244/14581590/30ec5484-0423-11e6-8f38-98f7732d680c.png)
<br>
<br>
![](https://cloud.githubusercontent.com/assets/12930244/14581592/30ee4172-0423-11e6-90fd-d62374eb9441.png)
<br>
<br>
![](https://cloud.githubusercontent.com/assets/12930244/14581591/30ee3984-0423-11e6-96ea-2fcca2db7421.png)
<br>
<br>



