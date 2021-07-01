+++
author = "RCJacH"
title =  "How to Use Track Manager in REAPER"
description = "Showing and Hiding tracks for better visibility of the project"
date = "2016-03-03"
tags = ["Music Production", "REAPER", "Workflow"]
categories = ["Music Production"]
+++

When we are dealing with MIDI drumset, guitar, and other sample libraries that requires either multiple output or routing, the default setup may show up like this:

![Here's a screenshot of a project with tons of empty space between drum MIDI track and other instruments](https://cloud.githubusercontent.com/assets/12930244/13467077/9a31c95c-e0d7-11e5-8d05-038749b0fbdb.png)

See the lines of space below the topmost track? That's all the microphone outputs of a drum library. They display no audio information other than level meters, but taking up a huge chunk of space in the arranger view, especially when zoomed in. It will fire up your frustration during your working sessions, taking up scrolling time which you could have saved for music making, so we are better off throwing them out of our sight.

<br>

There is a very nice built-in function within REAPER called the **Track Manager**, activated by pressing **Ctrl + Shift + M** by default. This little thing shows a list of all of your tracks within a project along with their status.

![Track Manager screenshot, with setup to hide TCP of indivisual microphones of the drum plugin](https://cloud.githubusercontent.com/assets/12930244/13467078/9b80ca74-e0d7-11e5-9cc5-e6b67a8143e8.png)

Included are the two parameters we are utilizing, labeled as TCP (Track Control Panel) and MCP (Mixer Control Panel).

![TCP and MCP are right beside Name parameter in Track Manager](https://cloud.githubusercontent.com/assets/12930244/13467340/cc5b544c-e0d8-11e5-8386-65f4e23d5284.png)

By default, each track is showing in both arrange view and mixer view, which may be good for audio tracks where the format of input and output is consistent, but not in the case with MIDI instruments. Just look at the drumset below with all of those microphone routing!

![List of all my drum microphone tracks TCP from BFD](https://cloud.githubusercontent.com/assets/12930244/13467071/9a003b4e-e0d7-11e5-970b-b66b66cfec1c.png)

To make the screen cleaner, we would like to see MIDI tracks in arrange view, and audio tracks solely in the mixer view. So open up your Track Manager, **uncheck the TCP dot** for **any audio tracks** that are routed as the **output of a MIDI instrument**, and **uncheck the MCP dot** for those that contain **only MIDI information** (you can click and drag across multiple tracks to speed up this process).

![Clearing up to only drum MIDI track and a jamstix track to generate MIDI](https://cloud.githubusercontent.com/assets/12930244/13467073/9a04aba2-e0d7-11e5-8322-d69512412171.png)

You may see now that our drum folder has become a lot cleaner to look at hasn't it?

Another use of this technique is when you are programing **MIDI guitar or bass**.

![Guitar Channel <- Guitar DI](https://cloud.githubusercontent.com/assets/12930244/13467074/9a064bb0-e0d7-11e5-82b0-94c077726904.png)

You can have the DI track with MIDI and instrument FX on the arrange view, outputting the DI audio signal. This signal goes into the folder track above, which contains all of the audio signal effects such as pedal and amp plugins.

In the track manager, we can set the track visibility like this:

![Hide TCP and show MCP on Guitar Channel track, do the reverse for Guitar DI track](https://cloud.githubusercontent.com/assets/12930244/13467072/9a012fcc-e0d7-11e5-9f2c-546a30878d20.png)

<br>

This way, you are only seeing the MIDI items in track view, and the audio signals in the mixer view. As a bonus of this technique, you can do quick bypass of the audio plugins to A/B the DI and the wet signal. If you care, you can put all mixing FX in another parent folder above the amp signal track so you can bypass them quickly to do any dry/wet comparison.

<br>

This function has helped me quite a bit when doing production work, since cleaner screen usually leads to a clear mindset. Feel free to experiment with the track manager for any other creative or productive uses!