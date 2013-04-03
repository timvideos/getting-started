---
layout: default
title: Ideas!
tagline: Projects you could possible work on.
---

# Overview

Tim Video's is actually a number of *different* but related projects. There are a huge variety of ways to get started in a huge variety of different areas.

To help you decide which project you might like, we have created the following flow diagram:

[Edit Image](https://docs.google.com/a/mithis.com/drawings/d/1zYlT69xQqbAjzuJgKj-UhO1vRF5JNLpic8xmPrfNtXM/edit)
<img src="https://docs.google.com/drawings/d/1zYlT69xQqbAjzuJgKj-UhO1vRF5JNLpic8xmPrfNtXM/pub?w=960&h=720" usemap="#wiki-flow-diagram-map" alt="Getting Started Flow Diagram">
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

 * [**HDMI2USB Extension Board** Tasks](https://github.com/timvideos/getting-started/issues?labels=Extension+Boards)
 * [**HDMI2USB Firmware** Tasks](https://github.com/timvideos/getting-started/issues?labels=Firmware)
 * [**gst-switch** Tasks](https://github.com/timvideos/getting-started/issues?labels=gst-switch)
 * [**gstreamer** Tasks](https://github.com/timvideos/getting-started/issues?labels=gstreamer)
 * [**flumotion** Tasks](https://github.com/timvideos/getting-started/issues?labels=flumotion)
 * [**Tim Video's Website** Tasks](https://github.com/timvideos/getting-started/issues?labels=timvideos)

---------------------------------------

# Software Projects

## gst-switch

This project is intended to be a replacement of DV-switch based on GStreamer.

## flumotion

flumotion is a project that is older than the Tim Video's suite. Originally developed by Fluendo, it uses the gstreamer platform to do the actual heavy lifting.

## TimVideos

Repository for actually deploying a live streaming system, includes website, set up scripts and watchdog code.

---------------------------------------

# Hardware Projects

## HDMI2USB

HDMI2USB is a core hardware project in the Tim Video's suite. 

There are two types of projects to work on with the HDMI2USB system;
 * Firmware Projects - As the device uses a Xilinx Spartan 6 FPGA, developing much of the hardware is actually a process of developing software! [More information on HDMI2USB firmware]().
 * Extension Boards - The Digilent ATLYS only has limited I/O, extension boards are PCBs which connect to the Digilent ATLYS's [VHDCI connector](http://en.wikipedia.org/wiki/Very-high-density_cable_interconnect) and extend the functionality. [More information on HDMI2USB extension boards]()

**All hardware projects will require you to have a [Digilent ATLYS prototype board](http://digilentinc.com/Products/Detail.cfm?NavPath=2,400,836&Prod=ATLYS).**

### HDMI2USB Extension Boards
For developing features for the HDMI2USB system we use a [Digilent ATLYS prototype board](http://digilentinc.com/Products/Detail.cfm?NavPath=2,400,836&Prod=ATLYS).

> The Atlys circuit board is a complete, ready-to-use digital circuit development platform
> based on a Xilinx Spartan 6 LX45 FPGA. The on-board collection of high-end peripherals,
> including Gbit Ethernet, HDMI Video, 128Mbyte DDR2 memory array, audio and USB ports make
> the Atlys board an ideal host for complete digital systems built around embedded
> processors like Xilinx’s MicroBlaze. Atlys is fully compatible with all Xilinx CAD tools,
> including ChipScope, EDK, and the free WebPack, so designs can be completed with no extra
> costs.

If you can show that you are committed to developing hardware (such as being accepted into a program like Google Summer of Code), **you can apply for a grant to have a board provided to you for development.**

### HDMI2USB Firmware 
https://github.com/timvideos/HDMI2USB/wiki/Firmware