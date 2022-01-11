#!/bin/sh 
cd /home/wolney/projetos/desenvolvimento_navigator_scoped/navigator-scoped  
git pull
#composer install -q --no-ansi --no-interaction --no-scripts --no-progress --prefer-dist
./vendor/bin/sail up
php artisan optimize:clear
php artisan key:generate
php artisan migrate
chmod -R 777 storage bootstrap/cache 

