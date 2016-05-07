@echo off

if "%1" == "NAE" goto NAE
if "%1" == "Broadway" goto Broadway
if "%1" == "Leytonstone" goto Leytonstone
if "%1" == "Mill" goto Mill

echo "MM:Wrong Para"
goto End

:NAE
echo "MM:NAE"
Start chrome.exe --kiosk -incognito --allow-running-insecure-content "https://pdnet.inf.unisi.ch/PhotoBooth/?id=8&size=portrait&camerarotation=clockwise"
goto END

:Broadway
echo "MM:Broadway"
Start chrome.exe --kiosk -incognito --allow-running-insecure-content "https://pdnet.inf.unisi.ch/PhotoBooth/?id=7&size=portrait&camerarotation=clockwise"
goto END

:Leytonstone
echo "MM:Leytonstone"
Start chrome.exe --kiosk -incognito --allow-running-insecure-content "https://pdnet.inf.unisi.ch/PhotoBooth/?id=6&size=portrait&camerarotation=anticlockwise"
goto END

:Mill
echo "MM:Mill"
Start chrome.exe --kiosk -incognito --allow-running-insecure-content "https://pdnet.inf.unisi.ch/PhotoBooth/?id=5&size=portrait&camerarotation=anticlockwise"
goto END

:End
Exit


