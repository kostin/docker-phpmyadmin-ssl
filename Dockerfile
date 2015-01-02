FROM maxexcloo/phpmyadmin:latest
MAINTAINER Alexey Kostin <smartdesigner@gmail.com>
RUN mkdir -p /data/ssl
VOLUME /data/ssl
ADD config /config
#ADD sslgen.sh /usr/local/bin/sslgen.sh
#ADD cronsslgen.cron /etc/cron.d/cronsslgen
#RUN chmod +x /usr/local/bin/sslgen.sh
ADD ssl.conf /etc/nginx/conf.d/ssl.conf
EXPOSE 443
