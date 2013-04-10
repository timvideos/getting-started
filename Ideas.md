---
{'layout': 'default',
 'title': 'Ideas!',
 'tagline': 'Projects you could possibly work on.'}

---

# Overview

TimVideos.us is a group of exciting projects which together create a system for doing both recording and live event streaming for conferences, meetings, user groups and other presentations. Check out our [[Getting Started!]] page for more information!

Whether you want to work hands-on with hardware or code in a variety of languages, we have a project for you. Join the team! This information should help you explore the projects and learn how to get started. 

To help you decide which of the TimVideos.us projects you wish to contribute to, we have created the following flow diagram:

[Edit Image](https://docs.google.com/a/mithis.com/drawings/d/1zYlT69xQqbAjzuJgKj-UhO1vRF5JNLpic8xmPrfNtXM/edit)

<img src="https://docs.google.com/drawings/d/1zYlT69xQqbAjzuJgKj-UhO1vRF5JNLpic8xmPrfNtXM/pub?w=960&amp;h=720" usemap="#wiki-flow-diagram-map" alt="Getting Started Flow Diagram">

<map name="wiki-flow-diagram-map">
 <area shape="rect" coords="47,458,197,549"  href="https://github.com/timvideos/getting-started/issues?labels=Extension+Boards"
  title="HDMI2USB Extension Board Tasks"></area>
 <area shape="rect" coords="209,463,360,552" href="https://github.com/timvideos/getting-started/issues?labels=Firmware"
  title="HDMI2USB Firmware Tasks"></area>
 <area shape="rect" coords="451,466,602,550" href="https://github.com/timvideos/getting-started/issues?labels=gst-switch"
  title="gst-switch Tasks"></area>
 <area shape="rect" coords="449,557,600,642" href="https://github.com/timvideos/getting-started/issues?labels=gstreamer"
  title="gstreamer Tasks"></area>
 <area shape="rect" coords="615,462,763,550" href="https://github.com/timvideos/getting-started/issues?labels=flumotion"
  title="flumotion Tasks"></area>
 <area shape="rect" coords="773,462,923,551" href="https://github.com/timvideos/getting-started/issues?labels=timvideos"
  title="Tim Video's Website"></area>
 <area shape="rect" coords="586,65,723,215"  href="https://github.com/timvideos/getting-started/issues?labels=Software"
  title="Software Tasks"></area>
 <area shape="rect" coords="228,65,374,210"  href="https://github.com/timvideos/getting-started/issues?labels=Hardware"
  title="Hardware Tasks"></area>
 <area shape="rect" coords="209,301,355,444" href="https://github.com/timvideos/getting-started/issues?labels=Firmware"
  title="Firmware Tasks"></area>
 <area shape="rect" coords="453,296,598,448" href="https://github.com/timvideos/getting-started/issues?labels=C"
  title="C Tasks"></area>
 <area shape="rect" coords="615,298,760,449" href="https://github.com/timvideos/getting-started/issues?labels=Python"
  title="Python Tasks"></area>
 <area shape="rect" coords="774,298,927,448" href="https://github.com/timvideos/getting-started/issues?labels=Web"
  title="Web Tasks"></area>
</map>

 * Students should check out the [Summer Of Code page](Summer-Of-Code.html).
 * There are many bugs within individual components which are not yet listed as potential starter projects. Check out the bug trackers!
 * Feel free to suggest your own ideas!

<br>
<br>
<br>
<br>
<br>

# Software Projects

**The following software projects have tasks that you can work on.**

## [[gst-switch]]

 * [Tasks in the gst-switch project](https://github.com/timvideos/getting-started/issues?labels=gst-switch).
 * [Tasks in the gst-switch project dealing with **speaker tracking**](https://github.com/timvideos/getting-started/issues?labels=speakertrack).
 

## [[Streaming System]]
[(Code)](http://github.com/timvideos/streaming-system) | [(IRC Channel)](irc://irc.freenode.org/#timvideos) | [(Bug Tracker)](http://github.com/timvideos/streaming-system/issues)

 * [Tasks in the **Streaming System Website** project](https://github.com/timvideos/getting-started/issues?labels=website)

Streaming-system is a comprehensive video conferencing package that allows users to set up and deploy a live streaming system. It includes a website, setup scripts and watchdog code.

#### The streaming system including a django-based website, shell script setup scripts and Python watchdog code.

<br>
<br>
<br>
<br>
<br>

# Hardware Projects

**The following hardware projects have tasks that you can work on.**

## [[HDMI2USB]]
[(Code)](http://github.com/timvideos/HDMI2USB.git) | [(Mailing List)](https://groups.google.com/group/hdmi2usb?hl=en-GB) | [(IRC Channel)](irc://irc.freenode.org/#hdmi2usb) | [(Bug Tracker)](http://github.com/timvideos/HDMI2USB/issues)


HDMI2USB is a core hardware project in the Tim Videos suite. There are two types of projects to work on with the HDMI2USB system;

 * Firmware Projects - As the device uses a Xilinx Spartan 6 FPGA, developing much of the hardware is actually a process of developing software!<br>[More information on current HDMI2USB firmware](https://github.com/timvideos/HDMI2USB/wiki/Firmware).

 * Extension Boards - The Digilent ATLYS can be extended via the [VHDCI connector](http://en.wikipedia.org/wiki/Very-high-density_cable_interconnect).<br>[More information on existing HDMI2USB extension boards]()


<p style='font-size: 18px; color: red; text-align: center;'>
<strong>!!! All hardware projects will require you to have a Digilent ATLYS prototype board !!!</strong>
</p>

### Digilent ATLYS Prototype Board

For developing features for the HDMI2USB system we use a [Digilent ATLYS prototype board](http://digilentinc.com/Products/Detail.cfm?NavPath=2,400,836&Prod=ATLYS).

> The Atlys circuit board is a complete, ready-to-use digital circuit development platform
> based on a Xilinx Spartan 6 LX45 FPGA. The on-board collection of high-end peripherals,
> including Gbit Ethernet, HDMI Video, 128Mbyte DDR2 memory array, audio and USB ports make
> the Atlys board an ideal host for complete digital systems built around embedded
> processors like Xilinx’s MicroBlaze. Atlys is fully compatible with all Xilinx CAD tools,
> including ChipScope, EDK, and the free WebPack, so designs can be completed with no extra
> costs.

If you can show that you are committed to developing hardware (such as being accepted into a program like Google Summer of Code), **you can apply for a grant to have a board provided to you for development.**


### HDMI2USB Extension Boards Projects

 * [**HDMI2USB Extension Board** related Tasks](https://github.com/timvideos/getting-started/issues?labels=Extension+Boards)


### HDMI2USB Firmware Projects

 * [**HDMI2USB Firmware** releated Tasks](https://github.com/timvideos/getting-started/issues?labels=Firmware)

<br>
<br>
<br>
<br>
<br>

# Partner Projects

## flumotion
[(Code)](https://code.flumotion.com/cgit/) | [(Mailing Lists)](http://lists.fluendo.com/mailman/listinfo) | [(IRC Channel)](irc://irc.freenode.org/#fluendo)

 * [**flumotion** Tasks](https://github.com/timvideos/getting-started/issues?labels=flumotion)

While flumotion was **not** originally developed for TimVideos.us, it is used
heavily to do the live video streaming side. For this reason we will have
numerous ideas on how to improve the platform for our usecase.

> Flumotion is an award winning streaming software created in 2006 by a group
> of open source developers and multimedia experts. Flumotion Streaming
> Software allows broadcasters and companies to stream content live and on
> demand in all the leading formats from a single server.

#### flumotion is written in Python and uses GStreamer

## GStreamer
[(Code)](http://cgit.freedesktop.org/gstreamer) | [(Mailing Lists)](http://gstreamer.freedesktop.org/lists/) | [(IRC Channel)](irc://irc.freenode.org/#gstreamer) 

 * [**GStreamer** Tasks](https://github.com/timvideos/getting-started/issues?labels=gstreamer)

While GStreamer was **not** originally developed for TimVideos.us, it is used
heavily by gst-switch for doing video mixing and heavily by flumotion to do the
heavy lifting of media processing. For this reason we will have numerous ideas
on how to improve the platform for our usecase.

> GStreamer is a library for constructing graphs of media-handling components.
> The applications it supports range from simple Ogg/Vorbis playback,
> audio/video streaming to complex audio (mixing) and video (non-linear
> editing) processing. Applications can take advantage of advances in codec and
> filter technology transparently. Developers can add new codecs and filters by
> writing a simple plugin with a clean, generic interface.

#### GStreamer is written in C
