# we use "printenv" to print all the environment variables
# -------------------code----------------------
root@730d2adc80c2:~# printenv
HOSTNAME=730d2adc80c2
PWD=/root
HOME=/root
# -------------------code----------------------
#
# if we want to print a specific environment variable,
# 1- we use printenv + environment name
# -------------------code----------------------
root@730d2adc80c2:~# printenv PATH
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# -------------------code----------------------
# 2- using echo + $ + environment variable
# -------------------code----------------------
root@730d2adc80c2:~# echo $PATH
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin 
# -------------------code----------------------
#
# to set the environment variable we use the export command (NOTE: only save within current session)
# -------------------code----------------------
root@730d2adc80c2:~# export DB_USER=CHAM
# -------------------code----------------------
#
# to check if the DB_USER created 
# -------------------code----------------------
root@730d2adc80c2:~# echo $DB_USER
CHAM
root@730d2adc80c2:~# printenv DB_USER
CHAM
# -------------------code----------------------
#
# Important: the environment variables only saves at the terminal session
# so if we close that terminal and even access the same container we can't find 
# that environment variable 
#
#
# to access a stopped container
# 1- check all the containers stopped/started by using "docker ps -a" 
# -------------------code----------------------
$ docker ps -a
CONTAINER ID   IMAGE     COMMAND       CREATED          STATUS                     PORTS     NAMES
95802de72968   ubuntu    "/bin/bash"   9 minutes ago    Exited (1) 8 minutes ago             epic_cannon
730d2adc80c2   ubuntu    "/bin/bash"   38 minutes ago   Exited (0) 3 minutes ago             elated_volhard
dd9296b6eee1   ubuntu    "/bin/bash"   6 days ago       Exited (0) 2 minutes ago             frosty_cohen
# -------------------code----------------------
# 2- us the  "docker start -i containerId(we can use only the first 3numbers)" command 
# -------------------code----------------------
~  $ docker start -i 730
root@730d2adc80c2:/#
# -------------------code----------------------
