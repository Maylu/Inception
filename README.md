# README

*This project has been created as part of the 42 curriculum by gcamara.*

## Description

Inception est un projet visant à nous apprendre l'utilisation de Docker. Docker est une plateforme permettant le déploiement de logiciels dans des conteneurs.

Avant d'aller plus loin, définissons certains termes que nous allons voir souvent.

- **Conteneur** : boîte virtuelle légère et isolée qui regroupe l'application et tout ce dont elle a besoin pour être exécutée.
- **Image** : plan de construction d'une application qui sera exécutée dans le conteneur.
- **Dockerfile** : fichier d'instructions servant à fabriquer une image.
- **Docker network** : système qui permet aux conteneurs Docker de communiquer entre eux, avec la machine hôte et avec l'extérieur (Internet).

## Virtual Machines vs Docker

| Caractéristique | Machine virtuelle | Docker |
| --- | --- | --- |
| Architecture | Virtualisation complète avec l'OS choisi | Conteneur léger basé sur un OS commun |
| Performance | Démarrage complet mais lent à cause de l'OS | Démarrage quasi instantané |
| Ressources | Consommation de ressources élevée | Consomme peu de ressources |
| Isolation | Isolation complète du matériel et de l'OS | Isolation du logiciel, mais partage du noyau |
| Portabilité | Moins flexible | Petites images, donc très portable |
| Sécurité | Isolation matérielle plus forte | Isolation moins forte car le noyau est partagé avec l'hôte |

## Secrets vs Environment Variables

Une **variable d'environnement** est une valeur nommée que l'OS met à disposition des processus. C'est une manière pratique de passer une configuration à un autre processus.

Un **secret** est une valeur sensible qui donne accès à une ressource et doit rester confidentielle. Il est souvent injecté dans des fichiers temporaires ou via un gestionnaire de secrets.

Dans le cas de Docker, les deux sont utiles : les variables d'environnement transportent des valeurs de configuration vers le conteneur, tandis que les secrets servent à garder et protéger les données sensibles.

## Docker Network vs Host Network

*(à compléter)*

## Docker Volumes vs Bind Mounts

Ce sont deux manières de stocker et partager des données persistantes entre le conteneur et l'hôte, mais elles diffèrent dans la gestion des données et leur accessibilité.

Le volume est géré par Docker et convient parfaitement aux données persistantes. Les volumes sont plus faciles à gérer dans l'environnement Docker.

| Caractéristique | Bind mounts | Docker volumes |
| --- | --- | --- |
| Emplacement | N'importe où sur le système de fichiers de l'hôte | Géré par Docker dans son propre répertoire |
| Chemin | Demande un chemin absolu sur l'hôte | Docker gère le chemin de stockage |
| Gestion | Directement via le système de fichiers de l'hôte | Via la CLI ou l'API Docker |
| Portabilité | Dépend de la structure des répertoires de l'hôte | Plus portable entre les environnements |
| Partage entre conteneurs | *(à compléter)* | Peut être partagé de manière sécurisée |
| Gestion des données | *(à compléter)* | *(à compléter)* |
| Idéal pour | *(à compléter)* | *(à compléter)* |

## Resources



## Instructions

*(à compléter)*

Oui, avec un GUI, sur une machine qui possède seulement 8 Go de RAM, je partirais sur :

    RAM VM : 4 Go → recommandé

    CPU : 2 cœurs

    Disque : 30–40 Go

    Mémoire vidéo : 128 Mo si ton logiciel de virtualisation le permet

    Swap dans la VM : 2–4 Go
