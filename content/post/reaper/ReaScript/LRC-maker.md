---
title: "LRC Maker - A Script to Make Lyrics in LRC Format"
date: 2021-09-21T22:25:43+08:00
tags: 
  - reaper
  - Script
  - production
  - workflow
categories:
  - Scripts & Templates
description: "Generate timecoded lyrics (or text) directly in REAPER."
---

I wrote a script to generate [LRC formatted lyrics](https://en.wikipedia.org/wiki/LRC_(file_format)),
which is basically lyrics with each line timecoded.

It's called LRC Maker,
available in [RCJacH's ReaPack Repository](https://github.com/RCJacH/ReaScripts).

I lied.
The name is more explicit with searchable keywords,
called `RCJacH_Generate LRC Lyrics and Export to Clipboard.lua`

If you dislike ReaPack,
you can get the [raw script here](https://raw.githubusercontent.com/RCJacH/ReaScripts/master/Lua/Various/RCJacH_Generate%20LRC%20Lyrics%20and%20Export%20to%20Clipboard.lua)

The script combines the *names* of the *active take* of items on the *selected track*.
Each item is considered as a separated line,
with the starting location of the item as the timing of the line.
The result is copied to the system clipboard,
although it does give you a preview in a pop-up message.

It looks like this:

![Select track containing desired lyrics and run the script to generate LRC lyrics](/img/Content/REAPER/LRC_demonstration.gif)

By selecting different track,
you can generate lyrics in different languages...if you had it translated in the first place.

Now some details.

You can add ID tags (metadata of the song)
by adding a `#` at the beginning.
For example `#ar: Artist` becomes `[ar: Artist]`.

Items with empty take names will also generate timecode,
you can use them to add spacing to the output,
bumping a line up with space when the singer finishes the phrase.

That's about it.

So now our lyrics scrolling can be quantized to the beat,
just like our music,
yay!

PS. the song in the demo gif is [this one](https://rcappella.bandcamp.com/track/a-quest-for-vocal-harmony).
