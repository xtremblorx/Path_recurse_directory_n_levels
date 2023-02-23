SETLocal EnableDELAYEDexpansioN

rem Initialise this counter according to the Initial Depth
set /a counter=0
echo Please run dir /s ^>win.log.1.txt  AND enter the folder path BELOW:
rem THIS IS THE PATH POSITION, STARTING IS O
echo Enter path without Quotes with no trailing slash in the end 
echo .-Also try to make sure folder location is bat friendly, where it can read-write preferably the desktop-.


set /p ptr=
echo CDing into %ptr%
set str=%ptr:\=\\%
set str=%str:"=%

REM trimming path names
set ptr=%ptr%\Python.script.py

Timeout 1 >nul
set ptr=%ptr:\\=\%
Timeout 1 >nul
set ptr=%ptr:"=%
:lop

TIMEOUT 2
set /a counter+=1
rem PLEASE ENTER windows friendly path avoid Ampersand and other characters which may interfere with this BAT




rem FILE TO WRITE PATH BE CHANGED

ECHO writer = open('%str%\\win.log.part.!counter!.txt','w')>>"%ptr%"
ECHO file = open('%str%\\win.log.1.txt','r')>>"%ptr%"
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


rem The Following is Just a Duplicate (but, Different) Version
SETLocal EnableDELAYEDexpansioN
set /a counter=18

SET PATHFILE=c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY

:lopp

TIMEOUT 2
set /a counter+=1

ECHO writer = open('C:\\Users\\Anil Bapna\\Desktop\\win.log.part.!counter!.txt','w')>>"%PATHFILE%"
ECHO file = open('C:\\Users\\Anil Bapna\\Desktop\\win.log.1.txt','r')>>"%PATHFILE%"
ECHO lines = file.readlines()>>"%PATHFILE%"
ECHO import re >>"%PATHFILE%"
powershell -c "write-host -nonewline regex = r\"'\"[A-Za-z][:]">>"%PATHFILE%" & (for /l %%i in (1,1,!counter!) do powershell -c "write-host -nonewline [\\][^\\]+">>"%PATHFILE%")& powershell -c "write-host $\"'\"">>"%PATHFILE%"
ECHO for line in lines:>>"%PATHFILE%"
POWERSHELL -C "wRITE-HOST \"`tmatch = re.match(regex, line)\"">>"%PATHFILE%"
Start Cmd /v:off /c echo_me.bat
 timeout 3

POWERSHELL -C "wRITE-HOST \"`t`tprint(line)\"">>"%PATHFILE%"
POWERSHELL -C "wRITE-HOST \"`t`twriter.writelines(line)\"">>"%PATHFILE%"
ECHO writer.close()>>"%PATHFILE%"

echo file.close()>>"%PATHFILE%"

rename PYTHON.SCRIPT.PY PYTHON.SCRIPT.!counter!.PY

goto lopp
