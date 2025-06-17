# "find" to search for files and folders/directories
# -------------------code----------------------
root@dd9296b6eee1:/# find
/etc/pam.d/other
./etc/pam.d/common-account
./etc/pam.d/su-l
./etc/pam.d/chfn
./etc/debconf.conf
./etc/issue.net
./etc/resolv.conf
./etc/bash.bashrc
./etc/gai.conf
./etc/shadow-
./etc/subuid-
./etc/rmt
./etc/mtab
./run
./run/lock
./run/systemd
./run/systemd/container
./lib
./dev
....
....
....
# -------------------code----------------------
#
# we use find with folder name to check if the folder is exist
# -------------------code----------------------
root@dd9296b6eee1:/# find bin
bin
# -------------------code----------------------
#
# we use find with folder + "/" name to search folder and its contents
# -------------------code----------------------
root@dd9296b6eee1:/# find bin/
bin/
bin/ps
bin/uclampset
bin/pager
bin/sg
bin/unshare
bin/gpgv
bin/chgrp
bin/dpkg
bin/link
bin/md5sum.textutils
bin/test
....
....
.....
.....
....
# -------------------code----------------------
# 
# to check the directories in the current directory
# -------------------code----------------------
root@dd9296b6eee1:/bin# find -type d
.
# -------------------code----------------------
#
# to check the files in the current directory
# -------------------code----------------------
root@dd9296b6eee1:/bin# find -type f
./ps
./uclampset
./unshare
./gpgv
./chgrp
./dpkg
./link
./test
./sum
....
....
....
....
# -------------------code----------------------
# 
# search for all the files that start with "t" character
# -------------------code----------------------
root@dd9296b6eee1:~/test# find -type f -name "t*"
./test2.rb
./test3.py
./test1.py
# -------------------code----------------------
# 
# search for python files only
# -------------------code----------------------
# root@dd9296b6eee1:~/test# find -type f -name "*py"
# ./test3.py
# ./test1.py
# -------------------code----------------------
#
# find all the python files inside the linux operating system
# -------------------code----------------------
root@dd9296b6eee1:~/test# find / -name "*.py"
/usr/share/apport/package-hooks/source_shadow.py
/usr/share/gdb/auto-load/usr/lib/aarch64-linux-gnu/libstdc++.so.6.0.33-gdb.py
/usr/share/gcc/python/libstdcxx/v6/__init__.py
/usr/share/gcc/python/libstdcxx/v6/printers.py
/usr/share/gcc/python/libstdcxx/v6/xmethods.py
/usr/share/gcc/python/libstdcxx/__init__.py
/root/test/test3.py
/root/test/test1.py
# -------------------code----------------------



# chaining commands
# to run multi linux command after each other we use ";"
# 
# -------------------code----------------------
root@dd9296b6eee1:~# mkdir test0; cd test0; echo done
done
root@dd9296b6eee1:~/test0# pwd
/root/test0
# -------------------code----------------------
#
# NOTE: the second command runs even the first command fails
# -------------------code----------------------
root@dd9296b6eee1:~# mkdir test0; cd test0; echo done
mkdir: cannot create directory 'test0': File exists
done
root@dd9296b6eee1:~/test0#
# -------------------code----------------------
#
# using the and operator "&&" if we want not to run the next command if the pervious command failed
# -------------------code----------------------
root@dd9296b6eee1:~# mkdir test0 && cd test0 && echo done
mkdir: cannot create directory 'test0': File exists
root@dd9296b6eee1:~#
# -------------------code----------------------
#
# in this case the second command doesn't run because the first command failed but the third command run
# -------------------code----------------------
root@dd9296b6eee1:~# mkdir test0 && cd test0 ; echo done
mkdir: cannot create directory 'test0': File exists
done
# -------------------code----------------------
#
# we use the or operator if we want to run the next command when the previous command filed
# -------------------code----------------------
root@dd9296b6eee1:~# mkdir test0 || echo "directory exists"
mkdir: cannot create directory 'test0': File exists
directory exists
root@dd9296b6eee1:~#
# -------------------code----------------------
#
# pip command "|"
# take the output from the first command and send it as input to the second command
# -------------------code----------------------
root@dd9296b6eee1:/# find | head -n 5
.
./media
./tmp
./bin
./home
# -------------------code----------------------
# 
# take the the first fife lines from bin (inside files/directories) and put it inside a file
# -------------------code----------------------
root@dd9296b6eee1:/# ls -l ../../bin/ | head -n 5 > test10.txt
root@dd9296b6eee1:/# cat test10.txt
total 28972
-rwxr-xr-x 1 root root     67760 Apr  5  2024 [
-rwxr-xr-x 1 root root     67744 Dec  5 02:26 addpart
-rwxr-xr-x 1 root root     67752 Mar 31  2024 apt
-rwxr-xr-x 1 root root    133440 Mar 31  2024 apt-cache
# -------------------code----------------------
#
# write multiple commands with linux he backslash "\"" is used to indicate that a command continues
# on the next line. This allows you to write long commands over multiple lines for better readability.
# -------------------code----------------------
mkdir new_project && \
cd new_project && \
touch README.md && \
echo "# New Project" > README.md
# -------------------code----------------------
