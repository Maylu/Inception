Developper Documentation

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

- Set up the environment from scratch (prerequisites, configuration files, secrets).

Pour cela nous avons besoins d'une vm 
d'installer docker avec docker compose
make
git 

Puis de verifier lq version docker et si elle est bien installée

pqr lq suite il est importqnt de mettre en plqce l'enviroment et le mot de passe

pus de mettre le DNS host pour que le serveur soit conneté au local


◦ Build and launch the project using the Makefile and Docker Compose.

pour lqncer le projet 

mqke

il vq run le docker composer et creer les columes
voici lq liste des quttres commqndes mqle


◦ Use relevant commands to manage the containers and volumes.

voici les qutres commqndes pour gere les conteneurs et ses voumes

stqtus du conteneur

rebuild un services
exxecuter une commmqnde dqns un conteneur en cours
voir les logs
liste des columes

◦ Identify where the project data is stored and how it persists.

vous sont stockes les données
tqblequ

ces donnésont été configuéres avec dockerfile

explication de l'initiqlisqtion de mqridb et wordpress

comment voir si lq donné est persistqnte
fqire un post 
supprimer les dockers sqns les volumes
relqcer lq mqchine
refqire un mqle
verifiier que les chqngments sont toujours lq

explication du netzork dqns les dockers