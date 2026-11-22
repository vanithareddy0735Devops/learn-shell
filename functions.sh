#!/bin/bash
user_id=$(id -u)

if [ ${user_id} -ne 0 ]; then
    echo "please make this user as psudo user"
    exit 1
fi

validate(){
    if [ $1 -ne 0 ]; then
    echo "$2 installation is failed"
    exit 1
else 
    echo "$2 installation is succesfull"
fi
}

echo "proceeding.."
dnf install nginx -y
validate "$?" "nginx"

echo "still proceeding.."
dnf install mysql -y

validate "$?" "install mysql"