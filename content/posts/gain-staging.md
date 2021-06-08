+++
title = "An Elaborated Summary of the Technique of Gain-Staging - 1. What and Why"
date = 2019-04-07T19:51:01+08:00
tags = ["Music Production", "REAPER", "Recording", "Mixing"]
categories = ["Music Production"]
description = ""
menu = ""
+++


# What is Gain-Staging


Gain-staging is essentially the practice of managing all static volume settings with a fixed reference point. Static volume setting is decibels of gain added or subtracted to a signal at one place in the signal flow, which remains unchanged through out the time span of the project playback. The goal of gain-staging is to ensure that any pair of input and output signals enclosing a signal processor chain match in average volume.


Yes, gain-staging is simply adjusting volumes, nothing else.


# What is NOT Gain-Staging


Just to clear up some ambiguity, gain-staging does NOT include the following procedure:

- **Compression**. Compression is dynamic distortion, where the application of the distortion curve depends on whether the input signal exceeds a specified threshold.
- **Volume automation**. Although a related technique, drawing automation makes the volume setting dynamic, and thus changing its purpose. Rather than to match volume of a pair of input and output signal, dynamic volume settings are used to emphasize a region of audio or to colorize with a distortion curve.
- **Changing the volume of tracks in relation to each other**. Although this requires setting static volume as well, the purpose is again different. What we are aiming for here is to balance the output volume of each track for aesthetic reasons, rather than the pair of input and output.


A question might raise up, "anyone can turn knobs or push sliders, especially for static volume which doesn't require trained ears to hear the differences, unlike gain reduction within compressors or decay time of reverbs, what makes gain-staging so special that it became almost a fundamental technique in the studio?" That is a valid question. In music production, usually, a technique is designed to achieve at least one of the followings: making better sound, saving time, saving money, or making clients happy. Gain-staging does none of that (well it does result in better sound indirectly). In fact, we have to spend extra time to constantly compare and correct gain settings for every stage of the signal flow, including but not limited to takes, tracks, FXs, groups, I/Os. So why bother with it at all?

Let's take a deeper look.

# Why Gain-Staging

There are three purposes for applying gain-staging in production: reliability, versatility, and capacity.

## Purpose 1: Reliability

Music production is one of the crafts where it is usual, or even expect, to have source materials that are varied from the norms. Even within the same genre, with same instrumentation, and performed by the same people, diversity in key, rhythm, or texture may require utterly distinctive or even opposite processing in post production. Thus it is important to have a reliable measuring system to make educated decisions during the recording and mixing stage, rather than depending solely on trial and error.

Reliability means receiving consistent output when feeding identical input. This sounds simple, but is rather difficult to achieve in practice when there are plenty of factors that will mutate the sound we are hearing. Ignoring the minor ones for now, such as brand model of cables or the stability of electricity, there are three things that will leave a greater impact on how sound is perceived.

First of all, the monitors.

### The Monitors

Whether they are big far-field studio speakers, smaller near-field ones, a pair of headphones or in-ear alternatives, the monitors will always have less precision in either frequency or dynamic responses than the digital signal, regardless of the price tag behind them. That's just the nature of analog equipments. However the imprecision of monitoring equipments will not hinder us as long as the output is consistent and predictable - not inducing frequency bumps or bizarre dynamic behaviors. By trusting our premium monitors, we can assume that the monitors will make the same sound when given the same input, and similar sound when given similar input. We can also make the deduction that if there is a difference between the sound from the monitors and our expectation, or at least when the pushing and pulling behavior of the speakers differ, then the raw signal must be different from the reference, and that's how we can decide what to do with our signal.

As the sound wave, being pushed and pulled by the speakers, undergo series of compression and rarefaction, we are experiencing the second major alternation of sound. This is the **space** which holds both the monitors and the listener (us), filled with a common medium for transmission we are familiar with, the **air**.

### Space and Air

Air is non-linear itself. [It dissipates higher frequencies hastily while leaving the lows untouched](http://www.sengpielaudio.com/calculator-air.htm). The dissipation is also affected by humidity and temperature, and temperature is always in a state of micro-fluctuation because compression heats it up and rarefaction cools it down! All those properties of air do change the sound wave subtly, but the effect falls belows our threshold of awareness, as long as we are within the recommended listening distance, when compared to the main influence of the space, the room.

Rooms have boundaries, and regardless of the materials used to create those boundaries, either thick and firm like concrete and bricks or thin and brittle like plasterboards, they will reflect sounds. Sound coming out from the speakers, when colliding into walls, the ceiling, or the floor, will bounce off the harder surfaces, and merge into the newer signal as reverberation. This reverb will make our sound beautiful, in the same way as the bathroom thickens and diffuses our voices when we sing in the shower. That's all good, but what's wrong with making our sound beautiful by drowning it in physical room reverbs?

There are two reasons. First of all, the beauty of that room reverb resides only in *our* room, and when our music is played outside of that specific location and placement, the reverb will be missing from the audio, leaving our music dry and dull. The second reason is that when rooms are small, or small enough to have sound bouncing between parallel walls, there will be [room modes](https://en.wikipedia.org/wiki/Room_modes), the collection of resonances of particular frequencies based on the shape of the room when it is excited by acoustic energy. Without going further with the details such as [nodes and antinodes](https://en.wikipedia.org/wiki/Node_(physics)) of [standing waves](https://en.wikipedia.org/wiki/Standing_wave), what we really need to know is that unless we are listening in the perfect monitoring environment - an open field with absolutely no source of noise - we will have to deal with some frequencies louder and some frequencies quieter, even to the extreme of having ringing resonances or silence. 

We can minimize the impact of the room by adding acoustic treatments, with calculated measurements from the professionals at a price, however, there are something that money can't buy, not even with m*stercard.

### The Human Ears

(To Be Continued)