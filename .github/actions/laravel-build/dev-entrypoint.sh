#!/bin/sh 
apt-get install php-xml
cd /home/wolney/projetos/desenvolvimento_navigator_scoped/navigator-scoped  
git pull
composer install
composer update
./vendor/bin/sail up
php artisan optimize:clear
php artisan key:generate
php artisan migrate
chmod -R 777 storage bootstrap/cache 
