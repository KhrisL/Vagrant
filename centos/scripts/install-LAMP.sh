#!/bin/sh
# This setups the required LAMP services onto the server

echo "Installing Apache"
yum -y install httpd

echo "Enabling httpd"
systemctl start httpd.service
systemctl enable httpd.service

echo "Installing MySQL (MariaDB)"
yum -y install mariadb-server mariadb

echo "Enabling mariadb"
systemctl start mariadb
systemctl enable mariadb.service

#echo "Setup mysql secure installation"
#cat /vagrant/files/mysql_secure_installation_responses.txt | mysql_secure_installation

echo "Installing PHP"
yum -y install php php-mysql

echo "Restarting Apache"
systemctl restart httpd.service
