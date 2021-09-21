---
title: "LRC Maker - A Script to Make Lyrics in LRC Format"
date: 2021-09-21T22:25:43+08:00
draft: true
---

I wrote a script to generate LRC formatted lyrics,
which is basically lyrics each line timecoded.

It's called LRC Maker,
available in [RCJacH's ReaPack Repository](https://github.com/RCJacH/ReaScripts).

I lied.
The name is more explicit with more searchable keywords,
called `RCJacH_Generate LRC Lyrics and Export to Clipboard.lua`

If you dislike ReaPack,
you can get the [raw script here](https://raw.githubusercontent.com/RCJacH/ReaScripts/master/Lua/Various/RCJacH_Generate%20LRC%20Lyrics%20and%20Export%20to%20Clipboard.lua)

The script combines the *take name* of active take of each item on the *selected track*,
with each take considered as a separated line,
using the starting location for the timing of the line,
and copies the result to the system clipboard,
while giving you a preview in a message pop-up.

It looks like this:

![Select track containing desired lyrics and run the script to generate LRC lyrics](/img/Content/REAPER/LRC_demonstration.gif)

So by selecting different track, you can generate lyrics in different language.

Now some details.

You can add ID tags (metadata of the song)
by adding a `#` at the beginning.
For example `#ar: Artist` becomes `[ar: Artist]`.

Items with empty take names will also generate timecode,
you can use them to add spacing to the output.

That's about it.

So now our lyrics scrolling can be quantized to the beat,
just like our music,
yay!
