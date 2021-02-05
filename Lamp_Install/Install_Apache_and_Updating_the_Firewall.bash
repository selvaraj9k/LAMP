#!/bin/bash

#upgrade the system
echo "Your! system is upgrading!..."
sudo apt upgrade -y
#update the system
echo "Your! system is updating!..."
sudo apt update
echo
echo "-----------------------------------------------------------------------"
echo "                   INSTALLING APACHE AND UPDATING THE FIREWALL         "
echo "-----------------------------------------------------------------------"
echo 
#Install Apache2 Web Server
echo "Installing Apache Web Server!!....."
sudo apt install apache2 -y
echo 
#list all currently available UFW application
echo "Listing all currently available UFW application profiles....."
sudo ufw app list
#allow apache port 80
echo "Allowing Apache profile!!...."
sudo ufw allow Apache
echo 
#enable UFW
echo "ufw is enabling! ..."
sudo ufw enable
echo "ufw is enabled...."
#verify UFW status
echo "Verify the status..."
sudo ufw status
echo "The status is active!!!..."
echo 
#verify in curl commnand
echo "Verifying servers public IP address in your system...."
curl http://127.0.0.1
echo "Apache web server is successfully installed"

