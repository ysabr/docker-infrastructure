#!/bin/bash
service mariadb start

sleep 2

mariadb -e "CREATE DATABASE IF NOT EXISTS $DBNAME;"
mariadb -e "CREATE USER IF NOT EXISTS '$DBUSER' IDENTIFIED BY '$DBPASS';"
mariadb -e "GRANT ALL PRIVILEGES ON $DBNAME.* TO '$DBUSER';"
mariadb -e "FLUSH PRIVILEGES;"

service mariadb stop
exec mariadbd