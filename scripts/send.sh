#!/bin/bash

matser_ip=10.25.8.18
directory='/home/pi/(project)/(nohup.out)'
sshpass -p pi scp $directory master_pi@$master_ip:/home/pi/(project)/mailbox/(nohup.out)
