sitw_video_panel

Author:  Lei Ye
Author URI:  http://www.cs.nott.ac.uk/~pszsn/
License: AGPLv3 or later
License URI: http://www.gnu.org/licenses/agpl-3.0.en.html
Can: Commercial Use, Modify, Distribute, Place Warranty
Can't: Sublicence, Hold Liable
Must: Include Copyright, Include License, State Changes, Disclose Source
This research was originally funded in the UK under EPSRC grant reference EP/I031839/1 and title ‘Exploring the potential of networked urban screens for communities and culture’.

Copyright (c) 2015, The University of Nottingham

This is a modified version of:
Open source surveillance software http://www.ispyconnect.com

https://github.com/ispysoftware/ispy

iSpy source and executable is licenced under the GNU Lesser General Public License (LGPL) v3. This is a "permissive" (non-copyleft) Open Source license that guarantees the freedoms to use, modify, and redistribute, but that permits proprietary (non-open-source) derivative works. 

iSpy uses adapted open source code from the following projects:
AForge.net
Accord.net
NAudio
FFMPEG
Flowplayer
nVLC

Written in C# and built in Visual Studio.

The 'Screens in the Wild' version version of iSpy, provides a video panel with fixed dimensions (both overall panel and individual streams) for four video streams. The screen position (along the bottom of a portrait screen) is also hard-coded.

The intention is that users should not be able to close or resize the panel, providing a continous video link.

It is also set to always run on top of other Windows apps.

Changes to video stream configuration require using the unmodified version of iSpy.


