#!/bin/bash
mysql -uroot <<MYSQL_SCRIPT
CREATE DATABASE wp;
CREATE USER 'toto'@'localhost' IDENTIFIED BY 'toto';
GRANT ALL PRIVILEGES ON * . * TO 'toto'@'localhost';
FLUSH PRIVILEGES;
MYSQL_SCRIPT