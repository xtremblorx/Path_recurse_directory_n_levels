SETLocal EnableDELAYEDexpansioN
set /a counter=0
echo Please run dir /s ^>win.log.1.txt  AND enter the folder path BELOW:
rem THIS IS THE PATH POSITION, STARTING IS O
echo Enter path without Quotes with no trailing slash in the end 
set /p str=
set str=%str:\=\\%

:lop

TIMEOUT 2
set /a counter+=1
rem PLEASE ENTER windows friendly path avoid Ampersand and other characters which may interfere with this BAT




rem FILE TO WRITE PATH BE CHANGED

ECHO writer = open('%str%\\win.log.part.!counter!.txt','w')>>"c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY"
ECHO file = open('%str%\\win.log.1.txt','r')>>"c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY"
ECHO lines = file.readlines()>>"c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY"
ECHO import re >>"c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY"
powershell -c "write-host -nonewline regex = r\"'\"[A-Za-z][:]">>"c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY" & (for /l %%i in (1,1,!counter!) do powershell -c "write-host -nonewline [\\][^\\]+">>"c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY")& powershell -c "write-host $\"'\"">>"c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY"
ECHO for line in lines:>>"c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY"
POWERSHELL -C "wRITE-HOST \"`tmatch = re.match(regex, line)\"">>"c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY"
Start Cmd /v:off /c echo_me.bat
 
 timeout 3
REM this timeout is important to make sure the file Writes properly to the Same file this script is already writing to
POWERSHELL -C "wRITE-HOST \"`t`tprint(line)\"">>"c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY"
POWERSHELL -C "wRITE-HOST \"`t`twriter.writelines(line)\"">>"c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY"
ECHO writer.close()>>"c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY"

echo file.close()>>"c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY"

REM this is where I rename the python file according to the recurse level

rename PYTHON.SCRIPT.PY PYTHON.SCRIPT.!counter!.PY

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
