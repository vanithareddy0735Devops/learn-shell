#!/bin/bash
user_id=$(id -u)


log_dir="/var/log/shell-logs"
log_file="${log_dir}/${0}.log"

if [ ${user_id} -ne 0 ]; then
    echo "please make this user as psudo user"
    exit 1
fi
mkdir -p ${log_dir}

validate(){
    if [ $1 -ne 0 ]; then
    echo "$2 installation is failed" | tee -a $log_file
    exit 1
else 
    echo "$2 installation is succesfull" | tee -a $log_file
fi
}

for package in $@
do 
echo "proceeding.."
dnf install $package -y &>> ${log_file}
validate "$?" "$package"
done
