# La version de l'application a telecharger
FROM debian:bookworm

RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install wget
RUN apt-get -y install php8.2
RUN apt-get -y install php-fpm
RUN apt-get -y install php-mysql
RUN apt-get -y install mariadb-client
RUN wget https://fr.wordpress.org/wordpress-7.1.3-fr_FR.tar.gz -P /data/www
RUN cd /data/www && tar -xzf wordpress-7.1.3-fr_FR.tar.gz && rm wordpress-7.1.3-fr_FR.tar.gz
RUN chown -R root:root /data/www/wordpress

# copier la source dans le docker image
#COPY ./conf/index.html /usr/share/nginx/html/index.html
#COPY ./conf/nginx.conf /etc/nginx/nginx.conf

#RUN mkdir -p /etc/nginx/ssl

# indique quel port nginx ecoute
EXPOSE 9000

#CMD [ "nginx", "-g", "daemon off;" ]

#RUN chmod +x /usr/local/bin/*.sh

# quand le dockerfile sera execute cette partie sera automatiquement execute

#ENTRYPOINT [ "/usr/local/bin/ssl_config.sh" ]