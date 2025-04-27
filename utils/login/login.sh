#!/bin/bash

# Put a call to this file into ~/.bashrc

# Requirements:
# - cowsay
# - lolcat

# Parameters:
# - animal (for cowsay)

ANIMAL=$1

if [[ -z "${ANIMAL}" ]]
then
	ANIMAL="tux"
fi

KERN="$(uname -s -r -p)"
source /etc/os-release
WELCOME_STRING="Welcome to $HOSTNAME,
running $PRETTY_NAME
on $KERN"
echo $WELCOME_STRING | /usr/games/cowsay -f $ANIMAL | /usr/games/lolcat
