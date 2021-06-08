---
author: RCJacH
title: Rhythm in Hexadecimal - Part 2
description: Understanding hex indication with triplets, tuplets, and others.
tags: ["Theory", "Rhythm"]
categories: ["Musicianship"]
date: 2015-10-08
customjs: "vextab-div.js"
---

Continuing from [part 1 of Rhythm in Hex]({{< ref "Rhythm-in-Hex-part-1.md" >}}).

### THE TRIPLETS

Done with the 4-note patterns, we can apply the same principle to the triplets as well, limiting to only 8 patterns in total, named: 0, 1, 2, 3, A, B, C, F. Can you guess which pattern each symbol represents?

<br>

Let's review them in a list:

|			4-note 				| 			3-Note 				| Name  |
|:-----------------------------:|:-----------------------------:|:-----:|
| ![XXXX](/img/rhythm/n0.png) | ![XXX](/img/rhythm/t0.png)  |	0   |
| ![1XXX](/img/rhythm/n1.png) | ![1XX](/img/rhythm/t1.png)  |	1   |
| ![X2XX](/img/rhythm/n2.png) | ![X2X](/img/rhythm/t2.png)  |	2   |
| ![XX3X](/img/rhythm/n3.png) | ![XX3](/img/rhythm/t3.png)  |	3   |
| ![XXX4](/img/rhythm/n4.png) | 								|	4   |
| ![12XX](/img/rhythm/n5.png) | 								|	5   |
| ![1X3X](/img/rhythm/n6.png) | 								|	6   |
| ![X23X](/img/rhythm/n7.png) | 								|	7   |
| ![X2X4](/img/rhythm/n8.png) | 								|	8   |
| ![XX34](/img/rhythm/n9.png) | 								|	9   |
| ![X234](/img/rhythm/nA.png) | ![X23](/img/rhythm/tA.png)  |	A   |
| ![1X34](/img/rhythm/nB.png) | ![1X3](/img/rhythm/tB.png)  |	B   |
| ![12X4](/img/rhythm/nC.png) | ![12X](/img/rhythm/tC.png)  |	C   |
| ![123X](/img/rhythm/nD.png) |								|	D   |
| ![1XX4](/img/rhythm/nE.png) |								| 	E   |
| ![1234](/img/rhythm/nF.png) | ![123](/img/rhythm/tF.png)  |	F   |

I'm sure all of you are thoughtful enough to realize the following problem: How do we distinguish the difference between 4-note pattern and 3-note pattern if they share the same name?

You are right, we do need a method to tell which is which, let's look at the indicators.

<br>

### INDICATORS

The idea of indicators is that we can put a symbol before each value so that we know which group of rhythm the name is recalling. Earlier I mentioned that there are three elements of possible contents within a beat, now we are assigning a symbol to indicate each element. For ease of memorization, we are using lowercased "n" as "eveN" to represent the 4-note patterns, lowercased "t" as "Triplet" to represent the 3-note patterns, and finally a lowercased "u" as "tUplet" followed by a digit representing the tuplet type of patterns. Therefore, n6tC represents 2 eighth notes followed by two eighth note triplets with an eight note triplet rest afterwards. We are using lowercased alphabet to distinguish indicators from the patterns themself.

In case you are wondering, since swing isn't a rhythm but a groove, thus we do not need to mark swing as a type of rhythm.

The second rule of the indicators is that every indicator affects all of the following patterns until another indicator is mentioned. Similar to accidental on staff, you do not need to write repeating indicators, so writing **t22n3E5** will result in two patterns of triplets and three patterns of even. (I'm using barlines to indicate beats here.)

![t22n3E5](/img/rhythm/t22n3E5.png)

<br>

### Indicating of subdivisions

Up until now, we have been dealing with rhythmic patterns over the duration of a beat. What do we do when there are multiple patterns within a beat or one single pattern over many beats?

The answer is that we need an indicator telling us which subdivision the pattern belongs to. By default, the subdivisions are 16th for "n", and 8th triplets for "t", because they divide a beat by 4 and 3 respectively. We can use an alphabet to indicate the length of individual item within the pattern. I used the first letter of each word in american standard:

<!-- ![](/img/rhythm/w.svg){:.rhythmnote style="display:inline;"} -->
* "w" for whole notes: {{< vextab barWidth="100" clef="none" notes=":w B/4" >}}

<!-- ![](/img/rhythm/h.svg){:.rhythmnote style="display:inline;"} -->
* "h" for half notes: {{< vextab barWidth="100" clef="none" notes=":h B/4" >}}

<!-- ![](/img/rhythm/q.svg){:.rhythmnote style="display:inline;"} -->
* "q" for quarter notes: {{< vextab barWidth="100" clef="none" notes=":q B/4" >}}

<!-- ![](/img/rhythm/e.svg){:.rhythmnote style="display:inline;"} -->
* "e" for eighth notes: {{< vextab barWidth="100" clef="none" notes=":8 B/4" >}}

<!-- ![](/img/rhythm/s.svg){:.rhythmnote style="display:inline;"} -->
* "s" is the standard sixteenth: {{< vextab barWidth="100" clef="none" notes=":16 B/4" >}}

then alternatively "r" and "x" representing thirtyseconds and sixtyfourth to differenciate from triplet and sixteenth, although you are less often to be using these two simply because you can use Tuplets to indicate them as explained in the next topic. Place the alphabet before the normal indicators, replacing "n" by default, and other attribute follows the normal indicator convensions.

So as an example, sEAtF1 (EA in sixteenth, F1 in eighth triplet):

<!-- ![1XX4 X234 123 1XX](/img/rhythm/sEAtF1.png) -->
{{< vextab barWidth="100" clef="none" notes=":16 B/4 ## ## B/4 | ## B-B-B/4 | :8 B-B-B/4 ^3^ | B/4 ## ## ^3^ |" >}}

and e3sAstFF (eighth 3 followed by sixteenth A on third beat, then two groups of sixteenth triplet pattern F):

<!-- ![XXXX 1X3X X234 123456](/img/rhythm/e3sAstFF.png) -->
{{< vextab barWidth="100" clef="none" notes=":8 ## ## | B-B/4 | :16 ## B-B-B/4 | B-B-B/4^3^ B-B-B/4 ^3^ |" >}}

both are two groups that equal to 4 beats.

<br>

### TUPLETS

The last element we will be looking at is the tuplets. What is a tuplet? A tuplet is simply a rhythmic element that divides the subdivision into a number of equal parts. For example, a quintuplet (a five-tuplet) is dividing the foundamental subdivision by 5. There is a bit of ambiguity on how the tuplet notation work on staff paper, for our purpose, we are solely using the tuplet to represent dividing the subdivision to minimize writing. Our goal is, to our best effort, notating a rhythmic line using two or less alphanumeric characters for each subdivision.

Since the hex might conflict with the numeric indications of tuplets, we shall add a backslash / to mark the end of the tuplet. Thus writing sFtBu5sB becomes this:

<!-- ![1234 1X3 12345 1X34](/img/rhythm/sFtBU5sB.png) -->
{{< vextab barWidth="100" clef="none" notes=":16 B-B-B-B/4 | :8 B/4 ## B/4 ^3^ | B-B-B-B-B/4 ^5^ | :16 B/4 ## B-B/4 |" >}}

A bit complex, can you clap this?

<br>

### SUSTAINABLE OR RESTED?

We have found our way to indicate almost every note position in a pattern, under most common subdivisions, with even, triplet, and tuplet timing. There is one last piece missing from the puzzle, and that is the duration. Indeed, duration is a bit difficult to define when we are dealing with a general pattern rather than individual note. I have used only values of the subdivision for educational purpose, since you will count 4 notes when you see ![1X34](/img/rhythm/nB.png) while might only count 3 when it is written as ![1-34](/img/rhythm/B_.png).

Maybe it is better to be left for one's own interpretation. If you are writing on paper, and you have to indicate whether the pattern is sustained or rested, you can consider using an underline below the name, ie. <u>E8</u>61 means 

<!-- ![1--4 -2-4 1X3X 1XXX](/img/rhythm/E_8_61.png) -->
{{< vextab barWidth="100" clef="none" notes=":8d B/4 :16 B/4|tB/4 :8 B/4 :16 B/4 | B/4 ## B/4 ## | :q B/4|" >}}

<br>

### SUMMARY

After some practice of distinguishing and playing the above patterns, like how you are *supposed* to be practising, I'm sure you will become a lot quicker at dictating rhythmic component of a given music exerpt. There are some ambiguities in this system, such as that you can use the tuplet system to indicate triplets, or writing "t5" might generate same result as "tC", but we would like to ignore and avoid those to stick with the basics. ٩(˘◡˘)۶