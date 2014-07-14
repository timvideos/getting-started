---
layout: default
title: Getting Started
tagline: How to start contributing to TimVideos.us
tags: home
published: true
---

# Welcome

**Welcome to TimVideos.us!**

**TimVideos.us** is a _group_ of exciting projects which together create a system for doing both _recording and live event streaming_ for **conferences**, **meetings**, **user groups** and **other** presentations. 

We hope that, through our _projects_, the costs and expertise currently required to produce live streaming events will be reduced to near zero. We wish to develop a system where everyone has the ability to record presentations and host live remote participants across the globe.

Whether you want to work hands-on with hardware or code in a variety of languages, we have a project for you. Join the team! This information should help you explore the projects and learn how to get started.

***

## Getting Started

Google Summer of Code (or similar project-based program) students should first head over to the [[Summer Of Code]] page and then head to our [[Ideas]] page.

If you are just interested in contributing and this is your first visit, head over to the [[Ideas]] page.

If you have a Digilent Atlys Board, head over to the [HDMI2USB Wiki](https://github.com/timvideos/HDMI2USB/wiki) and specifically look at the [Digilent Atlys Board: Getting Started](https://github.com/timvideos/HDMI2USB/wiki/Digilent-Atlys-Board%3A-Getting-Started) page.

***

## The Projects

<img style="width: 100%;" src="https://docs.google.com/drawings/d/1crkdqukOAV9Alq9BOMFucDmwc_HD6qnJ4OF5MJpkrLg/pub?w=960&h=720">

| Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | <small>(C)ode<br>(M)ailing&nbsp;List<br>(I)RC</small>| Description |
| -------- | ---------------------------------------------------- | ------------ |
| <img src="http://code.timvideos.us/favicon.ico" class="favicon"> **TimVideos.us** | [(C)](http://github.com/timvideos) [(M)](https://groups.google.com/group/timvideos) [(I)](irc://irc.freenode.org/#timvideos) | Parent project. |
| [[HDMI2USB]]         | [(C)](http://github.com/timvideos/HDMI2USB) [(M)](https://groups.google.com/group/hdmi2usb?hl=en-GB) [(I)](irc://irc.freenode.org/#hdmi2usb) | HDMI2USB is hardware for capturing HDMI, DVI and DisplayPort data. By capturing in high quality what is being presented locally it facilitates sharing with remote users and creates great recording for later viewing. The HDMI2USB hardware can also capture the HDMI output from cameras. |
| [[gst-switch]]       | [(C)](http://github.com/timvideos/gst-switch)&nbsp;[(M)](https://groups.google.com/group/gst-switch)&nbsp;[(I)](irc://irc.freenode.org/#gst-switch)  | [[gst-switch]] aims to do interactive live mixing of incoming video streams, designed to meet the needs of conference recording. Designed as a flexible replacement for DVSwitch, and based around GStreamer.  |
| speakertrack   | [(C)](http://github.com/timvideos/gst-switch) | Speakertrack is an extension to GStreamer and gst-switch to allow automatic tracking of speakers using remotely-operated PTZ cameras rather then relying on a camera operator. |
| [Streaming System](https://github.com/timvideos/streaming-system) | [(C)](http://github.com/timvideos/streaming-system) [(M)](https://groups.google.com/group/timvideos) [(I)](irc://irc.freenode.org/#timvideos) | Streaming-system is a comprehensive video conferencing package that allows users to set up and deploy a live streaming system. It includes a website, setup scripts and watchdog code. |

***

### Partner Projects

Projects not developed by TimVideos.us, but extensively used by us.

| Name     | <small>(C)ode<br>(M)ailing&nbsp;List<br>(I)RC</small>| Description | Used By |
| -------- | ---------------------------------------------------- | ----------- | ------- |
| <img src="http://cdn2.hubspot.net/hub/313203/file-521910805-png/Layout/images/favicon.png" class="favicon"> **flumotion**  | [(C)](https://code.flumotion.com/cgit/) [(M)](http://lists.fluendo.com/mailman/listinfo) [(I)](irc://irc.freenode.org/#fluendo) | Flumotion is an award winning streaming software created in 2006 by a group of open source developers and multimedia experts. Flumotion Streaming Software allows broadcasters and companies to stream content live and on demand in all the leading formats from a single server. | Used for live video streaming. |
| <img src="http://gstreamer.freedesktop.org/planet/images/gstgotchi.png" class="favicon"> **gstreamer**  | [(C)](http://cgit.freedesktop.org/gstreamer) [(M)](http://gstreamer.freedesktop.org/lists/) [(I)](irc://irc.freenode.org/#gstreamer) | GStreamer is a library for constructing graphs of media-handling components. The applications it supports range from simple Ogg/Vorbis playback, audio/video streaming to complex audio (mixing) and video (non-linear editing) processing. Applications can take advantage of advances in codec and filter technology transparently. Developers can add new codecs and filters by writing a simple plugin with a clean, generic interface. | Used by **gst-switch**, **speakertrack** and **flumotion**. |
| **eventstreamer**  | [(C)](https://github.com/lukejohnosmahi/eventstreamr) | EventStreamer is a single and multi room audio visual stream management. It is designed to scale down for a single monthly LUG talk and scale up for conferences such as linux.conf.au. The base OS image forms the foundation for eventstreamr. The goals are simple: every host has the base image installed, the base image includes all software required to perform all roles and simple setup script to go from imaged to production. | Used by **linux.conf.au 2014** and **[PLUG](http://plug.org.au)**. |