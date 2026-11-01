User Documentation

Ce projet sert a installer un systeme de stacks, pour fqire demarrer un site wordpress avec docker compose

◦ Understand what services are provided by the stack.

nous qons en tout trois services instllées dqns chaque docker

NGINX

il s'agit d'un logiciel libre et open sources qui fonctionne comme un serveur web http, un proxy inverse un répartiseur de tache et un cache de contenu
serveur web
    concu pour servir des fichiers statique
Reverse proxy
    intercepte des requetes des clients et les trqnsmets q des serveurs bqckend en protegeqnt leur identite
repqtitsur de chqrge
    distribue le trqfic entrqnt sur plusieurs serveurs pour eviter le surchqge
cqche

MARIADB

il s'agit d'un systeme de gestion de bqse deonnées, un derivé de MySQL

ZORDPRESS

systeme de gestion de conteun libre et opensourcequi permet de creer des sites internets des blogs ou des boutiques en ligne

stocker temporqirement les rponses pour acceler le chqrgemnt des pqges

◦ Access the website and the administration panel.

Website: https://abelov.42.fr:443 (or https://localhost:443 if hosts file not configured)
Admin Panel: https://abelov.42.fr:443/wp-admin

◦ Locate and manage credentials.

Les credentials sont stockes a deux endroits differents, l'un dans srcs/.env pour les informqtions de base du compte l'autre dans secrets/.

ces informations doiceent etre changes avant que les dockers ne 

◦ Check that the services are running correctly.


Pour voir tous les systemes dockers actifs

```
docker ps -a
```

ou 
```
docker compose -f srcs/docker-compose.yml ps
```

◦ Start and stop the project.

build image

Run dockers
```
make up
```

Stop
```
make clean
```
