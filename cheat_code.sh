🐧 Linux Commands & Shell Scripting – Important
📄 PAGE 1: BASIC LINUX COMMANDS
File & Directory Commands
• 
• 
• 
• 
• 
• 
• 
• 
• 
pwd – print current directory
ls , 
ls -l , 
cd , 
ls -a , 
ls -lh
cd .. , 
cd ~
touch – create empty file
mkdir , 
mkdir -p
rmdir – remove empty directory
rm , 
rm -r , 
rm -f , 
cp , 
cp -r
mv
Viewing Files
• 
• 
• 
• 
cat
tac
less , 
more
head , 
rm -rf
tail , 
tail -f
📄 PAGE 2: FILE PERMISSIONS & OWNERSHIP
Permissions
• 
• 
• 
r – read (4)
w – write (2)
x – execute (1)
Commands
• 
• 
• 
• 
• 
• 
chmod 777 file
chmod u+x file
chmod g-w file
chown user file
chown user:group file
chgrp group file
1
Special Permissions
• 
• 
• 
SUID – 
chmod 4xxx
SGID – 
chmod 2xxx
Sticky bit – 
chmod 1xxx
📄 PAGE 3: SEARCHING & TEXT PROCESSING
Searching
• 
• 
• 
• 
grep word file
grep -i (ignore case)
grep -r (recursive)
grep -v (exclude)
Text Tools
• 
• 
• 
• 
• 
• 
cut -d: -f1 /etc/passwd
awk '{print $1}' file
sed 's/old/new/g' file
sort
uniq
wc -l
📄 PAGE 4: SYSTEM & PROCESS COMMANDS
System Info
• 
• 
• 
• 
• 
uname -a
hostname
uptime
whoami
who , w
Memory & CPU
• 
• 
• 
free -h
top , 
htop
vmstat
Processes
• 
• 
• 
ps -ef
ps aux
kill PID
2
• 
kill -9 PID
📄 PAGE 5: DISK & NETWORK COMMANDS
Disk
• 
• 
• 
• 
df -h
du -sh folder
lsblk
mount , 
umount
Network
• 
• 
• 
• 
• 
• 
ip a
ip r
ping
netstat -tulnp
ss -tulnp
curl , 
wget
📄 PAGE 6: PACKAGE MANAGEMENT & ARCHIVING
Package Managers
• 
• 
• 
• 
apt update
apt install pkg
yum install pkg
dnf install pkg
Archiving
• 
• 
• 
• 
• 
• 
tar -cvf
tar -xvf
tar -czvf
tar -xzvf
zip , 
unzip
gzip , 
gunzip
3
�
� PAGE 7: SHELL SCRIPTING BASICS
Script Structure
#!/bin/bash
echo "Hello World"
Variables
• 
• 
Input
• 
• 
name="linux"
echo $name
read var
read -p "Enter:" var
Arguments
• 
• 
$0 , 
$1 , 
$@ , 
$2
$# , 
$?
📄 PAGE 8: CONDITIONS & LOOPS
If Condition
if [ $a-eq $b ]; then
echo "Equal"
fi
Operators
• 
• -eq , -ne , -gt , 
== , 
!=
Loops-lt , -ge , -le
for i in 1 2 3; do echo $i; done
while true; do echo hi; done
4
�
� PAGE 9: FUNCTIONS, ARRAYS & SIGNALS
Functions
myfun(){ echo "Hi"; }
myfun
Arrays
arr=(1 2 3)
echo ${arr[0]}
Signals
• 
• 
trap 'command' SIGINT
exit 0
📄 PAGE 10: ADVANCED & DEVOPS KEYWORDS
Cron Jobs
• 
• 
crontab -e
* * * * * command
Redirection
• 
• 
• 
• 
Pipes
• 
> overwrite
>> append
2> error
&> all output
|
Important Keywords
• 
• 
• 
• 
• 
• 
ENV , 
PATH
export
set -x
set -e
nohup
bg , 
fg
5
✅ END OF CHEAT SHEE
