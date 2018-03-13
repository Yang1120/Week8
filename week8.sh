#!/bin/sh
#Week 8 script for midterm

echo "Hello Everyone"

mkdir  Directory_1
mkdir  Directory_2
mkdir  Directory_3
mkdir  Directory_4

touch file1
touch file2
touch .file3 # Hidden  file
touch .file4 # Hidden  file

echo "This is the first file" > file1
echo "This is the second file" > file2
echo "This is the third file" > .file3
echo "This is the forth file" > .file4

ls # won't see file3 and file4 as they are hidden.
ls -a # this will allow you to see the hidden files.

mv file1 Directory_1
mv file2 Directory_2
mv .file3 Directory_3
mv .file4 Directory_4

cd Directory_1
cat file1
cd ..

cd Directory_2
cat file2
cd ..

cd Directory_3
cat .file3
cd ..

cd Directory_4
cat .file4
cd ..

cd Directory_1
file file1
 
# Let view the manual command

man ls

man -k sort

# Let view the  the processor/cpu info

head /proc/cpuinfo

# Let view the device file

cd /dev

ls

cd ..

cd /home/user

#  to view more datails about udevadm

udevadm info --query=all --name=/dev/sda

# to monitor udevadm events
udevadm monitor

echo Done!!





