#!/bin/bash
apt-get install -y nginx
service nginx start
apt-get install -y wget
export DEBIAN_FRONTEND=noninteractive
apt-get install -y lsb-release
apt-get install -y expect
wget https://dev.mysql.com/get/mysql-apt-config_0.8.14-1_all.deb
expect -c "
    set timeout 10
    spawn dpkg -i mysql-apt-config*.deb
    expect \"Which MySQL product do you wish to configure?\"
    send \"1\r\"
    expect \"Which server version do you wish to receive?\"
    send \"4\r\"
    expect \"Which MySQL product do you wish to configure?\"
    send \"4\r\"
 "
apt-get install -y debconf-utils
apt-get update
apt-get install -y mysql-server
service mysql status
mysql -u root -proot
expect eof
