# La version de l'application a telecharger
FROM debian:bookworm

RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install wget
RUN apt-get -y install php8.2
RUN apt-get -y install php-fpm
RUN apt-get -y install php-mysql
RUN apt-get -y install mariadb-client
RUN rm -rf var/lib/apt/lists/*

RUN wget https://fr.wordpress.org/wordpress-7.1.3-fr_FR.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-7.1.3-fr_FR.tar.gz && rm wordpress-7.1.3-fr_FR.tar.gz
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY ./tools/wp_init.sh /usr/local/bin
# COPY ./conf/wp-config.php /var/www/html
COPY ./conf/www.conf /etc/php/8.2/fpm/pool.d/www.conf

RUN mkdir -p /var/www/wordpress

# indique quel port nginx ecoute

RUN chmod +x /usr/local/bin/*.sh

# quand le dockerfile sera execute cette partie sera automatiquement execute

ENTRYPOINT [ "/usr/local/bin/wp_init.sh" ]