#!/bin/bash

openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout ${SSL_KEY} -out ${SSL_C} \
    -subj "/C=MO/L=BG/O=1337FIL/CN=ysabr.42.fr"

sed -i 's|${SSL_C}|'"$SSL_C"'|g; s|${SSL_KEY}|'"$SSL_KEY"'|g' /etc/nginx/sites-available/default

exec nginx -g 'daemon off;'
