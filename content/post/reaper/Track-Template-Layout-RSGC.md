+++
author = "RCJacH"
title =  "REAPER Track Template - Layout RSGC"
description = "A REAPER Track Template used to construct a general layout for song production"
date = "2016-06-16"
tags = ["Music Production","REAPER","Template","Workflow","Recording"]
categories = ["Scripts & Templates"]
alias = ["/blog/reaper-track-template-layout-rsgc/"]
+++

Here's a Reaper Track Template that I believe would improve your production workflow. It's called "Layout RSGC", which stands for **Reference**, **Sections**, **Grooves**, and **Chords**, a group of four tracks. These four tracks are used to construct a general layout for our song production, which is vital for commercial projects that is tight on schedule, with no time for any experimentation or trying out new ideas. It is way easier to insert the track template and copy n' pasting existing items rather than handwriting everything from scratch, which we may have been doing in the past.

You can download it via the [Reaper Stash](http://stash.reaper.fm/v/27902/Layout%20RSGC.RTrackTemplate) or this [Github Page](https://github.com/RCJacH/BlogImages/files/318233/Layout.RSGC.zip).

Put it in the **TrackTemplates folder** under the Resources path, and load it up by using the command **Insert Track From Template** when you right click the left side of the main view.

<br>

This is what it looks like:

![](https://cloud.githubusercontent.com/assets/12930244/16113440/c29266d0-33ee-11e6-89c3-8001409c2989.png)

I disabled all MIDI and Audio inputs and turned off visibility in the mixer for these tracks. Since we are using them as a references, we don't want them to interfere with our regular production workflow.

<br>

So how do we use this template? Let me explain each of the four tracks included in the template.

### The Reference Track:

Drag whatever Reference songs that you are using for this project if needed, either for production/mixing/mastering references, or even a rough demo of the song.
There's a ReaEQ on the FX chain as High pass and low pass, with track controls of the frequencies, for monitoring specific frequency bands. 


### The Section Track:

This track is for laying out the different sections for the song. I found that by using empty items, it is a lot easier and faster for marking sections compared to using markers or regions. We can also make quick rendering range by using the "**Set Loop Points to Items**" action, and select **Time Selection** as Bounds in the Render to File window.

I included all of the section titles that I can think of in the template as individual empty items. We can simply load it up, use the existing items to map out our musical piece, and delete whatever item(s) that we do not need for the song.

Also, I used ReaMIDIControl to create an envelope so we can draw out the energy map, which is the dynamic intensity flow of the song. We can even use the song in the track above as a reference  to mimic the energy map of the target genre.


### The Groove Track:

The groove track is used to formulate a **multi-layered rhythmic groove** for each section of the song. We can simply insert a MIDI clip, and write out the grooves like this:

![](https://cloud.githubusercontent.com/assets/12930244/16113441/c292b13a-33ee-11e6-84b4-1f9c1bac1ecf.png)

I'm using C1 and D1 for the kick and snare so it translates directly to the sampler when I drag the clip down to the drum track. For every other layer, I'm writing on a Csus2 Chord so it avoids maj/min tonality while not sounding too chaotic, but of course you can do whatever you want with it. I'm also using longer notes on an A to mark the position of fills, without much of the tonal or rhythmic design, unless it's a tutti fill.

Oh, don't forget to **name the notes** after you found a comfortable way to notate the groove, so you won't be full of confusion looking at it few months/years later.

There's a ReaSynth on this track with default preset to playback the groove.

We can also use the groove as a rhythmic reference when writing other tracks, like this:

![](https://cloud.githubusercontent.com/assets/12930244/16113438/c23bf110-33ee-11e6-9abe-3ee2c3cf44e3.png)

As a side note, if we **assign different MIDI channels for different groove layers**, we can focus on one layer at a time when working on other tracks, as it will only show the current channel after toggling visibility in the track list of MIDI editor.

### The Chord Track:

Use this track to **map out the chord changes** of your song, you don't even need to write the full chords out, just a way to remind you what chord/scale you are working with. Sometimes it even works to write 25|C (a 2-5 progression of C scale) and may substitute it later in the production.

Again, I am using notes for empty item to display Chords on track, which is effortless for adjusting the location and the length of chords, while also adaptable with **Heda's [Note Reader](http://forum.cockos.com/showthread.php?t=155928)**, which can be used for live display of chord changes in need of any jazz related improvisations.

![](https://cloud.githubusercontent.com/assets/12930244/16113439/c23f3fd2-33ee-11e6-8189-61eaf9299d8f.png)

I included one empty item to begin with so we can simply duplicate with mouse drag, rather than manually inserting an empty clip, which may take more steps.

<br>

## Tips:
 
+ We can use the RSGC for production analysis: Analyze the groove, chords, sections of a song that is placed in the reference track, then save it as a new track template for easy reference in the future.
+ Do the same thing for all of your own songs which is a quick way to get groove and chord structure for the song. We can load up the template as a reference for re-production in another genre.
+ We can send the song structure with our production audio to artist/instrumentalist for a recording reference. This way they no longer need to be reading a txt file, trying to match up chords and sections against the audio.

That's it, have fun with it. Feel free to ask any questions or give any suggestions, it's always nice to improve workflow.