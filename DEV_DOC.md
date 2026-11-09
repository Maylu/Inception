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

- Une machine virtuelle
- Docker avec Docker Compose
- make
- git

Vérifier ensuite que Docker est bien installé en contrôlant sa version.

### Configuration

- Mettre en place les variables d'environnement (fichier `.env`) et les mots de passe (secrets).
- Configurer le DNS local (fichier `/etc/hosts`) pour que le nom de domaine (`gcamara.42.fr`) pointe vers la machine locale.

## Construire et lancer le projet avec le Makefile et Docker Compose

Pour lancer le projet :

    make

Cette commande lance Docker Compose et crée les volumes.

Voici la liste des autres commandes `make` : *(à compléter)*

## Gérer les conteneurs et les volumes

Voici les autres commandes pour gérer les conteneurs et leurs volumes :

- Voir le statut des conteneurs
- Rebuild un service
- Exécuter une commande dans un conteneur en cours d'exécution
- Voir les logs
- Lister les volumes

## Où sont stockées les données et comment elles persistent

### Emplacement des données

Les données sont stockées dans les volumes : *(préciser lesquels, et où sur la machine hôte)*

- Base de données (tables) : *(à compléter)*
- Fichiers WordPress : *(à compléter)*

Ces volumes sont configurés dans le `docker-compose.yml` et les Dockerfiles.

### Initialisation de MariaDB et WordPress

*(à compléter : explication de l'initialisation de MariaDB et de WordPress)*

### Vérifier que les données sont persistantes

1. Faire un post sur le site.
2. Supprimer les conteneurs **sans** supprimer les volumes.
3. Relancer la machine.
4. Refaire un `make`.
5. Vérifier que les changements sont toujours là.

### Réseau Docker

*(à compléter : explication du network entre les conteneurs)*