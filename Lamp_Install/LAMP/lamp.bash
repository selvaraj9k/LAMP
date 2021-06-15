#!/bin/bash
#upgrade the system 
echo "Your! system is upgrading!..."
sudo apt upgrade -y
#update the system
echo "Your! system is updating!..."
sudo apt update
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "+                       INSTALL LAMP                                  +"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo
echo "-----------------------------------------------------------------------"
echo "-                  INSTALLING APACHE AND UPDATING THE FIREWALL        -"
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
echo 
echo "----------------------------------------------------------------------"
echo "-                         INSTALLING MYSQL                           -"
echo "----------------------------------------------------------------------"
echo 
#Install MySql
echo "Mysql-server is installing!..."
sudo apt install mysql-server -y
#MySql security installation
echo "MySql security script running !....."
echo "please configure VALIDATE PASSWORD PLUGIN"
sudo mysql_secure_installation
echo "MySql is successfully installed"
echo 
echo "----------------------------------------------------------------------"
echo "-                       INSTALLING PHP                               -"
echo "----------------------------------------------------------------------"
echo 
#Install PHP
echo "Installing PHP!..."
echo "Installing Packages!...."
sudo apt install php libapache2-mod-php php-mysql -y
echo "showing php version"

#PHP versioin
php -v
echo "Php is successfully installed your system"

