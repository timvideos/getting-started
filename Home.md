---
{'layout': 'default', 
 'title': 'Getting Started!',
 'tagline': 'How to start contributing to TimVideos.us'}

---

# Welcome!

Welcome to TimVideos.us!  We're busy working on several exciting video-related open source projects right now.  Whether you want to work hands-on with hardware or code in a variety of languages, we have a project for you.  Join the team! 

This information should help you explore the projects and learn how to get started.

## Getting Started

Google Summer of Code (or similar project-based program) students should first head over to the [[Summer Of Code]] page and then head to our [[Ideas]] page.

If you are just interested in contributing and this is your first visit, head over to the [[Ideas]] page.

If you have a Digilent Atlys Board, head over to the [HDMI2USB Wiki](https://github.com/timvideos/HDMI2USB/wiki) and specifically look at the [Getting started with Atlys Board](https://github.com/timvideos/HDMI2USB/wiki/Getting-Started-with-an-Atlys-Board) page.

## The Projects

| Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | <small>(C)ode<br>(M)ailing&nbsp;List<br>(I)RC</small>| Description | Contributors |
| -------- | ---------------------------------------------------- | ------------ | ----------- |
| <img src="http://code.timvideos.us/favicon.ico" class="favicon"> **TimVideos.us** | [(C)](http://github.com/timvideos) [(M)](https://groups.google.com/group/timvideos) [(I)](irc://irc.freenode.org/#timvideos) | Parent project. | |
| GST-switch       | [(C)](http://github.com/timvideos/gst-switch)&nbsp;[(M)](https://groups.google.com/group/gst-switch)&nbsp;[(I)](irc://irc.freenode.org/#gst-switch)  | GST-switch is a replacement for DVSwitch, and is based around GStreamer (described below). GST-switch aims to do interactive live mixing of incoming video streams, designed to meet the needs of conference recording. | duzy, mithro |
| speakertrack     | [(C)](http://github.com/timvideos/gst-switch) | Speakertrack is an extension to GStreamer and gst-switch to allow automatic tracking of speakers using remotely-operated PTZ cameras rather then relying on a camera operator. | duzy, mithro |
| streaming-system | [(C)](http://github.com/timvideos/streaming-system) [(M)](https://groups.google.com/group/timvideos) [(I)](irc://irc.freenode.org/#timvideos) | Streaming-system is a comprehensive video conferencing package that allows users to set up and deploy a live streaming system. It includes a website, setup scripts and watchdog code. | mithro, iiie, |
| HDMI2USB         | [(C)](http://github.com/timvideos/HDMI2USB) [(M)](http://github.com/timvideos/HDMI2USB) [(I)](irc://irc.freenode.org/#irc) | HDMI2USB is hardware based on a Xilinx Spartan 6 FPGA for capturing HDMI, DVI and DisplayPort data. It facilitates presentation and video sharing with remote users and allows for recording for later viewing.  | mithro, |

### Partner Projects

Projects not developed by TimVideos.us, but extensively used by us.

| Name     | <small>(C)ode<br>(M)ailing&nbsp;List<br>(I)RC</small>| Description | Used By |
| -------- | ---------------------------------------------------- | ----------- | ------- |
| <img src="http://www.flumotion.com/media/images/favicon.png" class="favicon"> **flumotion**  | [(C)](https://code.flumotion.com/cgit/) [(M)](http://lists.fluendo.com/mailman/listinfo) [(I)](irc://irc.freenode.org/#fluendo) | Flumotion is an award winning streaming software created in 2006 by a group of open source developers and multimedia experts. Flumotion Streaming Software allows broadcasters and companies to stream content live and on demand in all the leading formats from a single server. | Used for live video streaming. |
| <img src="http://gstreamer.freedesktop.org/images/favicon.png" class="favicon"> **gstreamer**  | [(C)](http://cgit.freedesktop.org/gstreamer) [(M)](http://gstreamer.freedesktop.org/lists/) [(I)](irc://irc.freenode.org/#gstreamer) | GStreamer is a library for constructing graphs of media-handling components. The applications it supports range from simple Ogg/Vorbis playback, audio/video streaming to complex audio (mixing) and video (non-linear editing) processing. Applications can take advantage of advances in codec and filter technology transparently. Developers can add new codecs and filters by writing a simple plugin with a clean, generic interface. | Used by **gst-switch**, **speakertrack** and **flumotion**. |