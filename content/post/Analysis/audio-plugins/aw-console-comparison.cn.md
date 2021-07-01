---
title: "Airwindows Console Plugins Comparison"
date: 2021-07-01T10:32:38+08:00
tags: ["analysis", "music production", "mixing", "audio-plugins"]
categories: ["music-production"]
description: "Let's take all Airwindows Console plugins out for a comparison."
---

I've been using [Airwindows Console](http://www.airwindows.com/?s=console) series since it came out as free plugins.
They definitely add some gluing characters to the digital signal.
Some people even go as far as saying that these
[sound better than "a well-known, transformer-based, Class A analog summing mixer"](https://tapeop.com/reviews/gear/104/console-and-buss-colors-plug-ins/).

Recent I [figured out a more fitting way to use the console system in REAPER](https://forums.cockos.com/showpost.php?p=2449032&postcount=2),
and started to incorporate more of them in my template files.

Although, there is one little issue when using Airwindows Consoles -
too many to choose from.

At the time of writing,
there are already 12 different console related algorithm implemented as plugins,
and he's not stopping here.

Having that many choices in the color palette is great,
except for when you are working on a project,
where you don't want choices like these to break you out of the zone.
For workflow efficiency,
it's best to trim your choices to one go-to and maybe two or three coloring alternatives,
and the way to do that is to make the decision before production.
Thus I made a REAPER project listing out all of them,
to see and hear the difference between each variation,
and finally to pick the best sounding one to my taste.

You can download the [REAPER project here](https://stash.reaper.fm/v/42335/aw%20Console%20Comparison.rpp).

Some observations:

1. Distortion happens even with only one audio source,
    except through atmosphere, console5raw, console6 and the purest consoles.
2. Distortion is always introduced with multi-track summing.
3. All distortions will introduce DC offsets,
    so use a DC filter after the console bus.
    ReaEQ high pass has the least CPU usage,
    and [Airwindows Infrasonic](https://www.airwindows.com/infrasonic/) provides the cleanest removal.
4. Volume matters.
    Higher input gets more partials from saturation,
    and clipping happens at 0dB true peak,
    so do your gain-staging.
5. For sine waves, the ugliest distortions come from console4, console6, and uLaw.
6. Personally, the best sounding ones are:
   1. Atmosphere, where distortions are balanced across the spectrum.
   2. Console5, distortion goes up to nyquist;
        [Console5Dark](https://gearspace.com/board/showpost.php?p=13053669&postcount=147),
        almost nulls (-80dB) against console5,
        delta displays mainly source frequencies and first few partials,
        but Span overlay shows no difference,
        it also uses less CPU;
        Console5Raw, a cleaner version, [but with unstable DC offset](https://gearspace.com/board/showpost.php?p=13034212&postcount=8).
   3. Console7, a bit more hollow with fundamental at lower volume.
        Also Console7Cascade, one a bit more saturation than the original.
   4. PD, as in purest drive, with the least amount of saturation, ironically.
   5. PurestConsole, version one.
        It nulls against PurestConsole2,
        but this one has the lowest CPU consumption of all console series,
        less than half of purest2.
        Oh and it nulls against Atmosphere, WHAT?

In conclusion,
my pick is PurestConsole for go-to,
Console7 for some heavy but non-intrusive analog colorations
(it has the highest CPU consumption of all console series),
PDConsole for softer glue,
and Console5 or Console5Dark for in-your-face glue.
