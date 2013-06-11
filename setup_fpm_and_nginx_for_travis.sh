#!/bin/bash
sudo apt-get update
sudo apt-get -y install nginx
sudo apt-get -y install php5-fpm
cp .travis_nginx.conf /etc/nginx/nginx.conf
sudo /etc/init.d/nginx restart
