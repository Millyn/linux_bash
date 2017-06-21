#!/bin/bash
echo "now install Mysql 5.6"
rpm -Uvh http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm
yum install mysql-community-server -y
echo "========================"
echo "start mysql"
echo "========================"
sudo service mysqld start
echo "========================"
echo "check mysql status"
echo "========================"
service mysqld status
echo "========================"
echo "system open, mysql start"
echo "========================"
/usr/bin/systemctl enable mysqld
echo "========================"
echo "settings mysql password"
echo "========================"
/usr/bin/mysql_secure_installation

