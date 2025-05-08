# Docker hub
# -------------------code----------------------
# https://hub.docker.com/
# -------------------code----------------------


# '#' => admin
# '$' => user
# -------------------code----------------------
# root@da53c7e78fef:/#
# -------------------code----------------------


#  whoami
# login user info


# linux is case-sensitive 
# -------------------code----------------------
# root@da53c7e78fef:/# echo hi
# hi
# root@da53c7e78fef:/# Echo hi
# bash: Echo: command not found
# -------------------code----------------------

# shows you the name of the currently running process
# -------------------code----------------------
# root@da53c7e78fef:/# echo $0
# /bin/bash
# -------------------code----------------------


# check the command history
# -------------------code----------------------
# root@da53c7e78fef:/# history
#     1  ls
#     2  ls bin
#     3  clear
#     4  whoami
#     5  echo hi
#     6  Echo hi
#     7  ls
#     8  echo $0
#     9  history
# -------------------code----------------------

# every linux command has option in case of ls we -l to show 
# all the files details
# -------------------code----------------------
# root@da53c7e78fef:/# ls -l
# total 48
# lrwxrwxrwx   1 root root    7 Apr 22  2024 bin -> usr/bin
# drwxr-xr-x   2 root root 4096 Apr 22  2024 boot
# drwxr-xr-x   5 root root  360 Apr 24 09:21 dev
# drwxr-xr-x   1 root root 4096 Apr 24 09:21 etc
# drwxr-xr-x   3 root root 4096 Apr  4 02:12 home
# lrwxrwxrwx   1 root root    7 Apr 22  2024 lib -> usr/lib
# drwxr-xr-x   2 root root 4096 Apr  4 02:05 media
# drwxr-xr-x   2 root root 4096 Apr  4 02:05 mnt
# drwxr-xr-x   2 root root 4096 Apr  4 02:05 opt
# dr-xr-xr-x 163 root root    0 Apr 24 09:21 proc
# drwx------   2 root root 4096 Apr  4 02:12 root
# drwxr-xr-x   4 root root 4096 Apr  4 02:12 run
# lrwxrwxrwx   1 root root    8 Apr 22  2024 sbin -> usr/sbin
# drwxr-xr-x   2 root root 4096 Apr  4 02:05 srv
# dr-xr-xr-x  11 root root    0 Apr 24 09:21 sys
# drwxrwxrwt   2 root root 4096 Apr  4 02:12 tmp
# drwxr-xr-x  11 root root 4096 Apr  4 02:05 usr
# drwxr-xr-x  11 root root 4096 Apr  4 02:12 var
# -------------------code----------------------

# 'ls' show the current files/directories in the current location
# -------------------code----------------------
# root@da53c7e78fef:/# ls
# bin  boot  dev  etc  home  lib  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var
# -------------------code----------------------


# 'cd' to navigate 
# cd ~ go to 'home' directory  (~ called telda)
# NOTE: home == Desktop
# -------------------code----------------------
# root@da53c7e78fef:/# cd ~
# -------------------code----------------------

# PS: when using the root user the home directory is "root"
# but when using other user the "cd ~" which is take to navigate to home directory
# take you to "home" 
# -------------------code----------------------
# root@e97087e56636:/# ls
# bin   dev  home  media  opt   root  sbin  sys  usr
# boot  etc  lib   mnt    proc  run   srv   tmp  var
# -------------------code----------------------


# create a new file using 'touch'
# -------------------code----------------------
# root@da53c7e78fef:~# touch main.js
# to check if the file is created
# root@da53c7e78fef:~# ls
# main.js
# -------------------code----------------------



# create multi files at the same time
# -------------------code----------------------
# root@da53c7e78fef:~# touch main.py main.rb
# root@da53c7e78fef:~# ls
# main.js  main.py  main.rb
# -------------------code----------------------


# create a new folder/directory using 'mkdir'
# -------------------code----------------------
# root@da53c7e78fef:~# mkdir project
# root@da53c7e78fef:~# ls
# main.js  main.py  main.rb  project
# -------------------code----------------------


# delete file/directory 'rm'
# NOTE: to delete a directory we use '-r'
# -------------------code----------------------
# root@da53c7e78fef:~# rm project/
# rm: cannot remove 'project/': Is a directory
# root@da53c7e78fef:~# rm -r project/
# root@da53c7e78fef:~# ls
# main.js  main.py  main.rb
# -------------------code----------------------


# to install new binary files we use package manger 'apt'
# How to use:
# 1- we update the package manger 'apt'
# -------------------code----------------------
# root@da53c7e78fef:~# apt update
# Get:1 http://ports.ubuntu.com/ubuntu-ports noble InRelease [256 kB]
# Get:2 http://ports.ubuntu.com/ubuntu-ports noble-updates InRelease [126 kB]
# Get:3 http://ports.ubuntu.com/ubuntu-ports noble-backports InRelease [126 kB]
# Get:4 http://ports.ubuntu.com/ubuntu-ports noble-security InRelease [126 kB]
# -------------------code----------------------
#
# 2- we install the package example nano
# -------------------code----------------------
# root@da53c7e78fef:~# apt install nano
# -------------------code----------------------



# to access a file in edit/write/read mode we use 'nano'
# -------------------code----------------------
# root@da53c7e78fef:~# nano file1.txt
# -------------------code----------------------

# to check what inside a file 'cat'
# -------------------code----------------------
# root@da53c7e78fef:~# cat file1.txt
# hello World
# -------------------code----------------------
