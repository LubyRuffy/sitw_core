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

// include the config file
require('config.php');

// make sure variables from config have local scope
global $relativePathToAdminFiles, $relativePathToScheduleFile, $nameForScheduleFile,
$nameForBackUpOfAutoModeScheduleFile, $nameForDebugFile, $nameForModeStatusFile, $screens, $experiences;

//debug("here!");

// Get variable POSTED by user in index.html
$experiencename=$_POST["experiencename"];


// ********** START CURRENT MODE CHECKING ********** //

// If status file exists...
if (file_exists($relativePathToAdminFiles.$nameForModeStatusFile)) 
{
// Get the contents of status file...is it true or false
	$schedulerIsInManualMode_FromFile = file_get_contents($relativePathToAdminFiles.$nameForModeStatusFile);

	if ($schedulerIsInManualMode_FromFile=="false") // so need to backup schedule
	{
	// Set flag, so that current auto schedule is backed up
		$schedulerIsInManualMode = false;
	}
	else if ($schedulerIsInManualMode_FromFile=="true") // don't need to back up schedule
	{
		$schedulerIsInManualMode = true;
	}
	else //file exists but doesn't contain true or false...so best avoid a mistake causing the overwriting of the backup file!
	{
		$schedulerIsInManualMode = true;
	}

} 


else // status file not found
{
// Backup schedule file as a precaution.
$schedulerIsInManualMode = false;
updateModeStatusFile("false");
}


// Check flag and backup schedule file if we appear to be in auto mode (manualMode == false).
if ($schedulerIsInManualMode == false)
{
backupScheduleFile();
}

// Now... start checking what was sent from the HTML


// If user has selected this, we need to restore backed up schedule file and go back to auto
if ($experiencename == "autoschedule")
{
$schedulerIsInManualMode = false;
updateModeStatusFile("false");
restoreScheduleFile();
}

else // The user wants to run something in manual mode

{

$schedulerIsInManualMode = true;
updateModeStatusFile("true");

// ********** END CURRENT MODE CHECKING ********** //


// Now, check which experience is required


// ********** START WHAT HAPPENS IS USER SENDS A URL RATHER THAN SELECTING AN EXPERIENCE ********** //


// If the HTML form has sent the param experiencename=userdefined, then this gets called

if ($experiencename == "userdefined" && !$_POST["experienceurl"]=="" && !$_POST["videomode"]=="" && !$_POST["locationaware"]=="")
{

//debug("yes");

$experienceurl = $_POST["experienceurl"];
$browser = $_POST["browser"];
$videomode = $_POST["videomode"];
$locationaware = $_POST["locationaware"];


if($browser=="Firefox")
{
$browserForScheduleEntry = "App_Firefox";
}
if($browser=="Chrome")
{
$browserForScheduleEntry = "App_Chrome";
}
else 
{
$browserForScheduleEntry = "App_Firefox";
}


if($videomode=="transmitonly")
{
$videoModeForScheduleEntry = "|Yawcam||";
}
if($videomode=="novideo")
{
$videoModeForScheduleEntry = "|||";
}
else 
{
$videoModeForScheduleEntry = "|videoOn|2|";
}


foreach ($screens as $value)
 {
 // For each item in the $screens array, create an item called $value 
 // Keep appending each screen item into a string variable.
 // So, basically loop through 'n' screens and for the specified experience, create the appropriate schedule file entry for each screen
 
 if  ($locationaware == "yes")
 {
 
$scheduleFileContents.=
"\n[".$value[nameForScheduleFile]."]\r
#0\r
0000|".$browserForScheduleEntry."|".$experienceurl."?loc=".$value[twoDigitLocationCode].$videoModeForScheduleEntry."\n
#1\r
0000|".$browserForScheduleEntry."|".$experienceurl."?loc=".$value[twoDigitLocationCode].$videoModeForScheduleEntry."\n
#2\r
0000|".$browserForScheduleEntry."|".$experienceurl."?loc=".$value[twoDigitLocationCode].$videoModeForScheduleEntry."\n
#3\r
0000|".$browserForScheduleEntry."|".$experienceurl."?loc=".$value[twoDigitLocationCode].$videoModeForScheduleEntry."\n
#4\r
0000|".$browserForScheduleEntry."|".$experienceurl."?loc=".$value[twoDigitLocationCode].$videoModeForScheduleEntry."\n
#5\r
0000|".$browserForScheduleEntry."|".$experienceurl."?loc=".$value[twoDigitLocationCode].$videoModeForScheduleEntry."\n
#6\r
0000|".$browserForScheduleEntry."|".$experienceurl."?loc=".$value[twoDigitLocationCode].$videoModeForScheduleEntry."\n";   

}

else // location aware not selected

{

$scheduleFileContents.=
"\n[".$value[nameForScheduleFile]."]\r
#0\r
0000|".$browserForScheduleEntry."|".$experienceurl.$videoModeForScheduleEntry."\n
#1\r
0000|".$browserForScheduleEntry."|".$experienceurl.$videoModeForScheduleEntry."\n
#2\r
0000|".$browserForScheduleEntry."|".$experienceurl.$videoModeForScheduleEntry."\n
#3\r
0000|".$browserForScheduleEntry."|".$experienceurl.$videoModeForScheduleEntry."\n
#4\r
0000|".$browserForScheduleEntry."|".$experienceurl.$videoModeForScheduleEntry."\n
#5\r
0000|".$browserForScheduleEntry."|".$experienceurl.$videoModeForScheduleEntry."\n
#6\r
0000|".$browserForScheduleEntry."|".$experienceurl.$videoModeForScheduleEntry."\n";   

} // close if no location aware

} // close for each screen loop

} // close if param experiencename=userdefined 


// ********** END WHAT HAPPENS IF USER SENDS A URL RATHER THAN SELECTING AN EXPERIENCE ********** //





// ********** START WHAT HAPPENS IF USER SENDS NAMED EXPERIENCE ********** //

else {  // if param experiencename!=userdefined... so running a named experience


// Now create the new manual schedule file...

foreach ($screens as $value)
 {
 // For each item in the $screens array, create an item called $value 
 // Keep appending each screen item into a string variable.
 // So, basically loop through 'n' screens and for the specified experience, create the appropriate schedule file entry for each screen
 
$scheduleFileContents.=
"\n[".$value[nameForScheduleFile]."]\r
#0\r
0000|".$experiences[getNumericArrayIndexInMultidimensionalArrayForSpecifiedValue($experiences, $experiencename, "experienceName")][$value[defaultName]]."\n
#1\r
0000|".$experiences[getNumericArrayIndexInMultidimensionalArrayForSpecifiedValue($experiences, $experiencename, "experienceName")][$value[defaultName]]."\n
#2\r
0000|".$experiences[getNumericArrayIndexInMultidimensionalArrayForSpecifiedValue($experiences, $experiencename, "experienceName")][$value[defaultName]]."\n
#3\r
0000|".$experiences[getNumericArrayIndexInMultidimensionalArrayForSpecifiedValue($experiences, $experiencename, "experienceName")][$value[defaultName]]."\n
#4\r
0000|".$experiences[getNumericArrayIndexInMultidimensionalArrayForSpecifiedValue($experiences, $experiencename, "experienceName")][$value[defaultName]]."\n
#5\r
0000|".$experiences[getNumericArrayIndexInMultidimensionalArrayForSpecifiedValue($experiences, $experiencename, "experienceName")][$value[defaultName]]."\n
#6\r
0000|".$experiences[getNumericArrayIndexInMultidimensionalArrayForSpecifiedValue($experiences, $experiencename, "experienceName")][$value[defaultName]]."\n";   
  
/* 
Note: the function getNumericArrayIndexInMultidimensionalArrayForSpecifiedValue() looks through the $experiences array for a sub-array whose item labelled "experienceName" equals the 
name of the experience (as defined in $experiencename) that we want to run.  The correct schedule file line for the screen is selected by looking i
in the correct sub-array of $experiences for the screen name ($value[defaultName])
*/
  
  } // close for each screen loop


  
} // CLOSE if param experiencename!=userdefined  
  

// ********** END WHAT HAPPENS IF USER SENDS NAMED EXPERIENCE ********** //  
  
  
  
 
// ********** START WRITING MANUAL SCHEDULE FILE  ********** // 

//echo $scheduleFileContents;

// Write schedule file (overwriting existing schedule file)
writeScheduleFile($scheduleFileContents);

 // ********** END WRITING MANUAL SCHEDULE FILE  ********** //  

}  // close ELSE The user wants to run something in manual mode...rather than restoring autoschedule file








 // ********** START HELPER FUNCTIONS ********** //  


function writeScheduleFile($data) {
global $relativePathToScheduleFile, $nameForScheduleFile;
$file = $relativePathToScheduleFile.$nameForScheduleFile;
file_put_contents($file, $data);
chmod($file, 0777);
}



function updateModeStatusFile($data) {
global $relativePathToAdminFiles,$nameForModeStatusFile;
file_put_contents($relativePathToAdminFiles.$nameForModeStatusFile, $data);
chmod($relativePathToAdminFiles.$nameForModeStatusFile, 0777);
}


function backupScheduleFile() {
global $relativePathToScheduleFile, $relativePathToAdminFiles, $nameForScheduleFile, $nameForBackUpOfAutoModeScheduleFile;
copy ( $relativePathToScheduleFile.$nameForScheduleFile, $relativePathToAdminFiles.$nameForBackUpOfAutoModeScheduleFile);
chmod($relativePathToAdminFiles.$nameForBackUpOfAutoModeScheduleFile, 0777);
}

function restoreScheduleFile() {
global $relativePathToScheduleFile, $relativePathToAdminFiles, $nameForScheduleFile, $nameForBackUpOfAutoModeScheduleFile;
copy ($relativePathToAdminFiles.$nameForBackUpOfAutoModeScheduleFile,$relativePathToScheduleFile.$nameForScheduleFile);
chmod($relativePathToScheduleFile.$nameForScheduleFile, 0777);
}


function getNumericArrayIndexInMultidimensionalArrayForSpecifiedValue($myArray, $myRequiredValue, $namedKeyContainingRequiredValue)
{
   foreach($myArray as $key => $myArrayItem)
   {
      if ( $myArrayItem[$namedKeyContainingRequiredValue] === $myRequiredValue )
         return $key;
   }
   return false;
}

  // ********** END HELPER FUNCTIONS ********** //


?> 

