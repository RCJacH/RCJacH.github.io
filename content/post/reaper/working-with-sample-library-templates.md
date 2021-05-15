+++
title = "Working with Sample Library Templates in REAPER"
date = 2021-05-11T10:58:38+08:00
tags = ["reaper", "template", "production", "workflow"]
categories = ["music-production"]
description = "Comparison of 3 different approaches to templating with large sample libraries."
banner = ""
+++

This blog post functions as a prelude to my tutorial on setting up a **Sample Library Server** with REAPER.
I'm going to explain why you would want to set one up by comparing several different approaches to templating with large sample libraries.

To understand the benefits of having a dedicated server for sample libraries,
we need to look at some of the problems composers are facing when producing music.

## Problems when Working with Sample Libraries

### Problems with Sample Libraries

The problem with sample libraries lies in the size of ensembles and time required to set them up for professional production.

We are bless with having dozens of unique instruments at our arsenal,
each capable of producing several varied timbres
by altering the note, dynamics, and articulation.
If we integrate the thousands of potential doublings into even more diversified textures,
we can create millions of different aural experiences with orchestral instruments alone,
not to mention all those exotic ones modern composers are intrigued by.

Although there has been a revival of chamber music in cinematic soundtracks,
media composers are expected to be able to work with the whole orchestra.

There's a lot to work with, and thus a lot of work.

Unless you at the level of John Williams or Howard Shore,
getting enough budget recording live and still making a fortune with the leftovers,
you probably have to work with virtual orchestra,
or more often referred to by the somewhat inaccurate term **sample libraries**.

But the truth is, sample libraries are hard to work with.

Not only are they expensive,
they also tend to differ in microphone outputs, gain calibrations,
and sometimes MIDI configurations.
Furthermore, to achieve a bigger and thicker sound,
approximating that of a real recording session,
composers often layer multiple libraries to combine strengths and to avoid weaknesses.

You can play with the libraries fresh out of the box,
however, from personal experience, that did not work well.
It is time consuming to work with unfamiliar sample libraries,
checking manuals to search for controllers assignments,
calibrating expression curves,
allocating dedicated time for mixing,
simulating the room space with microphone bleeds,
mixing and matching different libraries for the best combination.
All that extra but essential labor makes your music production profession unsustainable.

The solution?

Take some off-production time to make a template for later usage.

It has became a common practice to build a grand template for the virtual orchestra,
loading all articulations from every sample library that is ever going to be used,
with a systematic naming scheme,
colored track groups,
pre-configured FX,
pre-routed busses,
and all kinds of preset features you can imagine.

An example of this is the [Orchestral Template for REAPER by storyteller](http://otr.storyteller.im/).

Then during actual production,
they would either start the new project with this template,
muting and hiding tracks they do not need for the session,
or copy parts of the template into their working project.

I call this the Single Template Approach.
It's been the standard for decades, and still is used by many active composers,
such as Blakus and Mike Verta.
Some even go as far as building hardware controllers for their template,
*cough*Hans Zimmer*cough*.

Anyway, the Single Template Approach may save lots of time omitting the initial setups,
yet using it may invoke some other problems.

### Problems with Single Template Approach

The biggest problem with Single Template Approach is, again, the size,
but this time the file size.

If you are using REAPER,
you probably, and you should, know that REAPER allows you to automatically save
a backup file every x minutes.
Because losing progress is the worst enemy to getting work done on time,
I set mine to saving a backup every 5 minutes when not recording.
![REAPER Preferences to backup every 5 minutes when not recording](/img/Content/REAPER/preference_project_backup.png)

Similar features should be included for other DAWs as well.

Here comes the problem, if we load everything into the project itself,
and because plugin settings are written as BASE64 strings,
the file size of the project will be enormous,
usually expanding into three digit megabytes.
If we were to save a backup every so often,
it could take up a gigabyte of hard drive space every hour,
and eventually hundreds of gigabytes of hard drive for the entire project.

As a result, you may have to compensate by either backup less often,
delete older backup files that are less relevant,
or start piling up external hard drives.
Either way, the efficiency of using backup files will be negatively affected.

On a side note, there is a way around that with REAPER.

Because REAPER project file is saved as text files,
meaning you are able to open and edit it with a text editor,
and I often do,
you can use a version control system,
[git](https://git-scm.com/) for instance,
to track changes to the project.
So rather than saving the whole project automatically,
you will be committing only the deltas between your project saves.
This will shrink the overall backup substantially,
and you can for example only commit when significant change is made,
keeping the backup files in between the commits,
deleting them after every commit.
Although if the committing is done manually,
it might break your workflow,
which may be hazardous to creativity.

That concludes the side note.

To add to the complication,
the second, and slightly more annoying,
aspect with the Single Template Approach is the slow initialization time.

Because we are loading along with the project all libraries,
and presumably modern colossal ones
(628GB for Spitfire's BBC Symphony Orchestra or 450+GB for Orchestral Tools),
the loading time of projects would be slightly longer than pure MIDI ones.
Once I had to wait 30 minutes to completely load up a session,
only to mute a note on the request of the client.
If you need to switch between multiple projects during work,
you either have to wait for samples to load or open multiple projects simultaneously.
Doing so not only makes work sessions more difficult to manage,
but also renders REAPER's "Play background projects" action useless.
And if any fault plugins happen to crash your DAW...
you'll be rewarded lots of coffee breaks.

These two issues may be bearable for some people,
but let us also explore two workarounds,
each with advantage and disadvantages of their own,
so we don't have to put up with the issues mentioned above.

## Alternatives to the Single Template Approach

### Using Track Template

REAPER allows you to save a selection of tracks, optionally with items,
as track templates that can be imported into the current project.
There's also FX chain template were you can extract multiple effects,
along with their settings,
to be inserted together onto single or multiple tracks.
With the combination of those two features,
we can break that massive template down into modules,
and insert only partials that are necessary.

For example,
if we want to save the string section as template,
rather than saving the whole ensemble,
we can split it apart into three components:

1. The Group Containers.
   Rather than having all instruments on the same indentation,
   make good use of REAPER's folder tracks to categorize them by section,
   i.e. Violin I, Violin II, Violas, etc., along with relevant FXs,
   such as Airwindows console pairs or bus compressors.
   Then save only the folder tracks together as a template.
2. The Sample Libraries.
   Save the tracks with only the sample library instrument (such as Kontakt),
   and preferably separated by manufacturer, articulation,
   or anything else that you use to distinguish different use of libraries.
   Inserted tracks are better to be used rather than to be deleted.
3. The Channel Effects.
   Sometimes you may want to add EQ, compressor, or analog colored distortions
   to certain libraries to blend them better,
   but work without those effects when played solo.
   Thus you should keep these optional effects separate from your template,
   so save them as FX chains.

Of course, you are free to combine any of them on any level for more straightforward workflow.

This approach is the preferred way for most REAPER projects.
It is recommended for people working on single non-related projects -
songs, rather than soundtracks.
Because cohesion is not expected between different songs,
and once a song is done, it's done.

With quick turnarounds,
producers of songs might not even notice the downside of this approach -
*maintainability*.
Media producers working on soundtracks may find it less favorable,
because their work may involve much more back and forth editing between cues and edits.
Unfortunately, changing parameters is costly for bigger projects,
you have to open and edit the projects one by one.

So that's where a Sample Library Server comes in.

### Using Sample Library Server

A Sample Library Server is **a dedicated REAPER instance that host the Single Template project**.
It takes streamed MIDI input from your working project in another REAPER instance or another DAW,
play them through your sample libraries,
and send the result audio back to your working project.

A free resemblance of the commercial product [Vienna Ensemble Pro](https://www.vsl.co.at/en/Vienna_Software_Package/Vienna_Ensemble_Pro).

This solves both problems mentioned above regarding Single Template Approach.

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

Processing Consumption.

If you have a computer with exceptional hardware,
high frequency and cores/threads,
that can handle running all your sample libraries simultaneously,
by all means go for it,
it would be a smooth ride for you.

On the other hand,
if your workstation isn't up to par with the requirement of your template,
your computer will explode when playing tutti.

Just kidding.

You won't be able to play all instruments at once without exhausting CPU power.
Not only that, because you have to render online for your final export,
you won't be able to exploit REAPER's function of varying the rendering speed,
and thus whatever you can playback without audio dropouts in real time will be the upper limit to your final mixdown,
anything above that will induce stutters and crackles to your rendered audio.

## Conclusion

Now that you are informed,
you can make an educated choice in how to work with large sample libraries.
If you are interested in setting up a Sample Library Server,
keep an eye on the update of this blog.
