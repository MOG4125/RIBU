@echo off 
:: Set your extension and icon name here
 set EXT=.ribu
 set ICON_NAME=ribuicon.ico

 :: Get the current folder path set ICON_PATH=%~dp0%ICON_NAME%

 :: Add the extension to the registry
 reg add "HKEY_CLASSES_ROOT\%EXT%" /ve /t REG_SZ /d "CustomFileType" /f
 reg add "HKEY_CLASSES_ROOT\CustomFileType\DefaultIcon" /ve /t REG_SZ /d "%ICON_PATH%" /f
 
:: Refresh the icon cache so it shows up immediately
 ie4uinit.exe -show echo
 Icon installed for %EXT%! 
pause