# we use "echo $SHELLv" to print the current shell file
# -------------------code----------------------
root@2ac684684b08:~# echo $SHELL
/bin/bash
# -------------------code----------------------
#
# to save the environment variable in the machine we save it to "bash" file (depends on the current bash file)
# -------------------code----------------------
~# echo USER_DB=CHAM >> .bashrc 
# -------------------code----------------------
# PS: if we want to save the environment variable in session only we use "export" command
#
#
# to check if saved to our bash file 
# -------------------code----------------------
root@2ac684684b08:~# tail .bashrc
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
#    . /etc/bash_completion
#fi
USER_DB=CHAM
# -------------------code----------------------
#
# check if the environment variables that we saved to bash is exist 
# NOTE: not found because we need to do 
# 1- reset the container (stop it then start it)
# 2- use the "source" command 
#  "source" command : execute commands from a file in the current session
# -------------------code----------------------
root@2ac684684b08:~# echo $USER_DB

root@2ac684684b08:~# 
# not found because we need to refresh bash file
root@2ac684684b08:~# source .bashrc
root@2ac684684b08:~# echo $USER_DB
CHAM
root@2ac684684b08:~# printenv USER_DB
# -------------------code----------------------
