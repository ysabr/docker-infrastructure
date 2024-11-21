FROM debian:11

RUN apt-get update -y && \
    apt-get install -y php php-fpm php-mysql php-json php-xml curl

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp

RUN mkdir /run/php

WORKDIR /var/www/html/

RUN sed -i 's/^listen = .*/listen = 9000/' /etc/php/7.4/fpm/pool.d/www.conf

COPY wp.sh /usr/local/bin/wp.sh

RUN chmod +x /usr/local/bin/wp.sh

CMD ["wp.sh"]
