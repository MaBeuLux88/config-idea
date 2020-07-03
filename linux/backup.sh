#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    echo "Usage : $0 [pc|laptop]"
    exit 1
fi

FOLDER=$1

cp -f ~/.bashrc ${FOLDER}/.
cp -f ~/.bash_aliases ${FOLDER}/.
cp -f ~/.vimrc ${FOLDER}/.
cp -f /etc/i3status.conf ${FOLDER}/.
cp -rf ~/.config/i3 ${FOLDER}/.

