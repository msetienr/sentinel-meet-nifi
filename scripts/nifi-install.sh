#!/bin/bash
# Date: 30/03/2024
# Installation steps

# Installing java jdk:
sudo apt install libc6-i386 libc6-x32 libxi6 libxtst6 -y

wget https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.deb

sudo dpkg -i jdk-17_linux-x64_bin.deb

java -version

# Saving env variable to Java
sudo update-alternatives --config java

sudo vim /etc/environment

JAVA_HOME="/your/installation/path/"

#NiFi Installation:
wget https://archive.apache.org/dist/nifi/1.23.2/nifi-1.23.2-bin.zip

apt install unzip

unzip nifi-1.23.2-bin.zip

sudo cp nifi-1.23.2/ /opt/ -r

#Start NiFi service
cd /opt/nifi-1.23.2/bin/

./nifi.sh start

#Once those steps completed, the port 8443 will be able, recommended to set a user and password to login:
cd ..
./bin/nifi.sh set-single-user-credentials "user" "pass"

cd bin
./nifi.sh restart
