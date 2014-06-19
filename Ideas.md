---
layout: default
title: Ideas!
tagline: Projects you could possibly work on.
tags: ideas
---
<div class="col-md-12">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4>
        Overview
        <span class="edit-link pull-right">
          <a href="{% edit_url ideas/ideas-overview.md %}" target="_blank">
            <i class="fa fa-edit"></i>
          </a>
        </span>  
      </h4>
    </div>
    <div class="panel-body">
      {% markdown ideas/ideas-overview.md %}
    </div>
  </div>
</div>

<div class="col-md-12">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4>
        Ideas Lists
        <span class="edit-link pull-right">
          <a href="{% edit_url ideas/ideas-list.md %}" target="_blank">
            <i class="fa fa-edit"></i>
          </a>
        </span>  
      </h4>
    </div>
    <div class="panel-body">
      {% markdown ideas/ideas-list.md %}
    </div>
  </div>
</div>

<hr class="project-line">
<hr class="project-line">

<div id="ideas"><b>Loading ideas from GitHub ideas tracker...</b></div>

<div class="col-md-12">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4>
        Markdown Ideas Template
        <span class="edit-link pull-right">
          <a href="{% edit_url ideas/ideas-template.md %}" target="_blank">
            <i class="fa fa-edit"></i>
          </a>
        </span>  
      </h4>
    </div>
    <div class="panel-body">
      {% markdown ideas/ideas-template.md %}
    </div>
  </div>
</div>



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
<strong>!!! All hardware projects will require you to have a <a href="{% page_url summer-of-code %}#digilent-atlys-prototype-board">Digilent ATLYS prototype board</a> !!!</strong>
</p>

If you can show that you are committed to developing hardware (such as being accepted into a program like Google Summer of Code), **you can apply for a grant to have a board provided to you for development.**

</div>

</div>

{% raw %}
<!-- Template for the idea list. Uses http://mustache.github.io/mustache.5.html -- You can't use markdown in this template. -->
<script type="text/html" id="ideas-template">
	{{#projects}}
	<div class="col-md-12 col-lg-6">
    <div class="project panel panel-default">
      <div class="panel-heading">
        <h1>{{name}} <a href="https://github.com/timvideos/getting-started/issues?labels={{label.name}}"><img src="/img/link.png"></a></h1>
    		<div class="labels">
    			<div class="label" style="background-color: #{{label.color}};">
    				<a href="https://github.com/timvideos/getting-started/issues?labels={{label.name}}">
    					{{label.name}}
    				</a>
    			</div>
    			<div style="clear: both; height: 1px;">&nbsp;</div>
    		</div>
    		<div class="description">{{&fixed_html}}</div>
      </div>
      <div class="panel-body">
        {{#ideas}}
          <div id="{{number}}" class="idea {{hot}}">
            <h2>{{title}}<a href="{{html_url}}"><img src="/img/link.png"></a></h2>
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
	  </div>
  </div>
	{{/projects}}
</script>
<script type="text/html" id="ideas-extra-template">
	 <h3 style="border-bottom: 1px solid black; font-weight: bold;">Related bugs</h3>
	 <h3>
		   (<a href="{{html_url}}">{{repo}} Issue #{{number}} <img src="/img/link.png"></a>) -- {{title}}
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
