## <sup><sup>THE SCRIPTS GENERATED BY THIS BAT FILE, SPLIT AN INPUT FILE CONTAINING PATHS INTO DIFFERENT FILES ACCORDING TO THEIR DEPTH</sup></sup>

#### ( Here this command generates a sample input file :
              `dir /s /ad /b >win.log.1.txt`


##### Now to split this file into paths by their DEPTHS

###### Now run the BAT file REDDEMER.bat and enter the folder path when prompted AND enter (above) input file name ]



#### Please close bat file when python.%i.py is WRITTEN where %i is the DEPTH


####  Now please run ALL python files like this in the command prompt:
``for /l %i in (1,1,5) do python python.%i.py``

####  to run ALL the Python Scripts. Replace the loop number above with your ( own MAX ) depth
<sup><ins>Here is a Sample Command line Session :</ins>
```
cd   \
copy 'c:\users\my\downloads\REDDEMER.BAT' c:\users\my\desktop
copy 'ECHO_ME.BAT' c:\users\my\desktop
dir /s /ad /b >c:\users\my\desktop\win.log.1.txt
cd c:\users\my\desktop
REDDEMER.BAT
for /l %i in (1,1,5) do python python.%i.py
```






