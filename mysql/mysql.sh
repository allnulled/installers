#!/usr/bin/bash

sudo apt install mysql-server

# Then to reset the password:

sudo service mysql stop
sudo mkdir -p /var/run/mysqld
sudo chown mysql:mysql /var/run/mysqld
sudo mysqld_safe --skip-grant-tables --skip-syslog --skip-networking

# Then, in another console, to login:

mysql -u root