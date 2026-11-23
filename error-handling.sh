#!/bin/bash
user_id=$(id -u)

set -e
trap 'echo "error at $LINENO", command: "$BASH_COMMAND"' ERR

log_dir="/var/log/shell-logs"
log_file="${log_dir}/${0}.log"

if [ ${user_id} -ne 0 ]; then
    echo "please make this user as psudo user"
    exit 1
fi
mkdir -p ${log_dir}



for package in $@
do 
echo "proceeding.."
dnf list installed $package | tee -a $log_file
if [ $? -ne 0 ]; then
    echo "going to installl $package"
   dnf install $package -y &>> ${log_file}
else
 echo "already installed $package hence skip" | tee -a $log_file
fi

done
