<?php

/*
Author:  Steve North
Author URI:  http://www.cs.nott.ac.uk/~pszsn/
License: AGPLv3 or later
License URI: http://www.gnu.org/licenses/agpl-3.0.en.html
Can: Commercial Use, Modify, Distribute, Place Warranty
Can't: Sublicence, Hold Liable
Must: Include Copyright, Include License, State Changes, Disclose Source

Copyright (c) 2015, The University of Nottingham
*/

phpinfo();

//debug(phpinfo());

function debug($data) {
global $nameForDebugFile;
$file = $nameForDebugFile;
file_put_contents($file, $data);
chmod($file, 0777);
}

?> 

