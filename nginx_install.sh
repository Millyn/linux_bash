#!/bin/bash
echo "install nginx"

rpm -ivh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm

yum install -y nginx

echo "nginx install done"

echo "check nginx"

whereis nginx


