SETLOCAL ENABLEDELAYEDEXPANSION
REM ------------------------------------------------.
REM   CHRISTIAN					    |
REM ------------------------------------------------+---
TITLE WRITE A SCRIPT
ECHO OFF
REM INITIALISE THIS COUNTER ACCORDING TO THE INITIAL DEPTH
SET /A COUNTER=0
ECHO PLEASE RUN DIR /S ^>WIN.LOG.1.TXT  AND ENTER THE FOLDER PATH BELOW:
REM THIS IS THE PATH POSITION, STARTING IS O
TIMEOUT 1 >NUL
CLS
SET LOOP=%1
IF "%LOOP%"=="" ( SET /A LOOP=0 )
ECHO ENTER FOLDER PATH:


SET /P PTR=
ECHO ON
IF "%PTR%"=="" ( FOR /F "DELIMS=*" %%I IN ('CD') DO SET PTR=%%I)
ECHO DIRECTORY IS %PTR%
SET STR=%PTR:\=/%
SET STR=%STR:"=%

REM TRIMMING PATH NAMES
SET PTR=%PTR%\PYTHON.SCRIPT.PY

TIMEOUT 1 >NUL
SET PTR=%PTR:"=%

REM PLEASE ENTER WINDOWS FRIENDLY PATH AVOID AMPERSAND AND OTHER CHARACTERS WHICH MAY INTERFERE WITH THIS BAT



ECHO OFF
CLS
ECHO ENTER THE FILE NAME TO SPLIT:
SET /P FILENAME=
ECHO ON
:LOP
COLOR 8 
CLS
ECHO OFF
FOR /L %%I IN (1,1,20) DO ECHO GENERATING PYTHON.SCRIPT!COUNTER!.PY, EXIT NOW
TIMEOUT 3 >NUL
CLS
COLOR F 
ECHO ON
IF %LOOP%==0 ( SET /A COUNTER+=1 ) ELSE ( SET /A COUNTER=LOOP )

REM FILE TO WRITE PATH BE CHANGED
POWERSHELL -C "WRITE-HOST -NONEWLINE WRITER = OPEN\"(\" \"'\"">"%PTR%"
FOR /F "DELIMS=*" %%I IN ("%STR%") DO POWERSHELL -C "WRITE-HOST -NONEWLINE %%I">>"%PTR%"
POWERSHELL -C "WRITE-HOST -NONEWLINE /!FILENAME!.PART.!COUNTER!.TXT\"'\" \",\" \"'\"" >>"%PTR%"
POWERSHELL -C "WRITE-HOST W\"'\" \")\"" >>"%PTR%"

POWERSHELL -C "WRITE-HOST -NONEWLINE FILE = OPEN\"(\" \"'\"">>"%PTR%"
FOR /F "DELIMS=*" %%I IN ("%STR%") DO POWERSHELL -C "WRITE-HOST -NONEWLINE %%I">>"%PTR%"
POWERSHELL -C "WRITE-HOST -NONEWLINE /!FILENAME!\"'\" \",\" \"'\"" >>"%PTR%"
POWERSHELL -C "WRITE-HOST R\"'\" \")\"" >>"%PTR%"
ECHO. >>"%PTR%"
ECHO LINES = FILE.READLINES()>>"%PTR%"
ECHO IMPORT RE >>"%PTR%"
POWERSHELL -C "WRITE-HOST -NONEWLINE REGEX = R\"'\"[A-ZA-Z][:]">>"%PTR%" & (FOR /L %%I IN (1,1,!COUNTER!) DO POWERSHELL -C "WRITE-HOST -NONEWLINE [\\][^\\]+">>"%PTR%")& POWERSHELL -C "WRITE-HOST $\"'\"">>"%PTR%"
ECHO FOR LINE IN LINES:>>"%PTR%"
POWERSHELL -C "WRITE-HOST \"`TMATCH = RE.MATCH(REGEX, LINE)\"">>"%PTR%"
START CMD /V:OFF /C ECHO_ME.BAT
FOR /L %%I IN (1,1,20) DO ECHO TIMEOUT IS NECESSARY, DO NOT CLOSE WINDOW,
TIMEOUT 3 
REM THIS TIMEOUT IS IMPORTANT TO MAKE SURE THE FILE WRITES PROPERLY TO THE SAME FILE THIS SCRIPT IS ALREADY WRITING TO
POWERSHELL -C "WRITE-HOST \"`T`TPRINT(LINE)\"">>"%PTR%"
POWERSHELL -C "WRITE-HOST \"`T`TWRITER.WRITELINES(LINE)\"">>"%PTR%"
ECHO WRITER.CLOSE()>>"%PTR%"

ECHO FILE.CLOSE()>>"%PTR%"

REM THIS IS WHERE I RENAME THE PYTHON FILE ACCORDING TO THE RECURSE LEVEL

RENAME "%PTR%" PYTHON.SCRIPT.!COUNTER!.PY

IF %LOOP%==0 ( GOTO LOP )
