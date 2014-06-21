---
layout: default
title: Ideas!
tagline: Projects you could possibly work on.
tags: ideas
---

# Overview

TimVideos.us is a group of exciting projects which together create a system for doing both recording and live event streaming for conferences, meetings, user groups and other presentations.  Whether you want to work hands-on with hardware or code in a variety of languages, we have a project for you. Join the team!

Check out the [Getting Started!](/Home.html) page.  Students should also read the [[Summer Of Code]] page.

The following information and flow diagram should help you explore current TimVideos projects and learn how to start contributing. 


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

<hr>

# Ideas List

 * This ideas list is dynamically generated from the [Ideas tracker](https://github.com/timvideos/getting-started/issues?state=open).  You can view, filter, and comment on ideas there.  
 * Feel free to suggest your own ideas!  New ideas should be added using the [Markdown Ideas Template](/Ideas.html#markdown-ideas-template).  
 * There are many bugs within individual components which are not yet listed as potential starter projects. Check out the bug trackers!

<hr class="project-line">
<hr class="project-line">

<div id="ideas"><b>Loading ideas from GitHub ideas tracker...</b></div>


# Markdown Ideas Template

There is the Markdown required to make a new ideas.

FIXME: Add a "create" link to automatically create a new idea prefilled with the following template.

{% raw %}

#### Title
~~~ markdown
[{{reference.repo}} #{{reference.number}}] {{title}}
~~~

#### Labels

 * <div class="label" style="background-color: #02e10c;">(fluro green)</div> Language
 * <div class="label" style="background-color: #02d7e1;">(fluro light blue)</div> Project
 * <div class="label" style="background-color: #d7e102;">(dark yellow)</div> Type
 * <div class="label" style="background-color: #5319e7;">(dark blue)</div> Difficulty

#### Description
~~~ markdown

More technical details at [Link to bug in the ](http://github.com/timvideos/{{reference.repo}}/issues/{{reference.number}})

# Brief explanation

A short description of what the thing you want to do.

## Expected results

# Detailed Explanation

A much longer description of what the thing you want to do.

## Further reading

 * [Link to a PDF document](http://abc/abc.pdf)
 * [Link to a some HTML page](http://abc/abc.html)

# Knowledge Prerequisites

 *

# Contacts

 * **Potential Mentors:** @{{github mentor username}}
 * **Mailing list:** [timvideos@groups.google.com](http://https://groups.google.com/forum/#!forum/timvideos/)

~~~
{% endraw %}


<div style="display:none;" markdown="1">
<!-- Extra information to put in each project's section -->

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

{% raw %}
<!-- Template for the idea list. Uses http://mustache.github.io/mustache.5.html -- You can't use markdown in this template. -->
<script type="text/html" id="ideas-template">
  {{#projects}}
  <div class="project">
    <h1>{{name}} <a href="https://github.com/timvideos/getting-started/issues?labels={{label.name}}"><img src="/images/link.png"></a></h1>
    <div class="labels">
      <div class="label" style="background-color: #{{label.color}};">
        <a href="https://github.com/timvideos/getting-started/issues?labels={{label.name}}">
          {{label.name}}
        </a>
      </div>
      <div style="clear: both; height: 1px;">&nbsp;</div>
    </div>
    <div class="description">{{&fixed_html}}</div>
    {{#ideas}}
    <div id="{{number}}" class="idea {{hot}}">
      <h2>{{title}}<a href="{{html_url}}"><img src="/images/link.png"></a></h2>
      <div class="labels">
        {{#labels}}
          <div class="label" style="background-color: #{{color}};">
            <a href="https://github.com/timvideos/getting-started/issues?labels={{name}}">
              {{name}}
            </a>
          </div>
        {{/labels}}
        <div style="clear: both; height: 1px;">&nbsp;</div>
      </div>
      <div class="details">
        <div class="description">
          {{&fixed_html}}
        </div>
        <div class="extra_info">{{&reference.extra}}</div>
      </div>
    </div>
    {{/ideas}}
  </div>
  <hr class="project-line">
  <hr class="project-line">
  <br>
  {{/projects}}
</script>
<script type="text/html" id="ideas-extra-template">
   <h3 style="border-bottom: 1px solid black; font-weight: bold;">Related bugs</h3>
   <h3>
       (<a href="{{html_url}}">{{repo}} Issue #{{number}} <img src="/images/link.png"></a>) -- {{title}}
   </h3>
   <div class="labels">
     {{#labels}}
       <div class="label" style="background-color: #{{color}};">
         <a href="https://github.com/timvideos/{{repo}}/issues?labels={{name}}">
           {{name}}
         </a>
       </div>
     {{/labels}}
     <div style="clear: both; height: 1px;">&nbsp;</div>
   </div>
   <div>
     <div class="description">
       {{&fixed_html}}
     </div>
   </div>
</script>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/mustache.js/0.7.2/mustache.min.js" type="text/javascript"></script>
<script src="/js/ideas.js" type="text/javascript"></script>
{% endraw %}