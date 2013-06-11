#!/bin/bash
sudo apt-get update
sudo apt-get -y install nginx
sudo apt-get -y install php5-fpm
cat .travis_nginx.conf | sed -e "s,DOCROOT,`pwd`," | sudo tee /etc/nginx/nginx
sudo /etc/init.d/nginx restart
sudo /etc/init.d/php5-fpm restart

