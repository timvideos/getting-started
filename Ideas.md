---
{'layout': 'default',
 'title': 'Ideas!',
 'tagline': 'Projects you could possibly work on.'}

---

# Overview

TimVideos.us is a group of exciting projects which together create a system for doing both recording and live event streaming for conferences, meetings, user groups and other presentations. Check out our [[Getting Started!|Home]] page for more information!

Whether you want to work hands-on with hardware or code in a variety of languages, we have a project for you. Join the team! This information should help you explore the projects and learn how to get started. 

To help you decide which of the TimVideos.us projects you wish to contribute to, we have created the following flow diagram:

[Edit Image](https://docs.google.com/a/mithis.com/drawings/d/1zYlT69xQqbAjzuJgKj-UhO1vRF5JNLpic8xmPrfNtXM/edit)

<img src="https://docs.google.com/drawings/d/1zYlT69xQqbAjzuJgKj-UhO1vRF5JNLpic8xmPrfNtXM/pub?w=960&amp;h=720" usemap="#wiki-flow-diagram-map" alt="Getting Started Flow Diagram">

<map name="wiki-flow-diagram-map">
 <area shape="rect" coords="47,458,197,549"  href="#hdmi2usb-extension-boards-projects"
  title="HDMI2USB Extension Board Tasks"></area>
 <area shape="rect" coords="209,463,360,552" href="#hdmi2usb-firmware-projects"
  title="HDMI2USB Firmware Tasks"></area>
 <area shape="rect" coords="451,466,602,550" href="#gst-switch"
  title="gst-switch Tasks"></area>
 <area shape="rect" coords="449,557,600,642" href="#gstreamer"
  title="gstreamer Tasks"></area>
 <area shape="rect" coords="615,462,763,550" href="#flumotion"
  title="flumotion Tasks"></area>
 <area shape="rect" coords="773,462,923,551" href="#streaming-system"
  title="Tim Video's Website"></area>
 <area shape="rect" coords="586,65,723,215"  href="#software-projects"
  title="Software Tasks"></area>
 <area shape="rect" coords="228,65,374,210"  href="#hardware-projects"
  title="Hardware Tasks"></area>
 <area shape="rect" coords="209,301,355,444" href="#hdmi2usb-firmware-projects"
  title="Firmware Tasks"></area>
 <area shape="rect" coords="453,296,598,448" href="#gst-switch"
  title="C Tasks"></area>
 <area shape="rect" coords="615,298,760,449" href="#streaming-system"
  title="Python Tasks"></area>
 <area shape="rect" coords="774,298,927,448" href="#streaming-system"
  title="Web Tasks"></area>
</map>

 * Students should check out the [[Summer Of Code]] page.
 * [Ideas tracker](https://github.com/timvideos/getting-started/issues?state=open) is a dynamic, filterable version of the [[Ideas]] page.  You are welcome to expand on ideas!
 * There are many bugs within individual components which are not yet listed as potential starter projects. Check out the bug trackers!
 * Feel free to suggest your own ideas!


<br>
<br>
<br>
<br>
<br>

<div id="ideas"><h1>Loading ideas from GitHub ideas tracker...</h1></div>

{% raw %}
<script type="text/html" id="ideas-template">
    {{#projects}}
    <br>
    <br>
    <br>
    <br>
    <br>
    <div class="project">
        <h1>{{name}} <a href="https://github.com/timvideos/getting-started/issues?labels={{label.name}}"><img src="/images/link.png"></a></h1>
        <div class="label" style="background-color: #{{label.color}};">
            <a href="https://github.com/timvideos/getting-started/issues?labels={{label.name}}">
                {{label.name}}
            </a>
        </div>
        <div class="description">{{&body_html}}</div>
        {{#ideas}}
        <div id="{{number}}" class="idea {{hot}}">
            <h3>{{title}}<a href="{{html_url}}"><img src="/images/link.png"></a></h3>
            <div class="labels">
                {{#labels}}
                    <div class="label" style="background-color: #{{color}};">
                        <a href="https://github.com/timvideos/getting-started/issues?labels={{name}}">
                            {{name}}
                        </a>
                    </div>
                {{/labels}}
            </div>
            <div class="description">
                {{&body_html}}
            </div>
            <div class="extra_info">Loading further info...</div>
        </div>
        {{/ideas}}
    </div>
    {{/projects}}
</script>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/mustache.js/0.7.2/mustache.min.js" type="text/javascript"></script>
<script src="/js/ideas.js" type="text/javascript"></script>
{% endraw %}


<div style="display:none;" markdown="1">


<div id="gst-switch" markdown="1">
 * [Tasks in the gst-switch project](https://github.com/timvideos/getting-started/issues?labels=Project+-+gst-switch&page=1&state=open).
 * [Tasks in the gst-switch project dealing with **speaker tracking**]().
</div>


<div id="Streaming System (Website)" markdown="1">
[(Code)](http://github.com/timvideos/streaming-system) | [(IRC Channel)](irc://irc.freenode.org/#timvideos) | [(Bug Tracker)](http://github.com/timvideos/streaming-system/issues)

 * [Tasks in the **Streaming System Website** project](https://github.com/timvideos/getting-started/issues?labels=Project+-+Streaming+System+%28Website%29&page=1&state=open)

Streaming-system is a comprehensive video conferencing package that allows users to set up and deploy a live streaming system. It includes a website, setup scripts and watchdog code.

#### The streaming system including a django-based website, shell script setup scripts and Python watchdog code.
</div>

<div id="HDMI2USB" markdown="1">
HDMI2USB is a core hardware project in the Tim Videos suite. There are two types of projects to work on with the HDMI2USB system;

 * Firmware Projects - As the device uses a Xilinx Spartan 6 FPGA, developing much of the hardware is actually a process of developing software!<br>[More information on current HDMI2USB firmware](https://github.com/timvideos/HDMI2USB/wiki/Firmware).

 * Extension Boards - The Digilent ATLYS can be extended via the [VHDCI connector](http://en.wikipedia.org/wiki/Very-high-density_cable_interconnect).<br>[More information on existing HDMI2USB extension boards](https://github.com/timvideos/HDMI2USB/wiki/Getting-Started-with-an-Atlys-Board)


<p style='font-size: 18px; color: red; text-align: center;'>
<strong>!!! All hardware projects will require you to have a <a href="/HDMI2USB.html#digilent-atlys-prototype-board">Digilent ATLYS prototype board</a> !!!</strong>
</p>

If you can show that you are committed to developing hardware (such as being accepted into a program like Google Summer of Code), **you can apply for a grant to have a board provided to you for development.**

</div>

</div>

<br>
<br>
<br>
<br>
<br>

# Partner Projects

## flumotion
[(Code)](https://code.flumotion.com/cgit/) | [(Mailing Lists)](http://lists.fluendo.com/mailman/listinfo) | [(IRC Channel)](irc://irc.freenode.org/#fluendo)

 * [**flumotion** Tasks](https://github.com/timvideos/getting-started/issues?labels=Project+-+Flumotion&page=1&state=open)

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

 * [**GStreamer** Tasks](https://github.com/timvideos/getting-started/issues?labels=Project+-+gstreamer&page=1&state=open)

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
