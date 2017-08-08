+++
author = "RCJacH"
title = "Rhythm in Hexadecimal - Part 1"
description = "Understanding rhythmic patterns with hexadecimal values."
tags = ["Theory", "Rhythm"]
categories = ["Musicianship"]
date = "2015-08-08"
customjs = "vextab-div.js"
+++

### Observation

I've always been unfond of the typical academic rhythmic teachings around the world. Yes they do provide indepth explaination of rhythms in both macroscopic and microscopic level, however they lack a quick solution for the students that haven't spent months or years of training in rhythm playing. Some twenty years ago in the western world, children are taught musicianship at a very early age, and with musical influence from the family and some spare practising time, they can get quite advanced in musical learning. Just look at all the high school orchestra/concert bands/jazz bands/choirs in the west, they are playing some complicated works, singing polyphonic pieces with somewhat advanced harmonies, not to mention the amazing drumline groups. 

This doesn't happen often in China. Mainly because of lack of practical music training, and arguably ignorance. People find practising musicianship not as important as calculas or linguistics. The result is when children grow up to play an instrument or singing more sophisticated songs, they find themselves spending months learning the basics, or singing half a beat behind the backing tracks without realizing.

Now let me introduce to you my method of rhythmic learning.

<br>

### The Logic Behind Rhythms

Rhythm is about **dividing time**, so we think in terms of *subdivisions* and *combinations* rather than <del>fast</del> and <del>slow</del>. If you look at every single element of rhythmic values, you will find that there are too many combinations to grasp, and there will never be enough pages to list all of them. Therefore, we should stop trying to understand the individual elements, and move our focus onto the possible occurance of combined patterns.

To my understanding, the function of rhythm patterns in a single voice are split into two layers, the basic groove layer and the variation layers. We will focus on the groove layer first, and figure out the variation layer in another post later on. Also, this article assumes that the readers have a basic understand of rhythm, I will write about fundamental theory in other articles.

Now here's the catch. Unless you are doing some sophisticated modern avant garde style of composition, you are less likely to experience multi-layered tuplets across several beat or measures. What is common is that you will have rhythm closely associated with the beat, or some division of it. Therefore, if you want to get the rhythm down fast, you just need to categorize everything into beats, then have a symbol for each variation of patterns for each beat. Yes, **ONE** for each beat! If you have 4 beats per bar, you only need to write 4 symbols (in simple situations). Easier to dictate, easier to memorize.

So what goes into each beat? To my observation, there are only three elements that happens within each beat. 

##### First, a pattern of 4 notes.

##### Second, a pattern of three notes.

##### Third, a tuplet full of notes.

Let me explain each element separatedly.

<br>

### The 4-note Patterns

As an analogy, think of four empty boxes side-by-side with four apples, we could decide to place the apple into each box or not. This will result in 16 different possible combinations of empty and filled boxes - from all empty to all filled. I have named each instance logically using hexidecimal values, thus the title of this artical: **Rhythm in Hex**. The hexidecimal system is one that uses sixteen distinct symbols to represent a single digit, often using 0-9 for values under ten, and the alphabet A to F for values above 9. Let's make full use of them.

There are potentially 5 different classes of patterns with 4 notes, being: all empty; Sequences with only 1 note; Sequences with 2 notes; Sequences with 3 notes; and all 4 notes filled in. To make it simplier, we can assign the number "0" for all notes off,

<!-- ![XXXX](/img/rhythm/n0.png) -->
{{< vextab clef="none" barWidth="100" notes=":16 ## ## ## ##" >}}

and assigning the maximum "F" for all notes on

<!-- ![1234](/img/rhythm/nF.png) -->
{{< vextab clef="none" barWidth="100" notes=":16 B-B-B-B/4" >}}

(remember to keep the alphabet in UPPERCASE for readability). That left us with three classes.

With sequences that have only 1 note, we can simply assigning “1” “2” “3” or “4” to the pattern where the note-on happens, so a pattern with a note on the second position

<!-- ![X2XX](/img/rhythm/n2.png) -->
{{< vextab clef="none" barWidth="100" notes=":16 ## B/4 ## ##" >}}

will be labeled "2". Similarly, with sequences containing 3 notes, we can think of them alternatively as sequences with only one rest, and apply the same logic with “A” “B” “C” “D” to represent the position of the rest, so the pattern

<!-- ![12X4](/img/rhythm/nC.png) -->
{{< vextab clef="none" barWidth="100" notes=":16 B-B/4 ## B/4" >}}

can be simply written as "C". Now we only have one remaining class, the pairs, yay.

We have numeral 5-9 and the alphabet E left to use to represent the pairs. There are few methods of approach for this situation, and the one I chose was to consider the pairs as 3 groups based on note spacing. 


The first group containing pairs of consecutive notes. 

<!-- ![12XX](/img/rhythm/n5.png)![X23X](/img/rhythm/n7.png)![XX34](/img/rhythm/n9.png) -->
{{< vextab clef="none" barWidth="100" notes=":16 B-B/4 ## ## | ## B-B/4 ## | ## ## B-B/4" >}}

we can assign "5", "7", and "9" to them representing pairs at the beginning, middle, or at the end of the pattern.


Then there are pairs with a rest in between.

<!-- ![1X3X](/img/rhythm/n6.png) ![X2X4](/img/rhythm/n8.png) -->
{{< vextab clef="none" barWidth="100" notes=":16 B-B/4 ## ## | ## B-B/4 ##" >}}

we can use "6" and "8" to represent these two. 


At last, the group 

{{< vextab clef="none" barWidth="100" notes=":16 B/4 ## ## B/4" >}}

<!-- ![1XX4](/img/rhythm/nE.png) -->
will be represented using the final unused alphabet "E", completing all of the 4-note patterns.

<br>

Continuing to [part 2 of Rhythm in Hex]({{< ref "Rhythm-in-Hex-part-2.md" >}}).
