#!/bin/bash

cd /home/ubuntu/mjlsi

# sudo git reset --hard

# sudo git pull 

cd Code/BackEnd

sudo rm composer.lock
sudo rm -r vendor
sudo composer install
sudo composer require symfony/mailgun-mailer symfony/http-client
php artisan migrate
php artisan db:seed
cd ../..
sudo cp -a  Code/BackEnd /var/www/html/app
sudo mkdir -p /var/www/html/app/BackEnd/storage/logs
sudo touch /var/www/html/app/BackEnd/storage/logs/laravel.log
sudo chmod -R 777 /var/www/html/app/BackEnd/public  /var/www/html/app/BackEnd/public/ /var/www/html/app/BackEnd/storage /var/www/html/app/BackEnd/storage/ /var/www/html/app/BackEnd/bootstrap/cache /var/www/html/app/BackEnd/bootstrap/cache/

