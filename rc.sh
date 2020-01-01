#!/bin/bash
service nginx start
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
 apt-get update
export DEBIAN_FRONTEND="noninteractive"
debconf-set-selections <<< "mysql-server mysql-server/root_password password rootpw"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password rootpw"
apt-get install -y mysql-server
service mysql start
service php7.3-fpm start
service mysql status

