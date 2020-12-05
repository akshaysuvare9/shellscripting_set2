1=>getip
Write a shell script to extract the IP address given the network
interface name as a parameter.
Eg.
$ ./getip wlan0
192.168.2.10
$
Include validity checking to verify that the user passed a valid interface (it
should exist).
 
2=>typ
Write a shell script of the form:
typ <filespec>
that displays whether the file(s) matching the filespec is/are:
  readable / writeable / executable
  file type (regular, directory, block special, character special, soft link)
           Filespec can be a wildcard.
 
3=>total
Write a shell script that prints the total space used by a specified directory (and all it's
files & sub-directories) in bytes, kilobytes and megabytes. It should be of the form:
$ total <start_directory>
...
<start_directory>:b:k:m
$
(bytes:Kb:Mb)
 
4=>bkp
Write a simple backup script; it should work like this:
bkp [--restore] <src_dir> <dest_dir>
It should recursively tar and compress all files under <src_dir> and store the resulting compressed .tar.xz file in <dest_dir>
If an older copy exists, rename it to end in .tar.xz.bkp.
If the --restore option is passed (as first parameter), then the third parameter is the location of the .tar.xz backup file, and you should restore it’s content into the <src_dir> (second parameter) specified. (Be careful! test in a local ~/tmp directory only at first and as non-root).

5=>bday1
Write a shell script that checks when logging in, whether it is any of the known user's
birthday today. Design and make use of a simple flat-file database "bday.dat" to store
user information. The ‘database’ file should be in CSV format; a suggested ‘record’ might be:
first_name,last_name,DOB,note_or_comment
 
6=>bday2
Enhance the birthday-detection script bday1 such that it can be made "installable"; for this, package all the files it requires it as a "tarball", and write an installation script such that even a novice user can easily & successfully install it for his/her use! (It should get installed within ~/.local and the PATH variable can be updated to include its folder)
have it automatically run every day (you choose a time) via cron (the output should of course be captured, and your script should detect the fact that its someone’s birthday).
