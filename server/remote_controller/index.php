<?php
require('access.php');

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

?>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html>

<head>

<title>SitW Remote Control</title>

<link rel="stylesheet" type="text/css" href="style.css">


<script type="text/javascript">


function runExperience(experiencename)
{

// This stops it from calling PHP, if the user selects the default placeholder entry on the dropdown...
if(experiencename!="Select an experience to run now, or set to auto...")
{

var url = "run_experience_now.php";
var params = "experiencename="+experiencename; 

//console.log(params);

xmlhttp=new XMLHttpRequest();

xmlhttp.open("POST", url, true);


//Send the proper header information along with the request
xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

xmlhttp.onreadystatechange=function()
{

if (xmlhttp.readyState==4 && xmlhttp.status==200)
{
//console.log("here");
}
}
xmlhttp.send(params);

} // close check it's not the default placeholder

}


function runURL(experienceurl,browser,videomodeRadioButtonArray,locationAwareCheckBox)
{


var url = "run_experience_now.php";


if (locationAwareCheckBox.checked)
{
locationaware = "yes";
}
else
{
locationaware = "no";
}


// Check array of radio buttons to find which one is selected when "run" button was pressed
for (var i = videomodeRadioButtonArray.length; i--;) {
if(videomodeRadioButtonArray[i].checked)
{
var videomode = videomodeRadioButtonArray[i].value;
}
}

var params = "experiencename=userdefined&experienceurl="+experienceurl+"&"+"browser="+browser+"&"+"videomode="+videomode+"&"+"locationaware="+locationaware; 

console.log(params);


xmlhttp=new XMLHttpRequest();

xmlhttp.open("POST", url, true);

//Send the proper header information along with the request
xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

xmlhttp.onreadystatechange=function()
{

if (xmlhttp.readyState==4 && xmlhttp.status==200)
{
//console.log("here");
}
}
xmlhttp.send(params);


}


//runExperience("soundShape");
//runExperience("4video");


</script>

<script type="text/javascript">

function init () {

document.write('<form action="logout.php">');
    document.write('<input type="submit" value="Logout">');
document.write('</form>');

document.write('<H1>SitW Client - Scheduler Remote Control</H1>');

document.write('This app allows you to manually select either an individual experience, or the automatic schedule.<BR>');
document.write('Your selection will run on all screens in the SitW Network, it is not currently possible to select the schedule at individual screens.<BR>'); 
document.write('From the drop-down menu below, select either an experience - or ** AUTOSCHEDULE ** to go back to the automatic schedule.<BR>');
document.write('There is no SUBMIT button, the request will be sent as soon as you select from the drop-down menu.<BR>');
document.write('There may be a delay or up to a minute before the screen network responds.<P>');


/**** START - GET THE $EXPERIENCES VARIABLE FROM PHP *****/

// Note: $experiences is accessible here because this page requires access.php, which in turn requires config.php, where $experiences lives. 

var javaScriptVar = new Array();

<?php
echo 'var experiencesArrayFromPHP = new Array();';
$count = 0;
foreach($experiences as $myItem) {
    echo 'experiencesArrayFromPHP[' . $count . '] = "' . $myItem[experienceName] . '";';
    $count += 1;
}
?>
/**** END - GET THE $EXPERIENCES VARIABLE FROM PHP *****/

 
document.write('<form id ="experience_select_form" name="experience_select_form">');
document.write('<select id ="experience_select_menu" name="experience_select_menu"'); 
document.write('onChange="runExperience(document.experience_select_form.experience_select_menu.options[document.experience_select_form.experience_select_menu.options.selectedIndex].value)">');
document.write('<option>Select an experience to run now, or set to auto...</option>');
document.write('<option value=autoschedule>** AUTOSCHEDULE **</option>');
// Create drop down menu entries for experiences, 'on the fly'. 
var i=0;
while (experiencesArrayFromPHP[i])
{
document.write('<option value='+experiencesArrayFromPHP[i]+'>'+experiencesArrayFromPHP[i]+'</option>');
i++;
}
document.write('</select>');
document.write('</form>');

document.write('<HR>');

document.write('This next bit is to test running new experiences on the network (in Firefox)...use with care!! <BR>');
document.write('Enter the URL of the new experience and then select a video mode and whether to set location-aware. <BR>');
document.write('Click "run" and (after a similar delay to above) it will run on all screens. <BR>');
document.write('Use the ** AUTOSCHEDULE ** option on the above drop-down menu to go back to automatic schedule. <P>');

document.write('URL: <input name="experience_url" type="text" value="http://www.cs.nott.ac.uk/sitw/experiences/soundshape/stable/" style="width: 600px;" id="experience_url"/><BR>');


document.write('<form id ="browser_select_form" name="browser_select_form">');
document.write('Select a browser to use...<BR>');
document.write('<select id ="browser_select_menu" name="browser_select_menu">'); 
//document.write('<option>Select a browser to use...</option>');
document.write('<option value=Firefox>Firefox</option>');
document.write('<option value=Chrome>Chrome</option>');
document.write('</select>');
document.write('</form>');

document.write('2-way video<input type="radio" name="videomode" checked="checked" value="2wayvideo"><BR>');
document.write('Transmit video only<input type="radio" name="videomode" value="transmitonly"><BR>');
document.write('No video<input type="radio" name="videomode" value="novideo"><BR>');

document.write('Location aware (NA,BW,LE,WA etc)?<input type="checkbox" name="locationaware" id="locationcheckbox" value="yes"><BR>');

//document.write('<input name="buttonExecute" onclick="runURL(document.getElementById(\'experience_url\').value, document.getElementsByName(\'videomode\'), //document.getElementById(\'locationcheckbox\'))" type="button" value="Run" />');

document.write('<input name="buttonExecute" onclick="runURL(document.getElementById(\'experience_url\').value, document.browser_select_form.browser_select_menu.options[document.browser_select_form.browser_select_menu.options.selectedIndex].value, document.getElementsByName(\'videomode\'), document.getElementById(\'locationcheckbox\'))" type="button" value="Run" />');


}

</script>

<script type="text/javascript">
init();
</script>

</head>

<body>
</body>


