FROM debian:11

RUN apt-get update -y && \
    apt-get install -y nginx openssl

RUN mkdir -p /etc/nginx/ssl

COPY default /etc/nginx/sites-available/default

COPY script.sh /script.sh

RUN chmod +x /script.sh

CMD ["/script.sh"]
