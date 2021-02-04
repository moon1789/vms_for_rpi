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

echo 'the script is installing the windows 98 vm........'

read -r -p "Do you want to install windows 98 vm? (type no if you have aldready installed it) [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
         wget https://raw.githubusercontent.com/Itai-Nelken/RPi-QEMU-VM-scripts/main/windows98/win98vm.sh; bash win98vm.sh
        ;;
    *)
        echo 'Lets proceed to the next step .....'
        ;;
esac

cd ~/win98

sleep 2

echo 'setup is starting the vm .......'

sleep 2

read -r -p "Type how much mb of ram do you want to give to vm - " mbram1
  
qemu-system-x86_64 -m $mbram1 -hda win98.qcow2






