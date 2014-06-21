---
layout: default
title: gst-switch
tagline': A modern Gstreamer based software video mixer
category: projects
tags: project home
---

# gst-switch

 * [(Code)](http://github.com/timvideos/gst-switch)
 * [(Mailing List)](https://groups.google.com/group/gst-switch)
 * [(IRC Channel)](irc://irc.freenode.org/#gst-switch)
 * [(Bug Tracker)](http://github.com/timvideos/gst-switch/issues)

### gst-switch is written in C and uses GStreamer

gst-switch is a software based system for interactive live mixing of incoming video streams, designed for the needs of conference recording.

### Functional diagram
[Edit](https://docs.google.com/a/mithis.com/drawings/d/18sU5uECrPgQzxLWzc7RaYWRs9F3aocx0chf16-yxBEY/edit)

<img src="https://docs.google.com/drawings/d/18sU5uECrPgQzxLWzc7RaYWRs9F3aocx0chf16-yxBEY/pub?w=1874&h=971" style="width: 100%;">

### Documents

 * [gst-switch design document](https://docs.google.com/a/mithis.com/document/d/1_blj8u6ToyaZwdikCmUSGFwdpoAYNCyDYEHgXtPL8mI/edit#heading=h.bhhck1xjratt)

### DVSwitch and gst-switch

> DVSwitch is a digital video mixer intended for interactive live mixing of
> several incoming DV video streams. It was originally designed for the needs
> of DebConf; It has now been used for various other conferences, meetings and
> live musical performances.

gst-switch project is intended to be a replacement of [DVSwitch][DVSwitch] based on [GStreamer][GStreamer]. It aims to do interactive live mixing of incoming video streams, designed for the needs of conference recording.

***

# Parts of gst-switch
### gst-switch server

The gst-switch server is the part which actually does the real work. It accepts incoming video streams and then chooses one to output.  It also supports a limited number of ways to mix a maximum of 2 streams at once.

The server has a constant stream output stream. This stream is well formed for a given format set on start (IE 720p60 or 1080p50 or similar). Both video output and audio output regardless of any problems in inputs (such as corruption or dropped frames) and even if no input streams remain.

### gst-switch gui

The user interface should be a program which connects to the gst-switch server and allows a user to configure features about the server.

The user interface;
 * Shows previews of all the incoming videos (and shows audio levels).
 * Lets you select which incoming video should be sent to the output.
 * Lets you select which incoming audio should be sent to the output (independent of video).
 * Lets you select Video 1 and Video 2 in PIP mode.
 * Lets you position the PIP in Option 2.
 * Lets you set the fade delay.


### gst-switch streamers

Take data from a [GStreamer][GStreamer] pipeline and send it up to the gst-switch server.

***

# speakertrack

### speakertrack is written in C and uses OpenCV

speakertrack is a bunch of extensions to [GStreamer][GStreamer] and gst-switch to allow automatic tracking of speakers using PTZ cameras rather then needing a camera operator. 

### Documents

 * [Spec (Stage 1) - Extend "facedetect" into speaker tracking](https://docs.google.com/a/mithis.com/document/d/1Fj4zsJviOPCirIySUfQ5_NP_MXln_DksvqC01742q78/edit)
 * [Spec (Stage 2) - Speaker Track modularisation + gst-switch integration](https://docs.google.com/a/mithis.com/document/d/1Fj4zsJviOPCirIySUfQ5_NP_MXln_DksvqC01742q78/edit)