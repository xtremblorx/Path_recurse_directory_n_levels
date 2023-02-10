SETLocal EnableDELAYEDexpansioN
set /a counter=0
rem THIS IS THE PATH POSITION, STARTING IS O

:lop

TIMEOUT 2
set /a counter+=1

rem FILE TO WRITE PATH BE CHANGED

ECHO writer = open('C:\\Users\\Anil Bapna\\Desktop\\win.log.part.!counter!.txt','w')>>"c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY"
ECHO file = open('C:\\Users\\Anil Bapna\\Desktop\\win.log.1.txt','r')>>"c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY"
ECHO lines = file.readlines()>>"c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY"
ECHO import re >>"c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY"
powershell -c "write-host -nonewline regex = r\"'\"[A-Za-z][:]">>"c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY" & (for /l %%i in (1,1,!counter!) do powershell -c "write-host -nonewline [\\][^\\]+">>"c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY")& powershell -c "write-host $\"'\"">>"c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY"
ECHO for line in lines:>>"c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY"
POWERSHELL -C "wRITE-HOST \"`tmatch = re.match(regex, line)\"">>"c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY"
Start Cmd /v:off /c echo_me.bat
 timeout 3

POWERSHELL -C "wRITE-HOST \"`t`tprint(line)\"">>"c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY"
POWERSHELL -C "wRITE-HOST \"`t`twriter.writelines(line)\"">>"c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY"
ECHO writer.close()>>"c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY"

echo file.close()>>"c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY"

rename PYTHON.SCRIPT.PY PYTHON.SCRIPT.!counter!.PY

goto lop



SETLocal EnableDELAYEDexpansioN
set /a counter=18

SET PATHFILE=c:\USERS\ANIL BAPNA\DESKTOP\PYTHON.SCRIPT.PY

:lop

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

goto lop
