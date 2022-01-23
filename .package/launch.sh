#!/bin/bash

DISTRO=$(uname -o)

if [ $DISTRO == Android ]; then
	export INSTAGRAM_ROOT="/data/data/com.termux/files/usr/opt/instagram"
else
	export INSTAGRAM_ROOT="/usr/opt/instagram"
fi

cd $INSTAGRAM_ROOT
bash ./instagram.sh
