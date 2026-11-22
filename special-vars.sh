#!/bin/bash
echo "all args passed to the script as a word $*"
echo "all args passed to the script $@"
echo "no of args passed to the script $#"
echo "1st var passed to the script $1"
echo "script name $0"
echo "real path of the script $(realpath $0)"
echo "who is running the script $USER"
echo "present working directory $PWD"
echo "Home directory of the current user $HOME"
echo "process id of the current script $$"
sleep 10 &
echo "process id of the command running in backgroup $!"
wait $! # script waits until $! command completes
echo "line number :: $LINENO"
echo "exit status of the previous command $?"
echo "total execution time $SECONDS"

