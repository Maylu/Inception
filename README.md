This project has been created as part of the 42 curriculum by gcamara.

Description
• Project description

Inception est un projet visant a nous apprendre l'utilisation des dockers. Un docker est une plateformer pemettant le deployement de logiciels dans des conteneurs.

Avant d'aller plus loin definissons certains termes que nous allons voir souvent.

Conteneur :
C'est une boite virtuelle legere et isolee qui regroupe l'image de l'application et de tout ce qu'elle a besoin pour etre execute

Image :
C'est le plan de construction d'une application qui sera execute dans le conteneur

Dockerfile :
c'est un fichier qui sert d'instruction pour la fabrication d'une image.

DockerNetwork :
c'est un systeme qui permet aux conteneurs Docker de communiquer entre eux avec la machine hote et avec l'exterieur Internet.


◦ Virtual Machines vs Docker


| Caracteristiques | Virtual Machine | Docker |
| --- | --- | --- |
| Architecture | Virtualisation complete avec l'OS chosi | Conteneur leger bse sur un OS commun |
| Performance | Demarrage complet mais lent due a l'OS | Demarrage instantane |
| Ressources | Comsomation de ressource eleve | Consomme peu de ressource |
| Isolation | Isolation complete du materiel et de l'OS | Isolation du logiciel mais partage du noyau |
| Portabilite | Moins flexible | Petites images donc tres portable |
| Securite | Isolation materielle plus forte | Isolation materielle peu presente car partage avec l'hote |


◦ Secrets vs Environment Variables

une vaariable d'enviroment est une valeur nommee par le l'OS qui le met a disposition pour d'autres processus, c'est une maniere pratique de passer une configuration a un autre processus

Ujn secret est une valeur sensible qui accorde des acces mais doit rester confidentiel. Elle est souvent ingectee dans des fichiers temporaire ou via un gestionnaire de secrets

Dans le cas des dockers les deux sont utiles, l'un transp orte de valeurts de conficurations au docker et l'autre sert a garder et proteger des donnes sensibles


◦ Docker Network vs Host Network



◦ Docker Volumes vs Bind Mounts

Ce sont deux manieres de stocker et partager des donnes persistantes entre le docker et l'host. Mais elles differe dans la gestion des datas et comment elle sont accessible.

Le volume est manager par le docker et parfait pour les donnees persistantes. Les volumes sont plus faciles a gerer avec le docker environment

| Caracteristiques | Bind Mounts | Docker Volumes |
| --- | --- | --- |
| Location | Tout emplacement sur le fichier systeme hote | Gere par Docker dans son propre repertoire |
| Chemin | Demande un chemin absolu chez l'hote | Docker gere le chemin du stockage |
| Gestion | Gere directement a travers le fichier systeme hote | Gere a l'aide de Docker CLI ou API |
| Portabilite | Dependant de la stucture du repertoire hote | Plus de portabilite dans tout les environements |
| Partage conteneur | Isolation complete du materiel et de l'OS | Peut etre partage de maniere securise |
| Data Management | Isolation materielle plus forte | Isolation materielle peu presente car partage avec l'hote |
| Ideale Pour | Isolation materielle plus forte | Isolation materielle peu presente car partage avec l'hote |

Resources
dev.to/alejiri/docker-nginx-wordpress-mariadb-tutorial-inception42-1eok


Instructions


Oui, avec un GUI, sur une machine qui possède seulement 8 Go de RAM, je partirais sur :

    RAM VM : 4 Go → recommandé

    CPU : 2 cœurs

    Disque : 30–40 Go

    Mémoire vidéo : 128 Mo si ton logiciel de virtualisation le permet

    Swap dans la VM : 2–4 Go
