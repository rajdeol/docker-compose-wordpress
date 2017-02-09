#!/bin/bash

USER_ID=${LOCAL_USER_ID:-9001}
USER_NAME=${LOCAL_USER_NAME:-hostuser}

echo "Starting with UID : $USER_ID and UNAME : $USER_NAME"
echo "create $USER_NAME group if it doesnot exists"
getent group $USER_NAME || groupadd $USER_NAME
echo "create Adding User to group"
id -u $USER_NAME || useradd --shell /bin/bash -u $USER_ID -o -c "" -G $USER_NAME -m $USER_NAME
setfacl -R -m g:$USER_NAME:rwX /var/www/html/wp-content 
#export HOME=/home/user
