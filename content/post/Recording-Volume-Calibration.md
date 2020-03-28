---
author: RCJacH
title: Recording Volume Calibration
description: Why we are recording at 24 bit and averaging around -18dBFS.
tags: [Recording, REAPER]
categories: [Music Production]
date: 2016-02-06
---

I have seen many people, from amateurs to professionals (in China), myself included, struggling with digital volume level calibration while tracking. Many people do not bother having a standard with levels and many lack the understanding of impact of leveling in tracking, resulting in level inconsistency between tracks or even takes. It took me quite a while to come across articles explaining at what level we should be recording at and why, and thus helped me greatly by providing recordings at consistent level while removing any doubts of "am I recording too hot or too quiet?"

<br>

I would like to share this idea with as little terminology as possible for the purpose that people with little technical background can understand as well, so I will not touch on sample rate, quantization, and dithering. However, there is one central concept that I need to explain. **Bit Depth**. 

<br>

## What is Bit Depth?

*Bit depth* is a term used in digital audio recording, recording to audio into a computer of some sort that is, referring to the digits of binary numbers used to represent the **dynamic range**, the level difference between the loudest and of quietest peaks, of your audio signal. To avoid touching upon sampling basics, so I will explain bit depth with an analogy.

<br>

Imagine bit depth as the *size of your newly bought house or condo*. The meter square is calculated as 6 times the number of bits, so if it's an 8 bit audio, you would have 6 x 8 = 48dB (or dBFS, decibels full scale, unit for measuring sound volume level in the digital domain) of dynamic range to use for your audio. 

<br>

Now imagine the audio signal as your furniture:

![Audio Signal](/img/Content/RVC/Audio Signal.png)

They are placed against the surrounding walls, which is the digital noise floor sitting at the bottom of your dynamic range, looking like this when zoomed out:

![Noise Floor](/img/Content/RVC/Noise Floor.png)

<br>

The bigger the house, the more furniture we can put into our house. If our apartment is a 6m<sup>2</sup> room, the only thing we can stick into the room would be a single size bed, squeezing up walking space that is scarce to begin with. We want a full set of house furniture, and a full range of dynamic, decorating each room and each difference section of our musical piece. That requires a bigger house.

<br>

Comparing to the modern recording in 24 bit, traditional recordings and CD quality wave files are in 16 bit, a 96 dB dynamic range, which is sufficient enough for any playback purposes for ever. Why? For two reasons. First, we have around [50dB SPL of noise floor in normal rooms](http://www.head-fi.org/t/415361/24bit-vs-16bit-the-myth-exploded#post_5533890), any sound played below that noise floor will be in audible. Adding 96dB of dynamic range on top of that, the loudest peak would be at 146dB SPL, more than enough to [cause some permanent health damages to the listeners](http://www.gcaudio.com/resources/howtos/loudness.html). Another reason is that the widest dynamic range of commercial recordings is 60dB. Some popular songs contain [as little as 5dB of dynamic range](http://dr.loudness-war.info/). What's in the other 91dB? Noise, period.

<br>

Translating into the house analogy, most people would consider that a 96m<sup>2</sup> condo is large enough for daily lives unless they are considering building a dance floor in the middle of their living room. Bigger houses cost more money just as higher bit depth cost most hard drive spaces, exponentially. For every one bit we increase, we are doubling the number of values that we are storing. So the difference between 16 bit and 24 bit isn't just a 2<sup>8</sup> = 256 values of 8 bit, the actual difference in the number of values stored per captured sample is 2<sup>24</sup> – 2<sup>16</sup> = 16,711,680!

<br>

So why do we still need 24 bit for recording?

<br>

**Avoiding noise and increasing headroom.**

Because we are recording through microphones, pre-amps, and audio interfaces, every single piece of hardware in the signal chain will generate some level of noise by itself, normally [around 70 - 80dB](https://www.gearslutz.com/board/5080834-post5.html) below the actual recorded signal, call the Signal to Noise Ratio or SNR. If we are recording signals with dynamic range of 30dB (See a [rough list of instrument dynamic range](http://www.samplemodeling.com/forum/viewtopic.php?p=4254#p4254)), we are likely adding that 30dB to the 80dB hardware noise, which is 110dB, below the 96dB noise floor, therefore reducing the SNR by 14dB. However, if we are recording to a 24 bit audio file, we will have 24 * 6 = 144dB of dynamic range which is far greater than 110dB, thus capable of maintaining original SNR. Of course, the real theory is way more complex than what I can possibly explain within one paragraph, I'm keeping it short for the purpose of introducing this idea.

<br>

Furthermore, the modern production sound is often constructed with tons of compression, which will reduce the signal to noise ratio, increasing the noise floor by a bit. Multiply that by the number of compression stages during post-production, number of tracks, and further compression done by audio streaming services, we are pushing the noise floor up quite a bit. With that in mind, we need to strive for greater SNR at the source of our recordings.

<br>

The other issue to watch out for is headroom. Headroom refers to the amount of extra space we are leaving for the transients that occasionally exceeds the average level of our audio without clipping (again simplified for better understanding). What is clipping? Clipping is a nasty wave distortion that cuts the top of the audio flat:

![Clipped Sine Wave](/img/Content/RVC/Clipped Sine Wave.png)

Generating tons of harsh harmonics:

![Frequency of a 40HZ Sine Wave Clipped at -6dB](/img/Content/RVC/Clipping Freq.gif)

It is the red dot on the top of your audio track:
![Clipped Track](/img/Content/RVC/Clipped Track.png)

<br>

We should avoid hard clipping in most of our recordings, especially before we fully acknowledge the sound of clipping, which is why we need to leave some headroom for our recording. If the average of our signal is around -6dB showing shown on the input meter, any transients 6dB higher than average will result in clipping. Things are more exaggerated with vocal takes, since we want to build the dance floor! We want to scream our heart out and then whisper out the most sincere message, sometimes within one phrase. Therefore if we are setting up our input while whispering or humming, we will definitely hear a sharp unnatural distortion when the chorus comes in.

<br>

## Conclusion

As you can see from above, since we have more space with 24 bit depth, we should make good use of that. Below is a list of things to watch out for when recording:

- Record in *24 bit* audio.
- Prior to the actual recording process, play the loudest part of the section and watch the input meters.
- Use the first **volume/gain control** in your signal chain (usually the pre-amp) to adjust the input level so it's averaging around -18dB with occasional peaks around -10dB.
- If you want to drive the saturation of your pre-amp, you can turn up the gain using the last step as a start point, then lower the output volume of your pre-amp accordingly so the output is still around -18dB.
- DO NOT adjust the track volume fader of your DAW (unless you are using pre-fader metering), so you can get a clear sense of the input level.
- If you have trouble hearing the recording track, turn down other tracks and turn up monitoring gain.
- Again DO NOT touch the track volume fader.
