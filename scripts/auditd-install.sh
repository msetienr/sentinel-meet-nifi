#!/bin/bash
# Date: 30/03/2024
# Info: This short script install auditd sevice on linux servers to monitor
# activity and take a new configuration base on this repository:
# https://raw.githubusercontent.com/Neo23x0/auditd/master/audit.rules


#####################################################
#### Auditd installation with Mitre rules update ####
#####################################################

# Update apt repository and install

sudo apt-get update
sudo apt install auditd -y

# Download rules and update into config file

wget -P /tmp https://raw.githubusercontent.com/Neo23x0/auditd/master/audit.rules
sudo mv /tmp/auditd-attack.rules /etc/audit/rules.d

# Restart audit service
sudo systemctl restart auditd.service

# Install nmap to test use
sudo apt install nmap -y


