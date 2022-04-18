@echo off

: Helsesjekk

color 02

echo   									  ::                     
echo                                                                           shy:                   
echo                                                                           +hhhs-                 
echo                                                                           `syysso-               
echo       .////////  ./:       `:/     :/`     `:/     .:+++:`     :////:.     `/ssooo+-             
echo       hmdyyyyys  ymy       +mm   :hmd-     omm   -ymdsosy/`.  :mmhyydmh-     ./oooo++-           
echo       hmy`````   ymy       omm -ymd/       omm  -mm/      dm- /mm.   hmy       `:+++++/`         
echo       hmmmmmmd`  ymy       omm+mmh`        omm  +mh       ym+ /mm.:+smm/        :+:++++.         
echo       hms        ymy       omm -ymd/   .   smd  .dh      /md. /mm-ooo/`        :yhs`/+/          
echo       hmdhhhhhh` ymdhhhhh+ omm   -ymd-+mdyhmm/   ` +hysydms.  /mm.           -oyyhh.`.           
echo       -:::::::-  -:::::::` .:.     -:` .://:`      `-///-`    .:-          .+ssssy+              
echo                                                                           .ooooo+.               
echo                                                                           /+oo/.                 
echo                                                                          /+/.                   
echo 								        .`                     
powershell write-host -fore Red //////////////////////////////Helsesjekk\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
echo.

: MWBytes Installer
powershell write-host -fore Cyan [1/6] Installerer MWBytes...
ping localhost -n 2 >nul
MalwarebytesInstaller.exe 

echo.
pause
echo.

: KJØRER MWBytes
powershell write-host -fore Cyan [2/6] Starter MWBytes...
ping localhost -n 1 >nul
"C:\Program Files\Malwarebytes\Anti-Malware\mbam.exe"

echo.

: CCleaner
Pause
echo.
powershell write-host -fore Cyan [2/5] Starter CCleaner...
ping localhost -n 2 >nul
ccPortable\ccPortable.exe  /AUTO 

echo.

: MWBytes Uninstall
pause
echo.
powershell write-host -fore Cyan [3/5] Avinstallerer MWbytes... 
ping localhost -n 2 >nul
"C:\Program Files\Malwarebytes\Anti-Malware\mbuns.exe"  /verysilent /suppressmsgboxes /norestart

echo.

: ADWCleaner
pause
echo.
powershell write-host -fore Cyan [4/5] Starter ADWCleaner...
ping localhost -n 2 >nul
adwcleaner.exe

echo.

: Windows Update
pause
echo.
powershell write-host -fore Cyan [5/5] Starter Windows update. Ser etter oppdateringer...
ping localhost -n 3 >nul
explorer ms-settings:windowsupdate-action

ping localhost -n 3 >nul

echo.

echo Done!

ping localhost -n 3 >nul

@end