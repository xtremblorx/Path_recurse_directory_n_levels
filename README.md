<sup>SAMPLE INPUT:`win.log.1.txt`................................SAMPLE OUTPUT: `win.log.1.txt.PART.1`</sup>

<sup>c:\abr\usr\hel\20\live.jpg..................................c:\abr

<sup>c:\abr......................................................c:\user

###<ins> File number of output txt indicates RECURSE level/ PATH depth level:</ins>

<sup>SAMPLE INPUT:`win.log.1.txt`................................SAMPLE OUTPUT: `win.log.1.txt.PART.2`

<sup>c:\abr\usr\hel\20\live.jpg..................................c:\abr\usr

<sup>c:\abr......................................................c:\user\myhello

## This command generates a sample input file containing list of directories
`dir /s /ad /b >win.log.1.txt`

#### <sup>IF YOU WANT TO WORK WITH FILES, YOU MAY TRY `dir /s /b >win.log.1.txt`</sup>
### Enter the above file name when your script will run-
###### [ Please make sure to Transfer this file where the BAT will have read write access
###### Now run the BAT and enter the folder path when prompted AND enter (above) input file name ]



### Of the python scripts generated . Please close bat file when python.%i.py is WRITTEN where %i is MAXimimum DEpth


#### Now please run ALL python files like this in the command prompt:
``for /l %i in (1,1,5) do python python.%i.py``

#### to run ALL the Python Scripts. Replace the loop number above with your ( own MAX ) depth
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






