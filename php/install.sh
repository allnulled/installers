#!/usr/bin/bash

# This process corresponds to ubuntu 18.04.4:

sudo apt install -y php
sudo apt install -y libmcrypt-dev
sudo apt install -y php-{dev,pear,bcmath,bz2,intl,gd,mbstring,mysql,zip}
sudo apt install -y libapache2-mod-php
sudo pecl channel-update pecl.php.net

# This step needs a confirmation:

sudo pecl install mcrypt-1.0.1
sudo updatedb

# Find the php.ini file:
locate php.ini

# Once you have the directory, append to it the echoed line:

sudo echo "\nextension=mcrypt.so" >> /etc/php/7.2/cli/php.ini

# To check if mcrypt module is loaded you can:

php -m | grep mcrypt