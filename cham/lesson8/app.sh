# The `ps` command in Unix/Linux is used to **display information about active (running) processes** on the system.
### Basic Usage
#
# -------------------code----------------------
ps
# -------------------code----------------------
#
# Shows processes running **in the current shell/session**.
### Common Options
# | Command            | Description                                            |
# | ------------------ | ------------------------------------------------------ |
# | `ps -e` or `ps -A` | Shows **all** processes                                |
# | `ps -f`            | Full-format listing                                    |
# | `ps -ef`           | Full list of **all** processes                         |
# | `ps aux`           | Shows all processes with **detailed** info (BSD style) |
# | `ps -u username`   | Shows processes for a specific user                    |
# | `ps -p <PID>`      | Shows info for a specific process ID                   |
#
### Example Output (`ps aux`)
# -------------------code----------------------
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         1  0.0  0.1  22592  3428 ?        Ss   10:00   0:00 /sbin/init
user      1234  0.1  1.2 500000 25600 pts/0    Sl+  10:01   0:05 python script.py
# -------------------code----------------------
#
### Use in Docker
# Inside a Docker container, you can use:
#
# -------------------code----------------------
ps aux
# -------------------code----------------------
#
# or
#
# -------------------code----------------------
ps -ef
# -------------------code----------------------
#
# to see running processes inside that container.
#
#
#
# The `kill` command in Unix/Linux is used to **send signals to processes**,
# most commonly to **terminate (stop/kill) a process**.
#
### Basic Syntax
#
# -------------------code----------------------
kill <PID>
# -------------------code----------------------
#
# This sends the default signal `SIGTERM` (signal 15), which asks the process to terminate **gracefully**.
#
# ### Common Signals
#
# | Signal    | Number | Description                              |
# | --------- | ------ | ---------------------------------------- |
# | `SIGTERM` | 15     | Graceful termination (default)           |
# | `SIGKILL` | 9      | Forceful termination (cannot be ignored) |
# | `SIGINT`  | 2      | Interrupt (like Ctrl+C)                  |
# | `SIGHUP`  | 1      | Hangup (often restarts a service)        |
#
# You can send a specific signal using:
#
# -------------------code----------------------
kill -9 <PID>      # Force kill
kill -15 <PID>     # Graceful kill (default)
# -------------------code----------------------
#
# ### How to Find the PID
#
# Use `ps`, `top`, or `pgrep`:
#
# -------------------code----------------------
ps aux | grep myscript.py
pgrep -f myscript.py
# -------------------code----------------------
#
# ### Kill by Process Name
#
# -------------------code----------------------
killall <process_name>
# -------------------code----------------------

# Example:
#
# -------------------code----------------------
killall python
# -------------------code----------------------
#
### Notes
# * `kill` does **not always mean force kill** — it just sends a signal.
# * Only the process owner or root can kill a process.
