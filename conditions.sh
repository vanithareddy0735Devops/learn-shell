#!/bin/bash
user_id=$(id -u)

if [ ${user_id} -ne 0 ]; then
    echo "please make this user as psudo user"
    exit 1
fi

echo "proceeding.."
dnf install nginxdghghd -y
if [ $? -ne 0 ]; then
    echo "nginx installation is failed"
    exit 1
else 
    echo "nginx installation is succesfull"
fi

echo "still proceeding.."
dnf install myshjdf