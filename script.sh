#!/bin/bash

clear
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install screen -y
clear
echo "Now a program will be executed that will give you a screen in which you will have to press enter (it will put it on the screen)"
screen
sudo curl -sSL https://get.docker.com | sh
sudo docker pull honeygain/honeygain:latest
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
clear
echo "you will have to put the following command now: sudo docker run -d --restart always --stop-timeout 300 --name honeygain honeygain/honeygain:latest -tou-accept -email (your email) -pass (your password)"
