#!/bin/bash

slaves=(
    "10.25.8.16" 
    "10.25.8.18"
)

for slave in "${slaves[@]}"; do
    # Slave codebase
    if [$1 = "-a"] then
        sshpass -p pi scp /home/pi/slave pi@$slave:/home/pi/slave
    else
        sshpass -p pi scp /home/pi/(project)/slave/src/(program.py) pi@$slave:/home/pi/slave/src/(program.py)
    fi
done
    