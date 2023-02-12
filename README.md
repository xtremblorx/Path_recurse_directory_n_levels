## Try running the following Commands in a Directory whose contents you want to work upon:
`dir /ad /b >win.log.1.txt`
### Please make sure the above command is exactly the same especially the output filename
###### Now please Transfer this file into a convenient location (where the BAT will have read write access)
###### Now run the BAT (in the same folder) and enter the folder path when prompted <i><b>without trailing slash or quotes</i></b>

eg. `c:\users\my\desktop`

### Now there will be a number of python scripts generated . Please close bat file when the python script number which is according to N recurse level is according to your requirement has been written.
#### For eg. If my requirement is 4 depth , then I may close the file once `python.4.py` is written

#### Now please run something like this in the command prompt:
``for /l %i in (1,1,5) do python python.%i.py``

#### Replace number 5 above with your depth


