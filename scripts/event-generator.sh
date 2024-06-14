#!/bin/bash

# Generate:
# T1005_Data_from_Local_System
cp /etc/passwd /tmp


# Generate:
# T1166_Seuid_and_Setgid
chmod 666 /tmp/passwd

# Gemerate:
# T1107_File_Deletion
rm /tmp/passwd

# Generate:
# T1105_remote_file_copy
sudo nc -l -p 21 &
PID=$! 
sleep 1
kill $PID

# Generate:
# T1219_Remote_Access_Tools
# T1043_Commonly_Used_Port
# T1078_Valid_Accounts
# T1016_System_Network_Configuration_Discovery
ssh -n 127.0.0.1
nmap -p 1-1000 127.0.0.1

# Generate:
# T1168_Local_Job_Scheduling
crontab -l > /dev/null