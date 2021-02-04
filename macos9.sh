#!/bin/bash

clear

date

echo '
 _     _      __
| |   | |    |  |
| |___| |    |  |
|  ___  |    |  |
| |   | |    |  |
|_|   |_|    |__|
 
'

echo 'the script is installing the mac os9 vm........'

read -r -p "Do you want to install mac os 9 vm? (type no if you have aldready installed it) [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        wget https://raw.githubusercontent.com/Itai-Nelken/RPi-QEMU-VM-scripts/main/MacOS9.2/qemu-macos9.sh; bash qemu-macos9.sh
        ;;
    *)
        echo 'Lets proceed to the next step .....'
        ;;
esac

cd ~/macos921

sleep 2

echo 'setup is starting the vm .......'

sleep 2

read -r -p "Type how much mb of ram do you want to give to vm - " mbram

qemu-system-ppc -M mac99 -m $mbram -cpu "g4" -L pc-bios -g 1024x768x32 -hda macos921.qcow2





