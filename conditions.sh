#!/bin/bash
user_id=$(id -u)

if [ ${user-id} -ne 0 ]; then
    echo "please make this user as psudo user"
fi

dnf install nginx -y