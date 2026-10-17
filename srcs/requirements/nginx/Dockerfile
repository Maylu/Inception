# La version de l'application a telecharger
FROM debian:trixie

RUN apt-get update && apt-get install -y nginx
RUN apt-get update && apt-get install -y openssl

RUN usermod -u 33 www-data && groupmod -g 33 www-data

# copier la source dans le docker image
COPY ./conf/index.html /usr/share/nginx/html/index.html
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
COPY ./conf/ssl_config.sh /usr/local/bin/

RUN mkdir -p /etc/nginx/ssl

# indique quel port nginx ecoute
EXPOSE 443

CMD [ "nginx", "-g", "daemon off;" ]

RUN chmod +x /usr/local/bin/*.sh

# quand le dockerfile sera execute cette partie sera automatiquement execute

ENTRYPOINT [ "/usr/local/bin/ssl_config.sh" ]