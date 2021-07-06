---
title: "Airwindows Console Plugins Basics"
date: 2021-07-03T03:13:14+08:00
draft: true
tags: ["analysis", "music production", "mixing", "audio-plugins"]
categories: ["music-production"]
description: "What do Airwindows's console plugins actually do, and how you should use them in your DAW."
---

I did a comparison of Airwindows console plugins in the last post,
today I'm going to talk about how to use them.

Before getting into the actual setup,
let me first explain what they are and what they do.

## The Purpose of Airwindows Console Plugins

Airwindows Console series aim to **emulate the summing effect of analog console systems**.

Summing is what happens when two signals are combined.
With digital signal, summing is simple addition.
For example,
if two samples with values 1 and 2 were to be added,
you get 3.

It's ~~magic~~ pre-grade school math.

Analog console systems don't exactly work that way.
They are powered by electricity.
Each channel pulls a bit of that power
to trace out an extremely detailed outline of the input signal.
And, as Chris explained in one of his console videos,
the louder the signal,
the more energy is required.
When a channel draws a large amount of electricity,
other channels down the line will be affected in some way.

That behavior is what the console plugins try to recreate.

How do they do that?

It's complicated,
since each plugin implements a slightly different algorithm.
Fortunately,
Chris did write a simple version of this concept,
stripping away all of the coloring bits,
keeping only the core of this concept,
which became my go-to as I mentioned in the last article.

The PurestConsole.

The algorithm is simple.
Each channel track goes through a sine function,
which is then summed (digitally) by the DAW,
and the result goes through an arcsin,
the inverse of the sine function.
According to the calculator,
sin(30) = 0.5 and arcsin(0.5) = 30.

The concept represented in code:

``` C++
arcsin(sin(A) + sin(B)...)
```

If you are wondering what this does to the signal,
I made a <a href="https://www.desmos.com/calculator/yxsyooalg8" target="_blank">visualizer on desmos</a>.

Black is raw signal,
red is the output with console,
and blue is the delta,
the difference between.

![Here's a screenshot of the Airwindows PurestConsole Curve](/img/Content/analysis/aw-console/purestconsole_curve.png)

Observe and you will notice that:

1. The louder the input (y), the more reinforced it becomes;
2. If the combined input is above 0dB (y > 1),
    the output becomes undefined,
    which will likely result in nasty distortion,
    so do your gain-staging.

With the concept briefly explained,
let us move on to the actual setup and usage in production.

## How to Setup and Use the Console Plugins from Airwindows

Each console comes with a pair of plugins.

One is called ConsoleChannel, the other ConsoleBus.

Using the algorithm explored above,
ConsoleChannel is the one that does the sine function,
whereas ConsoleBus reverse that with arcsin.

Thus, ideally you should **put a ConsoleChannel on every audio track,
and a ConsoleBus on, as the name indicates,
the bus track** that is parental to them.

However you need to **place the ConsoleChannels post-fader**,
because Console plugins requires unity gain to work.
Unity gain means that the volume before going into ConsoleChannel
should be equivalent to the volume that hits the ConsoleBus.

If your DAW does not provide post-fader FX function,
I'm looking at you REAPER,
then you are ~~screwed~~ lucky to have me coming up with a workaround.

### Workaround in DAWs with NO Post-Fader FX

To be honest, you don't *really* need this workaround.
You can simply add ConsoleChannel at the end of every track,
ConsoleBus at the top of every bus track,
then keep your hands away from the volume fader and pan-pot and call it a day.

![Console Channel & Bus on Track FX Chain](/img/Content/analysis/aw-console/original_usage.png)

That's how Chris uses them in Logic,
which is also my old workflow.

Until one day I finally became exasperated,
and decided to redesign my workflow regarding the console plugins,
because of a sudden realization that I was handicapped by neglecting two important features that my DAW provides.

By not using the fader and pan-pot,
I forfeited the opportunity to monitor the balance between tracks by solely looking at the mixer.
On top of that,
embedding the console plugin into the track FX chain means
less flexibility for dry/wet comparison,
because toggling the FX chain on and off,
on the channel track or the bus track,
tears the console pairs apart,
resulting in uncontrolled partial saturation.

We will resolve those issues by creating an intermediate track dedicated for summing,
which resides between the bus track and the channels.
Then we need to transport the console plugins into the new summing track,
freeing up the fader, pan-pot, and the FX chain toggle switch.

![A dedicated summing track between bus and channels](/img/Content/analysis/aw-console/dedicated_summing_track.png)

We need one ConsoleChannel plugin for each channel track,
each with a different stereo channel input and output,
then a ConsoleBus plugin at the end of the FX chain,
receiving input from all stereo channels,
with only the first as the output,
zeroing out all unmapped output channels to mute bleed.

![Console plugins routing example](/img/Content/analysis/aw-console/console_plugins_routing.png)

After that,
we need to modify the channels of tracks to match the input of the corresponding ConsoleChannel plugin.

![Set all children tracks to sequential stereo channels](/img/Content/analysis/aw-console/track_send_routing.png)

Phew, that's a lot of work, especially when tracks begin to pile up.
To make life simpler, I wrote two scripts to automate this process.

1. RCJacH_Set Airwindows Console Track FX Pin Mapping.lua

This script will set the I/O pins of all track FX of a selected track to sequential stereo pairs,
except for the last FX,
which is assumed to be a console bus plugin,
thus making it receiving all stereo pairs based on the number of previous plugins,
and outputs only channel 1-2.

2. RCJacH_Set Parent Send Channel Offset to Sequentially Stereos for Selected Tracks.lua

This script will make all selected tracks to set their parent send offset to sequential stereo pairs.

So the workflow is:

First,
create a summing track,
add whatever console variations you want,
with the number of channel FXs equivalent to the number of children tracks,
also add a console bus as the last plugin of the track,
then run script 1.
After that,
place tracks to be summed under this summing track,
select them all and run script 2.
Voila.

You can add my ReaPack repo to download them:

<a href="https://github.com/RCJacH/ReaScripts" target="_blank">RCJach's ReaScripts Repository</a>

### The Problems with Dedicated Summing Track

Now this workaround is not without disadvantages.

One obvious issue is that,
if we put console plugins directly onto the original tracks,
we can easily apply processes in-between ConsoleChannel and ConsoleBus,
such as reverb.
Again recommended by Chris in his console videos,
by sending ConsoleChannel saturated signals out to a reverb track,
which the result goes through a ConsoleBus plugin,
usually the one on the master bus,
apparently gives the reverb more cohesion.

But personally I don't hear much of a difference...

The other issue is that REAPER has maximum of 64 channels per track,
so you can only have 32 separated stereo inputs per bus track.
To work around that limit,
we can divide our tracks into sub-busses.
For example,
all drum tracks into the drum bus,
all guitars into the guitar bus,
and all vocals to a vocal bus, etc.
If that's not enough,
divide again,
separate acoustic guitars and electric guitars,
which both goes into the guitar bus.
Then all sub-busses goes into the master 2-bus.
A bit like analog mixing isn't it?

## Conclusion

Now you should have some understanding of what the console plugins are doing -
making your mix more adhesive and interactive -
and how to set them up in your DAW.
Whether that is synonymous to better sounding...
well if you haven't read my previous post [on Airwindows Console Plugins Comparison]({{< relref "aw-console-comparison.md" >}}),
do so now, and use the included project to make your own judgement.
