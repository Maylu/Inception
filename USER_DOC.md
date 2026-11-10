# User Documentation

Ce projet sert à installer un système de stack permettant de démarrer un site WordPress avec Docker Compose.

## Comprendre les services fournis par la stack

Nous avons en tout trois services, chacun installé dans son propre conteneur Docker.

### NGINX

Logiciel libre et open source qui fonctionne comme :

- **Serveur web** : conçu pour servir des fichiers statiques.
- **Reverse proxy** : intercepte les requêtes des clients et les transmet aux serveurs backend en protégeant leur identité.
- **Répartiteur de charge** : distribue le trafic entrant sur plusieurs serveurs pour éviter la surcharge.
- **Cache de contenu** : stocke temporairement les réponses pour accélérer le chargement des pages.

### MariaDB

Système de gestion de base de données, dérivé de MySQL.

### WordPress

Système de gestion de contenu libre et open source qui permet de créer des sites internet, des blogs ou des boutiques en ligne.

## Accéder au site web et au panneau d'administration

- **Site web** : https://gcamara.42.fr:443
- **Panneau d'administration** : https://gcamara.42.fr:443/wp-admin

## Localiser et gérer les identifiants

Les identifiants (credentials) sont stockés à deux endroits différents :

- `srcs/.env` : informations de base du compte.
- `secrets/` : mots de passe et données sensibles.

Ces informations doivent être changées avant que les conteneurs ne soient lancés *(à compléter : la phrase était inachevée dans ton texte)*.

## Vérifier que les services fonctionnent correctement

Pour voir tous les conteneurs Docker (actifs ou non) :

```bash
docker ps -a
```

ou :

```bash
docker compose -f srcs/docker-compose.yml ps
```

## Démarrer et arrêter le projet

Construire les images et lancer les conteneurs :

```bash
make
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