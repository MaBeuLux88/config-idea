#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    echo "Usage : $0 [pc|laptop]"
    exit 1
fi

FOLDER=$1

cp -f ${FOLDER}/.bashrc ~/.bashrc
cp -f ${FOLDER}/.bash_aliases ~/.bash_aliases
cp -f ${FOLDER}/.vimrc ~/.vimrc
cp -f ${FOLDER}/i3status.conf /etc/i3status.conf
cp -f ${FOLDER}/i3/config ~/.config/i3/config 

