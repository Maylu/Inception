# La version de l'application a telecharger
FROM debian:bookworm

RUN apt-get update && apt-get upgrade -y 
RUN apt-get install mariadb-server -y

# copier la source dans le docker image
COPY ./conf/50-server.cnf etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./tools/init_mariadb.sh /usr/local/bin/

# indique quel port nginx ecoute
EXPOSE 3306

# quand le dockerfile sera execute cette partie sera automatiquement execute
CMD [ "mysqld" ]

RUN chmod +x /usr/local/bin/*.sh

# quand le dockerfile sera execute cette partie sera automatiquement execute

ENTRYPOINT [ "/usr/local/bin/init_mariadb.sh" ]