#!/usr/bin/bash

sudo apt install apache2 -y

# To automatically start apache on boot:

sudo systemctl enable apache2.service