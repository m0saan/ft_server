#!/bin/bash
apt-get install -y lsb-release
apt-get install -y debconf-utils
apt-get update
expect -c " 
    set timeout 10
    spawn dpkg -i mysql-apt-config_0.8.14-1_all.deb
    expect \"Which MySQL product do you wish to configure?\"
    send \"1\r\"
    expect \"Which server version do you wish to receive?\"
    send \"1\r\"
    expect \"Which MySQL product do you wish to configure?\"
    send \"4\r\"
    expect EOF
 "
 expect -c " 
    set timeout 30
    spawn apt-get install -y mysql-server
    expect \"Enter root password:\"
    send \"root\r\"
    expect \"Re-enter root password: \"
    send \"root\r\"
    expect EOF
 "
apt-get update
service mysql start
service php7.3-fpm start
service nginx start