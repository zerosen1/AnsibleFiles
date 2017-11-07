#!/bin/bash
#nodejs, npm & angular:
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get update
sudo apt-get install -y nodejs
sudo npm install -g --unsafe-perm @angular/cli