#!/bin/bash

#install apache and its libs
sudo yum install -y httpd httpd-devel httpd-tools
chkconfig httpd on

#doc root setup
rm -rf /var/www/html
ln -s /vagrant /var/www/html

#install php

sudo yum install -y php php-cli php-common php-devel php-mysql
#install mysql
sudo yum install -y mysql mysql-server mysql-devel 
chkconfig mysqld on
service mysqld start
mysql -u root -e "show databases";
sudo yum install -y wget
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/adihassan/lamp-vagrant/master/index.html


service httpd restart

