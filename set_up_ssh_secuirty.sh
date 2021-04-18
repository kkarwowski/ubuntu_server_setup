#!/bin/bash
# Creates copy of original /etc/ssh/sshd_config file and then appends to original following lines
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.copy
echo "Created copy of original file as /etc/ssh/sshd_config.copy"
echo "PasswordAuthentication no
UsePAM no
PermitRootLogin no
PermitRootLogin prohibit-password" >> /etc/ssh/sshd_config
echo "PermitRootLogin no"
echo "PermitRootLogin prohibit-password"
echo "Changes have been made to /etc/ssh/sshd_config"
systemcrl realod sshd
