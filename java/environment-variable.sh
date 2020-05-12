#!/usr/bin/bash

# Find out the path of your preferred Java directory:
sudo update-alternatives --config java

# Append this line to this file:
echo -e "\nJAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/bin/java" | sudo tee -a /etc/environment