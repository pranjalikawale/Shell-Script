$ mkdir conditionalloop

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$ cd conditionalloop

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ touch abc.txt def.txt

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ ls
abc.txt  def.txt

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ ls -p
abc.txt  def.txt

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ ls *.txt
abc.txt  def.txt

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ for file in ls *.txt
> do
> echo $file
> done
ls
abc.txt
def.txt

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ for file in `ls *.txt`; do foldername=`echo $file | awk -F. '{print $1}'`; echo $foldername; done
abc
def

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ for file in `ls *.txt`
> do
> foldername=`echo $file | awk -F. '{print $1}'`
> mkdir $foldername
> cp $file $foldername
> echo copied $file to $foldername
> done
copied abc.txt to abc
copied def.txt to def

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ ls -p
abc/  abc.txt  def/  def.txt

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ ls -p abc/
abc.txt

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ ls -p def/
def.txt

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ nano forloop.sh

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ cat forloop.sh
#!/bin/bash -x

for file in `ls *.txt`;
do
        foldername=`echo $file | awk -F. '{print $1}'`;
        if [ -d $folderName ]
        then
                rm -R $foldername;
        fi
        mkdir  $foldername;
        cp $file $foldername;
done

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ less forloop.sh

[1]+  Stopped                 less forloop.sh


User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ ls -l
total 1
drwxr-xr-x 1 User 197609   0 Mar 20 12:07 abc/
-rw-r--r-- 1 User 197609   0 Mar 20 11:27 abc.txt
drwxr-xr-x 1 User 197609   0 Mar 20 12:07 def/
-rw-r--r-- 1 User 197609   0 Mar 20 11:27 def.txt
-rwxr-xr-x 1 User 197609 163 Mar 20 12:23 forloop.sh*

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ chmod +x forloop.sh

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ echo $((RANDOM))
17700

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ echo $(((RANDOM%10)+1))
10

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ ls -p
abc/  abc.txt  def/  def.txt  forloop.sh

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ rm -R abc

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ ls -p
abc.txt  def/  def.txt  forloop.sh

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ rm -R def

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ ls -p
abc.txt  def.txt  forloop.sh

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ ./forloop.sh
++ ls abc.txt def.txt
+ for file in `ls *.txt`
+ foldername=echo
+ abc.txt
./forloop.sh: line 5: abc.txt: command not found
+ awk -F. '{print $1}'
+ rm -R
rm: missing operand
Try 'rm --help' for more information.
+ mkdir
mkdir: missing operand
Try 'mkdir --help' for more information.
+ cp abc.txt
cp: missing destination file operand after 'abc.txt'
Try 'cp --help' for more information.
+ for file in `ls *.txt`
+ foldername=echo
+ def.txt
./forloop.sh: line 5: def.txt: command not found
+ awk -F. '{print $1}'
+ rm -R
rm: missing operand
Try 'rm --help' for more information.
+ mkdir
mkdir: missing operand
Try 'mkdir --help' for more information.
+ cp def.txt
cp: missing destination file operand after 'def.txt'
Try 'cp --help' for more information.

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ ls -p
abc.txt  def.txt  forloop.sh

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ nano forloop.sh

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ ./forloop.sh
++ ls abc.txt def.txt
+ for file in `ls *.txt`
++ echo abc.txt
++ awk -F. '{print $1}'
+ foldername=abc
+ '[' -d ']'
+ rm -R abc
+ mkdir abc
+ cp abc.txt abc
+ for file in `ls *.txt`
++ echo def.txt
++ awk -F. '{print $1}'
+ foldername=def
+ '[' -d ']'
+ rm -R def
+ mkdir def
+ cp def.txt def

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ ls  -p
abc/  abc.txt  def/  def.txt  forloop.sh

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ rm -R def

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ ./forloop.sh
++ ls abc.txt def.txt
+ for file in `ls *.txt`
++ echo abc.txt
++ awk -F. '{print $1}'
+ foldername=abc
+ '[' -d ']'
+ rm -R abc
+ mkdir abc
+ cp abc.txt abc
+ for file in `ls *.txt`
++ echo def.txt
++ awk -F. '{print $1}'
+ foldername=def
+ '[' -d ']'
+ rm -R def
rm: cannot remove 'def': No such file or directory
+ mkdir def
+ cp def.txt def

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand/conditionalloop (master)
$ ls  -p
abc/  abc.txt  def/  def.txt  forloop.sh
