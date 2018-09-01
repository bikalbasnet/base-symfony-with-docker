#!/bin/sh

## Don't attempt to run if we are not root
if [ $(id -u) -ne 0 ]
	then echo "Please run as root"
	exit
fi

## If we run as sudo, $USER is assigned to 'root' instead of undefined
if [ "$USER" = root ]
	then unset USER
fi

## Set defaults for environmental variables in case they are undefined
USER=${USER:=defaultuser}
USERID=${USERID:=1000}

useradd -m $USER -u $USERID
mkdir -p /home/$USER
chown -R $USER /home/$USER

exec "$@"
