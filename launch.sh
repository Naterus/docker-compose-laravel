#!/bin/bash

#Check for docker installation
if [ -x "$(command -v docker)" ]; then
    echo "docker already installed, skipping"
else
    echo "Installing docker"

    apt-get update

    apt-get install docker-ce docker-ce-cli containerd.io -y

    echo "docker installed successfully"
fi

#Check for docker-compose installation
if [ -x "$(command -v docker-compose)" ]; then
    echo "docker-compose already installed, skipping"
else
    apt install docker-compose
    echo "docker-compose installed successfully"
fi

cd public_html

chmod -R 755 storage

cd ../

docker-compose build && docker-compose up -d

docker-compose exec php php /var/www/html/artisan migrate


