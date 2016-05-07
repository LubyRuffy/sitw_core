sitw_client

Author:  Lei Ye
Author URI:  http://www.cs.nott.ac.uk/~pszsn/
License: AGPLv3 or later
License URI: http://www.gnu.org/licenses/agpl-3.0.en.html
Can: Commercial Use, Modify, Distribute, Place Warranty
Can't: Sublicence, Hold Liable
Must: Include Copyright, Include License, State Changes, Disclose Source
This research was originally funded in the UK under EPSRC grant reference EP/I031839/1 and title ‘Exploring the potential of networked urban screens for communities and culture’.

Copyright (c) 2015, The University of Nottingham

Steve notes:

Required:
Python2.7
Python modules:
NumPy
PyGame
pyHook
PyOpenGL
SciPy
Win32API
wxPython

1. Install Python 2.7 to c:\python27\
2. Install an older version of Open Source video surveillance tool iSpy using the proper installer - I used v. 4.9.2.0, but we originally ran with v. 4.5.4.
3. Install Open Source video streamer YawCam (currently v.0.4.1). 
4. Edit \cfg\SitwScheduler.ini to reflect browser and iSpy paths.
5. If necessary, edit \src\SitwData.py so that "App_Yawcam" points to the correct path to YawCam.
6. Install Python module wxPython
http://www.wxpython.org/download.php
7. Install Python module pyHook:
http://sourceforge.net/projects/pyhook/files/latest/download
8. Install Python module pywin32:.
http://sourceforge.net/projects/pywin32/
9. Rename C:\%ProgramFiles%\iSpy\iSpy\ispy.exe to OLD_ispy.exe.
10. Put the SitW custom build exe of iSpy (in directory sitw_video_panel) into C:\%ProgramFiles%\iSpy\iSpy\ (to replace one you've just renamed). 11. Replace C:\Users\<username>\AppData\Roaming\iSpy\XML\objects.XML (example file in sitw_video_panel) with the current SitW version (containing four video streams). 
12. Rather than running run.bat by double-clicking, initially test everything is OK by opening a command prompt window and typing run.bat (to stop cmd window closing, with errors, while getting it working!).

Configuration

SitwData.py
URL_Schedule = 'http://<your site>/schedule.txt'
UnionHost = '<UNION Server IP address>'
