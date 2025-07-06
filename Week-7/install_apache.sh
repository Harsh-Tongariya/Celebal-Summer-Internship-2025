#!/bin/bash
apt update
apt install apache2 -y
echo "Welcome from $(hostname)" > /var/www/html/index.html
