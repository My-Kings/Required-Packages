#!/bin/sh

echo "Installing required packages"

sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y install build-essential golang-1.10-go unzip redis-server nginx screen
sudo ln -s /usr/lib/go-1.10/bin/go /usr/local/bin/go
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "Checking go & node version"

go version
node -v

echo "Installing REOSC"

wget https://github.com/REOSC/mn/releases/download/2.1.4/reosc-node
chmod +x reosc-node
sudo cp reosc-node /usr/local/bin/reosc

echo "Done installing REOSC-Node"
