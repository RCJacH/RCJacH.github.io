+++
title = "Sample Library Server With REAPER"
date = 2021-05-11T10:58:38+08:00
tags = []
categories = []
description = ""
menu = ""
banner = ""
images = []
+++

In this post, I'm going to explain how to setup a local sample library server with Reaper.

Before doing that, allow me to explain the significance of having a sample library server,
and why you should, or shouldn't, consider implementing this.
If you only wish to learn about the actual setup, [click here]()

Do note that this technique is mainly for people dealing with sample libraries when making music,
mostly huge orchestral ones that uses gigabytes of samples per instrument,
if you are an EDM producer working with mostly single samples or synths,
you are probably not going to need this.
Although it never hurts to learn a trick or two.

Anyway, to understand the benefits of having a dedicated sample library server,
we need to look at some of the problems composers are dealing with when producing music with sample libraries.

## Problems when Working with Sample Libraries

### Problems with Sample Libraries

Sample libraries are hard to work with.

Not only are they expensive,
different libraries have different MIDI configurations,
microphone outputs, and sometimes gain calibrations.
Also, most composers like to combine different libraries to combine strengths and compensate for the weaknesses,
making bigger and thicker sound layering multiple libraries.

Now the problem is that, there are a lot of instrument in the orchestra,
and if you are doing professional orchestrations,
you likely *need to write and produce for each single instrument*,
except for the strings, where you write for each mini-section.
It takes a lot of time to setup the sample libraries for all those instruments,
not to mention you may want to unify the CC controllers of different libraries,
routing different microphones to different busses,
calibrating the output gain of different libraries,
and simulating the room space and various microphone bleeds.
We can't afford repeating the same process for each project.

The solution?

Take some off-production time to make a template to use for work later.

Most film and game composers from other DAWs usually have this massive orchestral template that loads every sample library that they'll ever need onto different tracks.
They would either copy the entire template onto new project,
muting and hiding tracks they do not need for the session,
or only copy parts of the template.

I call this practice Single Template Approach.
It's been the standard for decades, and is still being used as the standard practice for many media composers.
However, using a single template may invoke some other problems.

### Problems with Single Template Approach

The biggest problem with single template approach is the file size.

If you are using REAPER,
you probably, and you should, know that REAPER allows you to automatically save
a backup file every x minutes.
Because losing progress is the worst enemy to getting work done on time,
I set mine to saving a backup every 5 minutes when not recording.
![REAPER backup settings to save every 5 minutes when not recording]()

Here comes the problem, if we load everything into the project itself,
the file size of the project will be enormous,
usually expanding into three digit megabytes.
If we were to save a backup every so often,
it would take up a gigabyte of hard drive space every hour,
and eventually hundreds of gigabytes of hard drive for the entire project.

To counter that, you will have to either backup less often or start deleting older backup files that are less relevant.
Either way, you will be decreasing the efficiency of using backup files.

With REAPER though there is a way around that.

Because REAPER project file is saved as text files,
meaning you are able to open and edit it with a text editor,
and I often do,
you can use a version control system to track changes to the project.
So rather than saving the whole project automatically,
you will be committing only the changes of your project.
This will shrink the backup file size a lot,
and you can for example only commit when significant change is made,
keeping the backup files in between the commits,
deleting them after every commit.
Although that is also the problem,
since now you have to do the committing manually,
breaking your workflow,
potentially a hazard to creativity.

Now if that were the only problem it wouldn't be as bad,
there is another annoying aspect with having a single template,
and that is the slow initialization time.

Because we are loading all libraries along with the project,
and because modern sample libraries are huge,
it's going to take a while initiating your project whenever it loads.
If your sample libraries are large enough,
it might takes 10 to 15 minutes just for the samples to load into RAM.
If you need to switch between multiple projects during work,
you either have to wait for that long between every project,
or opening multiple projects simultaneously,
which makes the "Play background projects" action of REAPER useless.
And if any fault plugins happen to crash REAPER...
you'll be rewarded lots of coffee breaks.

These two issues may be bearable for some people,
since single template approach is still widely used even for REAPER users,
there are two workarounds to solve them,
each with advantage and weakness of their own.

Let's explore them.

## The Track Template Approach

REAPER allows you to save a selection of tracks, optionally with items,
as track templates that can be imported into the current project.
There's also FX chain template were you can extract multiple FXs,
with their settings, to be inserted together onto a single track.
With the combination of those two features,
we can break that massive template down into modules,
and insert only partials that are necessary.

For example,
if we want to save the string section as template,
rather than saving the whole ensemble,
we can split it apart into three components:

1. The Group Containers.
   Rather than having all instruments on the same level,
   make good use of REAPER's folder tracks to categorize them by section,
   i.e. Violin I, Violin II, Violas, etc., along with relevant FXs,
   such as Airwindows console pairs or bus compressors.
   Then save only the folder tracks together as a template.
2. The Sample Libraries.
   Save the tracks with only the sample library instrument (such as Kontakt),
   and preferably separated by manufacturer, articulation,
   or anything else that you use to distinguish different use of libraries.
   The point is to make sure whatever you import is to be used,
   rather than to be deleted.
3. The Channel Effects.
   This is optional.
   Sometimes you may want to EQ or compress certain libraries to blend them better,
   but work without those effects when played solo.
   Thus you should keep these optional effects separate from your template,
   so save them as channel effects,
   but use filename and folders to categorize these channel effects for better management.

Of course, other than these single modules,
you can combine any of them for more straightforward workflow.

This approach is the preferred way for most REAPER projects.
In fact, I use this more than the Sample Library Server approach that I'm going to talk about,
and I recommend it for people working on a single non-related project at a time -
songs, rather than soundtracks.

The downside of this approach is maintainability.
If you wish to update the setup of a track across multiple projects,
either upgrading a sample library or changing parameters of a certain effect,
then unfortunately you have to open the project and change them one by one.

Again this is not important for single projects,
since coherence is not expected between different songs,
and normally once a song is done, it's done.

That's not usually the case with soundtracks,
which may involve much more back and forth editing between cues and edits.
Changing parameters is costly for bigger projects.
Not to mention the problem with loading time mentioned above.

So that's where a Sample Library Server comes in.

## What is a Sample Library Server

A Sample Library Server is **a dedicated REAPER instance that host the Single Template project**.
It takes streamed MIDI input from your working project in another REAPER instance,
play them through your sample libraries,
and send the result audio back to your working project.

This solves both problems mentioned above regarding Single Template approach.

Firstly, you're running the template isolated from your working project,
so you don't need to backup along with it.
And now your working project would only consist of MIDI data,
stripped away all plugin settings,
with minimum file size,
meaning that you can backup more often.

Secondly, because all audios are streamed from this mega template,
you only need to load your samples *once* -
only when you start up your computer.
Also since you are mainly working with MIDI,
and most crashes usually happen only during interactions with the interface,
the chance of crashing, and thus restarting,
your template is largely diminished.

It is essentially the standard Single Template Approach without the drawbacks,
with additional benefits such as that any change you make to your template will be immediately reflected in all of your working projects.

Although there is one thing about it that's not optimal.

Processing Power.

If you have a computer with exceptional hardware,
high frequency and cores/threads,
that can handle running all your sample libraries simultaneous,
you'll love this approach and there will be no problem for you at all.

On the other hand,
if your computer isn't up to par with the requirement of your template,
your computer will explode when playing tutti.

Just kidding.

You won't be able to play all instruments at once.
Not only that, because you have to render online for your final export,
you won't be able to exploit REAPER's function of varying the rendering speed,
and thus whatever you can playback without audio dropouts in real time will be the upper limit to your final mixdown.
