<sup>SAMPLE INPUT:`win.log.1.txt`................................SAMPLE OUTPUT: `win.log.1.txt.PART.1`</sup>

<sup>c:\abr\usr\hel\20\live.jpg..................................c:\abr

<sup>c:\abr......................................................c:\user

###<ins> File number of output txt indicates RECURSE level/ PATH depth level:</ins>

<sup>SAMPLE INPUT:`win.log.1.txt`................................SAMPLE OUTPUT: `win.log.1.txt.PART.2`

<sup>c:\abr\usr\hel\20\live.jpg..................................c:\abr\usr

<sup>c:\abr......................................................c:\user\myhello

## Try running the following Commands in a Directory whose contents you want to work upon:
`dir /ad /b >win.log.1.txt`
### Please make sure the above command is exactly the same especially the output file name
###### Now please Transfer this file into a convenient location (where the BAT will have read write access)
###### Now run the BAT (in the same folder) and enter the folder path when prompted <i><b>without trailing slash or quotes</i></b>

eg. `c:\users\my\desktop`

### Now there will be a number of python scripts generated . Please close bat file when the python script number which is according to N recurse level is according to your requirement has been written.
#### For eg. If my max depth level requirement is 4  , then I may close the file once `python.4.py` is written

#### Now please run something like this in the command prompt:
``for /l %i in (1,1,5) do python python.%i.py``

#### to run ALL the Python Scripts. Replace number 5 above with your ( own MAX ) depth
<sup><ins>Here is a Sample Command line Session :</ins>
```
cd   \
copy 'c:\users\my\downloads\WRITE A SCRIPT.BAT' c:\users\my\desktop
copy 'ECHO_ME.BAT' c:\users\my\desktop
dir /ad /b >c:\users\my\desktop\win.log.1.txt
for /l %i in (1,1,5) do python python.%i.py
```






