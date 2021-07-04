---
title: "Aw Console Setup"
date: 2021-07-03T03:13:14+08:00
draft: true
---

I did a comparison of Airwindows Console plugins in the last post,
and today I'm going to talk about how to actual use them.

Before getting into the actual setup,
let's first understand what the console systems do.

## The purpose of Airwindows Console Plugins

Airwindows Console plugins aim to **emulate the summing effect of analog console systems**.

Summing is what happens when two signals are combined.
With digital signal, summing is simple addition.
For example,
if two samples with values 1 and 2 were to be added,
you get 3.

It's ~~magic~~ pre-grade school math.

Analog console systems don't exactly work that way.
They live on electricity.
As Chris explained in one of his console videos,
in analog system,
each channel pulls a bit of electricity to,
figuratively,
draw out the signal,
and the louder the signal,
the more energy is required.
When a channel draws a large amount of electricity,
other channels down the line will be affected in a way.

That behavior is what the console plugins try to recreate.

How do they do that?

It's complicated since each plugin implements a slightly different algorithm.
Fortunately, Chris did write a simple version of this concept,
which I listed in the last article as my go-to.

The PurestConsole.

The algorithm is simple.
Each channel track goes through a sine function,
which is then summed (digitally) by the DAW,
and the result goes through an arcsin function,
the inverse of the sine function.
According to the calculator,
sin(30) = 0.5 and arcsin(0.5) = 30.

Represented in code:

``` C++
arcsin(sin(A) + sin(B)...)
```

If you are wondering what this does to the signal,
I made a <a href="https://www.desmos.com/calculator/yxsyooalg8" target="_blank">Airwindows PurestConsole Visualizer on desmos</a>.

Observe carefully and you will notice that:
first, the louder the input (y), the more reinforced it becomes;
second, input above 0dB (y > 1) is undefined,
which will likely result in nasty distortion.

With the concept briefly explained,
let us move on to the actual setup and usage in production.

## How to setup and use the Airwindows Console plugins

Each console comes with a pair of plugins.

One is called ConsoleChannel, the other ConsoleBus.

Using the algorithm explored above,
ConsoleChannel is the one that does the sine function,
whereas ConsoleBus reverse that with arcsin.

Thus, ideally you should **put a ConsoleChannel on every audio track,
and a ConsoleBus on, as the name indicates,
the bus track** that combines all of them.

However you need to **place the ConsoleChannels post-fader**,
because Console plugins requires unity gain to work.

At least that's what Chris said.

Unity gain means that the volume before going into ConsoleChannel
should be equivalent to the volume that hits the ConsoleBus.

If your DAW does not provide post-fader FX function,
I'm looking at you REAPER,
you are ~~screwed~~ fortunate to have me coming with a workaround.

### Workaround in DAWs with no post-fader FX function

To be honest, you don't *really* need this workaround.
You can simply add ConsoleChannel at the end of every track,
ConsoleBus at the top of every bus track,
then keep your hands away from the volume fader and pan-pot native to your DAW.

![Console Channel & Bus on Track FX Chain]()

That's How I used to work.

Until one day I finally became exasperated,
and decided to redesign my workflow regarding the console plugins,
because of a sudden realization that I was handicapped by neglecting two important features.

By not using the fader and pan-pot,
I forfeited the opportunity to monitor the balance between tracks by solely looking at the mixer.
On top of that,
embedding the console plugin into the track FX chain means
less flexibility for dry/wet comparison,
because toggling the FX chain on and off,
on the channel track or the bus track,
tears the console pairs,
resulting in uncontrolled, partial saturation.

We will resolve those issues by creating an intermediate track dedicated for summing.
which resides between the bus and the channels.

![A dedicated summing track between bus and channels]()

Then we need to transport the console plugins into the new summing track,
freeing up the fader, pan-pot, and the FX chain toggle switch.
We need one ConsoleChannel plugin for each channel track,
each with a different stereo channel input and output,
then a ConsoleBus plugin at the end of the FX chain,
receiving input from all channels,
with only the first stereo channels as the output,
zeroing out all unmapped output channels to mute bleed.
After that,
we need to modify the channels of tracks to match the input of the corresponding ConsoleChannel plugin.

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

### The problem with dedicated summing track

Now this workaround is not without disadvantages.

One obvious issue is that,
if we put console plugins directly onto the original tracks,
we can easily apply processes in-between ConsoleChannel and ConsoleBus,
such as reverb,
again recommended by Chris in his console videos,
by sending ConsoleChannel saturated signals out to a reverb track,
which goes through the ConsoleBus plugin with the new reverb sound.
This apparently gives the reverb more cohesion.

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

![Divide your mix into sub-mixes]()

## Conclusion

Now you should have some understanding of what the console plugins are doing -
making your signal more adhesive and interactive -
and how to set them up in your DAW.
Whether that is synonymous to better sounding...
well if you haven't read my previous post [on Airwindows Console Plugins Comparison]({{< relref "aw-console-comparison.md" >}}),
do so now, and use the included project to make your own judgement.
