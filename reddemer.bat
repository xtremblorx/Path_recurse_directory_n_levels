SETLocal EnableDELAYEDexpansioN
@echo off
rem Initialise this counter according to the Initial Depth
set /a counter=0
echo Please run dir /s ^>win.log.1.txt  AND enter the folder path BELOW:
rem THIS IS THE PATH POSITION, STARTING IS O
timeout 1 >nul
cls
echo Enter path ........ with no trailing slash in the end 
echo .-Also try to make sure folder location is bat friendly, where it can read-write preferably the desktop-.


set /p ptr=
echo on
if "%ptr%"=="" ( for /f "delims=*" %%i in ('cd') DO set ptr=%%i)
echo CDing into %ptr%
set str=%ptr:\=/%
set str=%str:"=%

REM trimming path names
set ptr=%ptr%\Python.script.py

Timeout 1 >nul

Timeout 1 >nul
set ptr=%ptr:"=%
:lop

TIMEOUT 2
set /a counter+=1
rem PLEASE ENTER windows friendly path avoid Ampersand and other characters which may interfere with this BAT



@echo off
echo Enter the file name to split:
set /p filename=
rem FILE TO WRITE PATH BE CHANGED
powershell -c "write-host -nonewline writer = open\"(\" \"'\"">"%ptr%"
for /f "delims=*" %%i in ("%str%") do powershell -c "write-host -nonewline %%i">>"%ptr%"
powershell -c "write-host -nonewline /!filename!.PART.!counter!.txt\"'\" \",\" \"'\"" >>"%ptr%"
powershell -c "write-host w\"'\" \")\"" >>"%ptr%"

powershell -c "write-host -nonewline file = open\"(\" \"'\"">>"%ptr%"
for /f "delims=*" %%i in ("%str%") do powershell -c "write-host -nonewline %%i">>"%ptr%"
powershell -c "write-host -nonewline /!filename!\"'\" \",\" \"'\"" >>"%ptr%"
powershell -c "write-host r\"'\" \")\"" >>"%ptr%"
ECHO. >>"%ptr%"
ECHO lines = file.readlines()>>"%ptr%"
ECHO import re >>"%ptr%"
powershell -c "write-host -nonewline regex = r\"'\"[A-Za-z][:]">>"%ptr%" & (for /l %%i in (1,1,!counter!) do powershell -c "write-host -nonewline [\\][^\\]+">>"%ptr%")& powershell -c "write-host $\"'\"">>"%ptr%"
ECHO for line in lines:>>"%ptr%"
POWERSHELL -C "wRITE-HOST \"`tmatch = re.match(regex, line)\"">>"%ptr%"
Start Cmd /v:off /c echo_me.bat
 
 timeout 3
REM this timeout is important to make sure the file Writes properly to the Same file this script is already writing to
POWERSHELL -C "wRITE-HOST \"`t`tprint(line)\"">>"%ptr%"
POWERSHELL -C "wRITE-HOST \"`t`twriter.writelines(line)\"">>"%ptr%"
ECHO writer.close()>>"%ptr%"

echo file.close()>>"%ptr%"

REM this is where I rename the python file according to the recurse level

rename "%ptr%" PYTHON.SCRIPT.!counter!.PY


goto lop
