# La version de l'application a telecharger
FROM nginx:alpine

# copier la source dans un autre repertoire
COPY index.html .
COPY conf ./

# indique quel port nginx ecoute
EXPOSE 443

CMD [ "nginx", "-g", "daemon off;" ]