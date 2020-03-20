User@SWAPNIKA MINGW32 ~ (master)
$ cd pranjalikawale/terminalcommand

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$ nano -T 3 hello.java

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$ javac hello.java

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$ java hello &
[1] 1952

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$ Hello World


User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$ ps -elf | grep java | grep -v grep | awk '{print $2}'
1952

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$ mypid= ps -elf | grep java | grep -v grep | awk '{print $2}'

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$ echo $mypid

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$ echo hello tom
hello tom

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$ echo hello tom
hello tom

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$ echo hello tom  | awk '{print $0}'
hello tom

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$ echo hello tom  | awk '{$2="Admn"}{print $0}'
hello Admn

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$ touch data.csv

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$ cat> data.csv
id    name     jobtitle   basepay
1     tom       gm        12000
2     admn      captain   20000
3     gary      Captain   30000

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$ cat data.csv | grep captain | awk '{print $2 " " $4}'
admn      captain


User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$ cat data.csv | grep captain | awk '{sum+=$4}{print sum}'
20000

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$ cat data.csv | grep captain | awk '{sum+=$4}END{print sum}'
20000

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$ cat data.csv | grep captain | awk '{sum+=$4}END{print sum/NR}'
20000
