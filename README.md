## <sup><sup>-------------------------------------------------------------------------------------------------------------
## <sup><sup>THE SCRIPTS GENERATED BY THIS BAT FILE, SPLIT AN INPUT FILE CONTAINING PATHS INTO LISTS OF PATHS ACCORDING TO THEIR DEPTH NUMBER N</sup></sup>
## <sup><sup>-------------------------------------------------------------------------------------------------------------

#### ( Here this command generates a sample input file :
```              dir /s /ad /b >win.log.1.txt```




###### Now run the BAT file REDDEMER.bat and enter the folder path when prompted AND enter (above) input file name ]



##### Please Kill the bat file when python.%i.py is FINISHED WRITING where %i is the DEPTH. Then simple run all the python scripts one by one to generate corresponding depth output files.


##### <sup> Here is a sample command to run All python files, where 5 is the depth: </sup>
``for /l %i in (1,1,5) do python python.%i.py``


<sup><ins>Here is a Sample Command line Session :</ins>
```
cd   c:\users\my\downloads\
copy REDDEMER.BAT' c:\users\my\desktop
copy 'ECHO_ME.BAT' c:\users\my\desktop
CD \
dir /s /ad /b >c:\users\my\desktop\win.log.1.txt
cd c:\users\my\desktop
REDDEMER.BAT
taskkill /fi "windowtitle eq WRITE A SCRIPT*"
for /l %i in (1,1,5) do python python.%i.py
```






