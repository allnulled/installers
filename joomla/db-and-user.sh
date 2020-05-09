#!/usr/bin/bash

# Replace "joomla_db" by your database
# Replace "joomla_user" by your database user
# Replace "joomla_password" by your database user's password

sudo mysql --user=root mysql -e "CREATE DATABASE joomla_db CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;"
sudo mysql --user=root mysql -e "CREATE USER 'joomla_user'@'localhost' IDENTIFIED BY 'password';GRANT ALL PRIVILEGES ON joomla_db.* TO 'joomla_password'@'localhost' WITH GRANT OPTION;FLUSH PRIVILEGES;"