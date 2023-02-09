SETLocal EnableDELAYEDexpansioN
set /a counter=18
:lop

TIMEOUT 2
set /a counter+=1

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



