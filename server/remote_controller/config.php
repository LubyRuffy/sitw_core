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

// Name for new schedule file
$nameForScheduleFile = 'schedule.txt';

$nameForBackUpOfAutoModeScheduleFile ='schedule_bak.txt';

$nameForDebugFile ='debug.out';

// Name for file that keeps track of state...is manual mode true?
$nameForModeStatusFile ='manualMode.txt';



/************ START: EXAMPLE CONFIG SETTINGS FOR SCREENS AND EXPERIENCES  ***********************************/

// Uncomment and define your screens here! 
// Names for screens used here need to match those used in the config for each screen scheduler client


//sha1() encrypted password example: 'hello'
$password = 'aaf4c61ddcc5e8a2dabede0f3b482cd9aea9434d';

//Can create SHA1 passwords here:
// http://www.ratajik.com/CreateNetPassword/Default.aspx
// note need to convert to lower case or won't recognise password...use this: http://www.convertcase.net/


// Path to where files are saved...except debug
// This assumes that you have a directory at the same level as your PHP project files, called 'autoschedule', with a subfolder called 'doNotDeleteForManualMode'.

// All of the following need to be present, with permission mode set to - chmod 777:
// # Directory autoschedule
// # File schedule.txt (containing the automatic schedule that your screens are running, when not in manual mode) 
// # Directory autoschedule/doNotDeleteForManualMode/
// # File autoschedule/doNotDeleteForManualMode/manualMode.txt (initially containing just word: 'false'. This will be used as a flag to track if manualmode is enabled.

// If you move schedule.txt, you'll need to change the relative paths below...

$relativePathToAdminFiles = './autoschedule/doNotDeleteForManualMode/';
$relativePathToScheduleFile = './autoschedule/';

$screens = array
	(
		
		array
		(
		"defaultName" =>"screen1",
		"fullName" =>"screen1, place",
		"nameForScheduleFile" =>"screen1",
		"twoDigitLocationCode" =>"01"
		),
	
		array
		(
		"defaultName" =>"screen2",
		"fullName" =>"screen2, place",
		"nameForScheduleFile" =>"screen2",
		"twoDigitLocationCode" =>"02"
		),
		
		array
		(
		"defaultName" =>"screen3",
		"fullName" =>"screen3, place",
		"nameForScheduleFile" =>"screen3",
		"twoDigitLocationCode" =>"03"
		),
		
		array
		(
		"defaultName" =>"screen4",
		"fullName" =>"screen4, place",
		"nameForScheduleFile" =>"screen4",
		"twoDigitLocationCode" =>"04"
		)

	);

	
$experiences = array
	(

		array
			(
			"experienceName" =>"experience1",
			$screens[0][defaultName] =>"App_Firefox|http:// [path to experience1] /stable/?loc=01|videoOn|2|",
			$screens[1][defaultName] =>"App_Firefox|http:// [path to experience1] /stable/?loc=02|videoOn|2|",
			$screens[2][defaultName] =>"App_Firefox|http:// [path to experience1] /stable/?loc=03|videoOn|2|",
			$screens[3][defaultName] =>"App_Firefox|http:// [path to experience1] /stable/?loc=04|videoOn|2|"
			),
		  
		array
			(
			"experienceName" =>"experience2",
			$screens[0][defaultName] =>"App_Firefox|http:// [path to experience2] /stable/?loc=01|videoOn|2|",
			$screens[1][defaultName] =>"App_Firefox|http:// [path to experience2] /stable/?loc=02|videoOn|2|",
			$screens[2][defaultName] =>"App_Firefox|http:// [path to experience2] /stable/?loc=03|videoOn|2|",
			$screens[3][defaultName] =>"App_Firefox|http:// [path to experience2] /stable/?loc=04|videoOn|2|"
			),
			
		array
			(
			"experienceName" =>"experience3",
			$screens[0][defaultName] =>"App_Firefox|http:// [path to experience3] /stable/?loc=01|videoOn|2|",
			$screens[1][defaultName] =>"App_Firefox|http:// [path to experience3] /stable/?loc=02|videoOn|2|",
			$screens[2][defaultName] =>"App_Firefox|http:// [path to experience3] /stable/?loc=03|videoOn|2|",
			$screens[3][defaultName] =>"App_Firefox|http:// [path to experience3] /stable/?loc=04|videoOn|2|"
			),
			
		array
			(
			"experienceName" =>"experience4",
			$screens[0][defaultName] =>"App_Firefox|http:// [path to experience4] /stable/?loc=01|videoOn|2|",
			$screens[1][defaultName] =>"App_Firefox|http:// [path to experience4] /stable/?loc=02|videoOn|2|",
			$screens[2][defaultName] =>"App_Firefox|http:// [path to experience4] /stable/?loc=03|videoOn|2|",
			$screens[3][defaultName] =>"App_Firefox|http:// [path to experience4] /stable/?loc=04|videoOn|2|"
			)
			
	);	
	
/************ END: EXAMPLE CONFIG SETTINGS FOR SCREENS AND EXPERIENCES  ***********************************/	


function debug($data) {
global $nameForDebugFile;
$file = $nameForDebugFile;
file_put_contents($file, $data);
chmod($file, 0777);
}

/*********** START: DEBUG BITS *******************/

// works!
// echo $screens[0][defaultName];

// works!
//echo $experiences[getNumericArrayIndexInMultidimensionalArrayForSpecifiedValue($experiences, "Homeless", "experienceName")][$screens[0][defaultName]];

/*********** END: DEBUG BITS *******************/


?> 
	