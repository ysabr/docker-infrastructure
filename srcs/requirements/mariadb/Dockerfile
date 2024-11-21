FROM debian:11

RUN apt-get update && \
    apt-get install -y mariadb-server 

COPY 50-server.cnf /etc/mysql/mariadb.conf.d/

COPY mariadb.sh /usr/local/bin/mariadb.sh

RUN chmod +x /usr/local/bin/mariadb.sh

CMD ["mariadb.sh"]
