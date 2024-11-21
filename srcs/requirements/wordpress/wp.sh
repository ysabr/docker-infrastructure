#!/bin/bash
wp core download --allow-root
wp config create --dbname=$DBNAME --dbuser=$DBUSER --dbpass=$DBPASS --dbhost=mariadb --allow-root
wp core install --url=$URL --title=$TITLE --admin_user=$ADMIN --admin_password=$ADMINPASS --admin_email=$ADMINMAIL --allow-root
wp user create $USER $USERMAIL --role=subscriber --user_pass=$USERPASS --allow-root
exec php-fpm7.4 -F