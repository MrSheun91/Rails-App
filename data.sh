#!/bin/bash
sudo apt update 
sudo apt install nginx -y
sudo ufw allow 'Nginx HTTP'