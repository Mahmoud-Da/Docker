# to check what inside a file 'cat'
# -------------------code----------------------
# root@da53c7e78fef:~# cat file1.txt
# Hello World
# -------------------code----------------------


# ">" redirect operator (standard output => 標準出力)
# EX1: copy inside the file1.txt to file2.txt
# -------------------code----------------------
# root@e97087e56636:~# cat file1.txt
# Hello World
# root@e97087e56636:~# cat file1.txt > file2.txt
# root@e97087e56636:~# ls
# file1.txt  file2.txt
# root@e97087e56636:~# cat file2.txt
# Hello World
# -------------------code----------------------

# EX2: copy inside the file1.txt and file2.txt to combined.txt
# -------------------code----------------------
# root@e97087e56636:~# cat file1.txt file2.txt > combined.txt
# root@e97087e56636:~# cat combined.txt
# Hello World
# Hello World
# -------------------code----------------------


# EX3: using with echo command
# -------------------code----------------------
# root@e97087e56636:~# echo hello > hello.txt
# root@e97087e56636:~# cat hello.txt
# hello
# -------------------code----------------------


# "<" redirect operator (standard input => 標準入力)
# wc: word count
# EX1:
# -------------------code----------------------
# root@e97087e56636:~# cat file3.txt
# hello
# -------------------code----------------------
# EX2:
# -------------------code----------------------
# root@e97087e56636:~# wc < file3.txt
# 1 1 6
# -------------------code----------------------

# "grep" search a string 
# EX1:
# -------------------code----------------------
# root@e97087e56636:~# grep 163 ubuntu_file_system_info.txt
# dr-xr-xr-x 163 root root    0 May  8 09:23 proc
# -------------------code----------------------
# EX2:
# -------------------code----------------------
# root@e97087e56636:~# grep Apr ubuntu_file_system_info.txt
# lrwxrwxrwx   1 root root    7 Apr 22  2024 bin -> usr/bin
# drwxr-xr-x   2 root root 4096 Apr 22  2024 boot
# drwxr-xr-x   3 root root 4096 Apr 15 14:14 home
# lrwxrwxrwx   1 root root    7 Apr 22  2024 lib -> usr/lib
# drwxr-xr-x   2 root root 4096 Apr 15 14:07 media
# drwxr-xr-x   2 root root 4096 Apr 15 14:07 mnt
# drwxr-xr-x   2 root root 4096 Apr 15 14:07 opt
# drwxr-xr-x   4 root root 4096 Apr 15 14:14 run
# lrwxrwxrwx   1 root root    8 Apr 22  2024 sbin -> usr/sbin
# drwxr-xr-x   2 root root 4096 Apr 15 14:07 srv
# drwxr-xr-x   1 root root 4096 Apr 15 14:07 usr
# drwxr-xr-x   1 root root 4096 Apr 15 14:14 var
# -------------------code----------------------
# EX3:
# PS: grep is case-sensitive
# -------------------code----------------------
# root@e97087e56636:~# grep apr ubuntu_file_system_info.txt
# -------------------code----------------------
# EX3:
# PS: grep without case-sensitive we use "-i"
# -------------------code----------------------
# root@e97087e56636:~# grep -i apr ubuntu_file_system_info.txt lrwxrwxrwx   1 root root    7 Apr 22  2024 bin -> usr/bin
# drwxr-xr-x   2 root root 4096 Apr 22  2024 boot
# drwxr-xr-x   3 root root 4096 Apr 15 14:14 home
# lrwxrwxrwx   1 root root    7 Apr 22  2024 lib -> usr/lib
# drwxr-xr-x   2 root root 4096 Apr 15 14:07 media
# drwxr-xr-x   2 root root 4096 Apr 15 14:07 mnt
# drwxr-xr-x   2 root root 4096 Apr 15 14:07 opt
# drwxr-xr-x   4 root root 4096 Apr 15 14:14 run
# lrwxrwxrwx   1 root root    8 Apr 22  2024 sbin -> usr/sbin
# drwxr-xr-x   2 root root 4096 Apr 15 14:07 srv
# drwxr-xr-x   1 root root 4096 Apr 15 14:07 usr
# drwxr-xr-x   1 root root 4096 Apr 15 14:14 var
# -------------------code----------------------
# EX4:
# PS: grep searches for a word or pattern in files.
# The -r option means "recursive" — it looks in all files inside a folder, and all its sub-folders too.
# "grep -r is like telling your computer: 'Go into this folder, and look inside every file, even in sub-folders, for this word.'"
# -------------------code----------------------
# root@e97087e56636:~# grep -r ubuntu_file_system_info.txt
# .bash_history:ls -l > root/ubuntu_file_system_info.txt
# .bash_history:ls ubuntu_file_system_info.txt
# .bash_history:cat ubuntu_file_system_info.txt
# .bash_history:cd ubuntu_file_system_info.txt
# -------------------code----------------------
# EX5: combine two options
# -------------------code----------------------
# root@e97087e56636:~# grep -r  -i "hello"
# .bash_history:echo hello
# .bash_history:echo hello > hello.txt
# .bash_history:cat hello.txt
# hello.txt:hello
# file1.txt:Hello World
# file3.txt:hello
# combined.txt:Hello World
# combined.txt:Hello World
# file2.txt:Hello World
# -------------------code----------------------
# EX5: combine two options better way using one dash
# -------------------code---------------------
# root@e97087e56636:~# grep -ir "hello"
# .bash_history:echo hello
# .bash_history:echo hello > hello.txt
# .bash_history:cat hello.txt
# hello.txt:hello
# file1.txt:Hello World
# file3.txt:hello
# combined.txt:Hello World
# combined.txt:Hello World
# file2.txt:Hello World
# -------------------code---------------------
