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