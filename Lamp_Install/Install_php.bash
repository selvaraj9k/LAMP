#!/bin/bash

#upgrade the system
echo "Your! system is upgrading!..."
sudo apt upgrade -y
#update the system
echo "Your! system is updating!..."
sudo apt update -y
#Install PHP
echo "Installing PHP!..."
echo "Installing Packages!...."
sudo apt install php libapache2-mod-php php-mysql -y
echo "showing php version"
#PHP versioin
php -v
echo "Php is successfully installed your system"

