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
    echo "$2 installation is failed"
    exit 1
else 
    echo "$2 installation is succesfull"
fi
}

echo "proceeding.."
dnf install nginx -y &>> ${log_file}
validate "$?" "nginx"

echo "still proceeding.."
dnf install mysql -y &>> ${log_file}

validate "$?" "install mysql"