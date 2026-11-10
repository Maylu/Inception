# Developer Documentation

Ce projet sert à installer un système de stack permettant de démarrer un site WordPress avec Docker Compose.

## Comprendre les services fournis par la stack

Nous avons en tout trois services, chacun installé dans son propre conteneur Docker.

### NGINX

Logiciel libre et open source qui fonctionne comme :

- **Serveur web** : conçu pour servir des fichiers statiques.
- **Reverse proxy** : intercepte les requêtes des clients et les transmet aux serveurs backend en protégeant leur identité.
- **Répartiteur de charge** : distribue le trafic entrant sur plusieurs serveurs pour éviter la surcharge.
- **Cache de contenu** : *(à compléter)*

### MariaDB

Système de gestion de base de données, dérivé de MySQL.

### WordPress

Système de gestion de contenu libre et open source qui permet de créer des sites internet, des blogs ou des boutiques en ligne.

## Mettre en place l'environnement from scratch

### Prérequis

- Une machine virtuelle (4 Go de ram, 2 coeures, 20 Go de memoire, Swap 2/4 Go)
- Docker avec Docker Compose
- make
- git

Vérifier ensuite que Docker est bien installé en contrôlant sa version.

### Configuration

- Mettre en place les variables d'environnement (fichier `.env`) et les mots de passe (secrets).
- Configurer le DNS local (fichier `/etc/hosts`) pour que le nom de domaine (`gcamara.42.fr`) pointe vers la machine locale.

## Secrets

Nous avons deux secrets, les credentials et le .env
Le .env est composee de variables d'environements disposant difformation peu sensible mais utiles a la connextion
les credentials sont a generer via des fichiers txt et ne doivent jamais etre publies sur git

mkdir -p secrets
echo "PASSWORD_1" > secrets/password_1.txt
echo "PASSWORD_2" > secrets/password_2.txt

chmod 600 secret/*

## Construire et lancer le projet avec le Makefile et Docker Compose

Pour lancer le projet :

```bash
make
```

Cette commande lance Docker Compose et crée les volumes.

Voici la liste des autres commandes `make` :

Build les images :

```bash
make build
```

Lancer les dockers :

```bash
make up
```

Arrêter le projet :

```bash
make stop
```

Effacer le projet :

Sans les volumes.
```bash
make clean 
```

Avec les volumes.
```bash
make fclean 
```

## Gérer les conteneurs et les volumes

Voici les autres commandes pour gérer les conteneurs et leurs volumes :

- Voir le statut des conteneurs
```bash
docker ps -a 
```
- Rebuild un service
```bash
docker compose build NAME
```
- Exécuter une commande dans un conteneur en cours d'exécution
```bash
docker exec -it NAME bash 
```
- Voir les logs
```bash
docker logs NAME 
```
- Lister les volumes
```bash
docker volume ls
```
## Où sont stockées les données et comment elles persistent

### Emplacement des données

Les données sont stockées dans les volumes **/home/gcamara/data/mariadb** et **/home/gcamara/data/**

- Base de données (tables) : srcs_mariadb (/home/gcamara/data/mariadb)
- Fichiers WordPress :  srcs_wordpress (/home/gcamara/data/wordpress)

Ces volumes sont configurés dans le `docker-compose.yml` avec ```bash driver:local``` . Elles restent persisantes, pour effacer ces donnes il faut executer la commande ```bash make down```

### Initialisation de MariaDB et WordPress

Mariadb : Dans le dockerfile j'installe mariadb, je recurpere la config de base et modifie le fichier, et je cree le fichier init_mariadb.sh. Ces deux fichier vont etre copier. la 50-server.cnf va appliquer la config de base et le init_mariadb.sh va creer la Database pour Wordpress si elle n'existe pas ainsi que les users

Wordpress : J'installe les packages necessaire pour utiliser Wordpress et je copie le fichier www.conf ainsi que le fichier bash wp_init.sh pour initialisation. Si le fichier wp_config n'existe pas alors nous creons ce fichier en liant le profil mariadb a la database. Puis si CLI n'est pas installee nous creons le profil admin ainsi que le profil user

### Vérifier que les données sont persistantes

1. Faire un post sur le site.
2. Supprimer les conteneurs **sans** supprimer les volumes.
3. Relancer la machine.
4. Refaire un `make`.
5. Vérifier que les changements sont toujours là.

### Réseau Docker

Toute communications entre les conteurs est faite via le reseau pont inception, Seul le port 443 est ouvert a l'hote