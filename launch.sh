#!/bin/bash

#Check for docker installation
if [ -x "$(command -v docker)" ]; then
    echo "docker already installed, skipping"
else
    echo "Installing docker"

    apt-get update

    apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

    add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

    apt-get update

    apt-get install docker-ce docker-ce-cli containerd.io

    echo "docker installed successfully"
fi

#Check for docker-compose installation
if [ -x "$(command -v docker-compose)" ]; then
    echo "docker-compose already installed, skipping"
else
    apt install docker-compose
    echo "docker-compose installed successfully"
fi

docker-compose build && docker-compose up -d



