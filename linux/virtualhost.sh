#!/usr/bin/bash

# Replace "customsite" by the name of your site:

sudo mkdir -p "/var/www/html/customsite.lan/public_html"
echo "Hello from my customsite!" | sudo tee "/var/www/html/customsite.lan/public_html/index.html" > /dev/null
sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/customsite.conf
echo -e "<VirtualHost *:80>\n\
	ServerAdmin webmaster@customsite.lan\n\
	ServerName customsite.lan\n\
	ServerAlias www.customsite.lan\n\
	DocumentRoot /var/www/html/customsite.lan/public_html\n\
	ErrorLog ${APACHE_LOG_DIR}/error.log\n\
	CustomLog ${APACHE_LOG_DIR}/access.log combined\n\
</VirtualHost>" | sudo tee "/etc/apache2/sites-available/customsite.conf" > /dev/null
# If you want to remove default behaviour for /var/www/html/index.*:
# sudo a2dissite "000-default.conf"
sudo a2ensite "customsite.conf"
sudo systemctl restart apache2
echo -e "\n127.0.0.1 www.customsite.lan" | sudo tee -a "/etc/hosts"