#!/usr/bin/bash

mysql -u debian-sys-maint -e "USE mysql;UPDATE user SET user.authentication_string=PASSWORD('xxxx') where user.user='root';FLUSH PRIVILEGES;" -p