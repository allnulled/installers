#!/usr/bin/bash

mysql -u debian-sys-maint -e "CREATE USER 'root'@'localhost' IDENTIFIED BY 'xxxx';FLUSH PRIVILEGES;" -p
mysql -u debian-sys-maint -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost';FLUSH PRIVILEGES;" -p
mysql -u debian-sys-maint -e "GRANT GRANT OPTION ON *.* TO 'root'@'localhost';FLUSH PRIVILEGES;" -p