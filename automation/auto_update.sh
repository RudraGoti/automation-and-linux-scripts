#!/bin/bash

echo "Starting System Update..."

sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y

echo "System Updated Successfully!"
