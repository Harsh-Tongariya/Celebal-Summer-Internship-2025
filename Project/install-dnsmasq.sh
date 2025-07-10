#!/bin/bash
sudo apt update
sudo apt install -y dnsmasq
sudo bash -c 'echo "server=168.63.129.16" >> /etc/dnsmasq.conf'
sudo systemctl restart dnsmasq
