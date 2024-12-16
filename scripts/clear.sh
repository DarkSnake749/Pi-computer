#!/bin/bash

slaves=(
    "10.25.8.16" 
    "10.25.8.18"
)

$directory=""

for slave in "${slaves[@]}"; do
    sshpass -p pi ssh -f pi@$slave "sh -c 'cd /home/pi/${directory}; nohup rm -rf (program).py> /dev/null 2>&1 &'"
done