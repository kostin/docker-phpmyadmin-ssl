FROM maxexcloo/phpmyadmin:latest
MAINTAINER Alexey Kostin <smartdesigner@gmail.com>
RUN mkdir -p /data/ssl
VOLUME /data/ssl
ADD config /config
ADD ssl.conf /etc/nginx/conf.d/ssl.conf
EXPOSE 443
