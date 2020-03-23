User@SWAPNIKA MINGW32 ~ (master)
$ cd pranjalikawale

User@SWAPNIKA MINGW32 ~/pranjalikawale (master)
$ cd terminalcommand

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$ nano -T 3 hello.java

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$ javac hello.java

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$ java hello &
[1] 1074
Hello World

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$ Hello World
ps -elf | grep java | grep -v grep
    User    1074     982 pty1     16:37:36 /c/Program Files (x86)/Java/jdk1.7.0_10/bin/java

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$ Hello World


User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$ jobs
[1]+  Running                 java hello &

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$ Hello World
Hello World


User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$  fg %1
java hello

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$ Hello World

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$  bg %1
bash: bg: job 1 already in background

User@SWAPNIKA MINGW32 ~/pranjalikawale/terminalcommand (master)
$ killall java
