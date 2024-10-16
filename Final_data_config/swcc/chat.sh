#!/bin/bash

cd /home/ubuntu/mjlsi

# sudo git reset --hard

# sudo git pull 

cd Code/Chat

sudo rm composer.lock
composer install
php artisan migrate
php artisan db:seed
cd ../..
sudo cp -a  Code/Chat /var/www/html/app
sudo mkdir -p /var/www/html/app/Chat/storage/logs
sudo touch /var/www/html/app/Chat/storage/logs/laravel.log
sudo chmod -R 777 /var/www/html/app/Chat/public  /var/www/html/app/Chat/public/ /var/www/html/app/Chat/storage /var/www/html/app/Chat/storage/ /var/www/html/app/Chat/bootstrap/cache /var/www/html/app/Chat/bootstrap/cache/

