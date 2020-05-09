#!/usr/bin/bash

# Install mysql server from repositories:

sudo apt install mysql-server -y

# Change "newuser" and "newpassword" at your convenience:

sudo mysql --user=root mysql -e "CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'newpassword';GRANT ALL PRIVILEGES ON *.* TO 'newuser'@'localhost' WITH GRANT OPTION;FLUSH PRIVILEGES;"

# To automatically start mysql on boot:

sudo systemctl enable mysql.service