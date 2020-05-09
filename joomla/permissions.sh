#!/usr/bin/bash

# Replace "/your/joomla/root/directory" by the directory:
cd /var/www/html/your/joomla/root/directory

chown -R www-data:www-data .
sudo chmod -R 755 *
sudo chmod 744 configuration.php
sudo chmod 777 administrator
sudo chmod 777 administrator/backups
sudo chmod 777 administrator/components
sudo chmod 777 administrator/modules
sudo chmod 777 administrator/templates
sudo chmod 777 components
sudo chmod 777 images
sudo chmod 777 images/banners
sudo chmod 777 images/stories
sudo chmod 777 language
sudo chmod 777 mambots
sudo chmod 777 mambots/content
sudo chmod 777 mambots/editors
sudo chmod 777 mambots/editors-xtd
sudo chmod 777 mambots/search
sudo chmod 777 mambots/system
sudo chmod 777 media
sudo chmod 777 modules
sudo chmod 777 templates
sudo chmod 777 cache