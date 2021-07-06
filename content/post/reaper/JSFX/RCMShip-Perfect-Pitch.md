+++
author = "RCJacH"
title =  "REAPER - RCMShip Perfect Pitch"
tags = ["Production", "REAPER", "JSFX", "Script","Musicianship","Exercise","Synth"]
categories = ["Scripts & Templates"]
description = "A JSFX game for training Absolute/Perfect Pitch."
date = "2018-03-28"
alias = ["/blog/reaper-jsfx-rcmship-perfect-pitch/"]
+++

Download from here: [RCMShip Perfect Pitch on Github](https://raw.githubusercontent.com/RCJacH/ReaScripts/master/JSFX/Game/RCMShip%20Perfect%20Pitch.jsfx)

or Simply add my repository in ReaPack:

[RCJacH ReaPack Repository](https://github.com/RCJacH/ReaScripts/raw/master/index.xml)


# Description

RCMShip (MShip stands for musicianship) Perfect Pitch is a little game for exercising Perfect Pitch, the ability to recognize notes without any reference, using adaptive method of randomization.

![RCMShip Perfect Pitch](https://user-images.githubusercontent.com/12930244/38019068-3433a686-32a9-11e8-83fa-f0d44089f358.png)

# How to Play

1. Click **START**, the synth will play a tone.
2. Guess the name of the tone by clicking on one of the note names.
3. Upon answering, you will be shown the correct answer, and your own answer if it differs.
4. Click **Next** to continue to next round.

# Features
  
## *Adaptive*
Upon answering, the chance of appearance for the current note will be changed based on whether you've answered correctly and the win stream of the note.

## *Selective*
Click on **Setup** to redirect to note setup page, where you can either manually select which note(s) to include in the game, or randomly generate a set number of notes based on currently selected ones.

## *Configurative*
Click on **Config** for further preferences, such as Volume, note length, base octave, and octave span (octaves above base octave for note generation). You can also switch to MIDI mode so you can use samples or other synth as sound source.


# In-depth Explanation

## Ideology

From wiki:
"Absolute pitch (AP), widely referred to as perfect pitch, is a rare auditory phenomenon characterized by the ability of a person to identify or re-create a given musical note without the benefit of a reference tone."

AP is commonly believed as something innate that you are born with, while there are several studies and commercial products that are trying to teach AP with no proven success. However, while audio engineers spend years training their ability to recognize change of amplitude, frequency, timing, and other aspects of audio production, few people do any exercise related to AP deliberately. Thus the claim of AP being innate might not hold much credibility.

From what I know, there are roughly three categories of training methods regarding AP: 

1. Years of regular instrumental practice, being familiar with all aspect of sound of the instrument. Most people with the ability of AP that I know of are also considerably virtuosos of an instrument, especially ones such as Piano or Violin where you need to know the name of the note that you are playing, less so on guitar where most people think in playing position rather than music notation. Some adequate guitar players do have the ability to recall the playing position of a heard pitch rather than naming it, which I consider a variation of AP. However, many people with this type of AP are limited to certain instrument or timbre, for example, some pianists with AP can only distinguish notes with piano-like timbre, failing to do so with notes played from a guitar.

2. Using frequently occurring tones from daily life as a reference to notes, such as the dings of microwave, dialing tones of phone, horns from subway trains, and snoring sounds of family member. Whenever a periodical frequency occurs, try to find the corresponding note name or frequency, then make a mental note of it. If it repeats, you will be reminded of the sound of the frequency, and if the repetition happens a lot, you will become familiar with the note.

3. Deliberate practice, usually using some sort of randomly generated frequency or notes, and fine-tuning one's assumption with immediate result checking mechanism. This is the method that this game is based on, and likely all AP related games are based on.

What differentiate this game from others of the same method is that, while other games generate random notes randomly – perhaps with some level selections or timbre selections – this game *tries to be adaptive with the note generation*, meaning that the better you get at recognizing a specific note class, the less chance for it to appear, and verse versa. This way the player can focus on the ones that they are not familiar with – until they become familiar with it, which is the purpose of this game.

Note that the 3 categories of training methods listed above are not to be consider as "either or", but should be worked with simultaneously. Use whatever that works.

## Controls

There are two types of control in this game:

1. Buttons – click and release to trigger an action. ![Button from RCMShip Perfect Pitch](https://user-images.githubusercontent.com/12930244/38019070-349af44e-32a9-11e8-9ee2-1cb4676e7e2e.png)
2. Drag-boxes – drag the box to change the value. Drag-boxes have a dot on the left side, with vertical positions referencing the percentage of the current value to the value range of the controller.![Drag-box from RCMShip Perfect Pitch](https://user-images.githubusercontent.com/12930244/38019073-35655ce8-32a9-11e8-814c-12b286beea98.png)

Colors are to distinguish the current status of the control.

+ Dark gray means inactive (cannot trigger).
+ Light gray means active and can be triggered, but not of top priority.
+ Yellow colored controls are prioritized ones, meaning ones that will continue the game.
+ Green and Red are used to indicate the correct and wrong note.
+ Green is also the color of **Replay**, and indicates settings that you can drag to chance value.
+ Red buttons are the danger zone, clicking will result in destrutive action. Currently applies to **None\All** and **Reset**.
+ Blue buttons lead to a setup/configuration page.

### Score Button
There is a **Score** Button on the first page row 4 column 2, default to **Ratio**. This is the way to show your current progress, with left column being correct guesses and right being wrong guesses per note. Click to change it to **Percent**, **Score** (hide score), and cycle back to **Ratio**.

### Setup Page
Click **Setup** to enter the note setup page.
![Setup page from RCMShip Perfect Pitch](https://user-images.githubusercontent.com/12930244/38019375-f70c90dc-32a9-11e8-868f-0e3425f38a22.png)

On this page, you can choose which notes are included in the randomization by clicking on the note names directly. Active notes are colored in green while inactive notes are grayed out.

There is also a **None** or **All** button row 4 column 2, which set active notes to either all notes or no notes for quick assignment.

To the right is the **Random** button + drag-box. This button generates a total number of notes, including the ones that are manually set. For example, if you want 5 notes including C and F, you need to manually select only C and F (using **None** button can speed up the process), then drag the **Random** button down until the number shows 5, then release the dragging and click on the **Random** button. If you are unsatisfied with the result, just click the button again and it will generate a new set of 5 notes including C and F.

### Config Page

Click **Config** to enter the configuration page.
![Config page from RCMShip Perfect Pitch](https://user-images.githubusercontent.com/12930244/38019376-f7462df6-32a9-11e8-89aa-1467549b57ee.png)

This page includes settings that affect the game engine. All drag-boxes have a label panel on the left stating what the value is for.

**Volume**: The master output volume of the generated sine wave. Not affecting MIDI output.

**Note Length**: Playback length of each note, affecting both audio and MIDI output.

**Base Octave**: Consider this as the lowest octave for the randomization. Default to 4, meaning that the lowest note is MIDI number 5 (start counting from 0) * 12 = 60.

**Octave Span**: How many octaves the randomization takes place. Set above 0 to generate notes beyond a single octave.

**Pitch Name**: How pitch are written:

+ *C*: Using the most relevant notes for C major scale using secondary dominant, meaning except for Bb (V7/IV), all other black keys are sharp notes.
+ *Sharp*: All black keys are named with sharps, e.g. C# D#.
+ *Flat*: All black keys are named with flats, e.g. Db Eb.

**Sine**/**MIDI**: This button switches output method from Audio (sine wave) to MIDI.

**Reset**: Destructively reset your current score.


Download from here: [RCMShip Perfect Pitch on Github](https://raw.githubusercontent.com/RCJacH/ReaScripts/master/JSFX/Game/RCMShip%20Perfect%20Pitch.jsfx)

or Simply add my repository in ReaPack:

[RCJacH ReaPack Repository](https://github.com/RCJacH/ReaScripts/raw/master/index.xml)