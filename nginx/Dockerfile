# La version de l'application a telecharger
FROM nginx:alpine

# copier la source dans le docker image
COPY index.html .
COPY nginx.conf .

# indique quel port nginx ecoute
EXPOSE 443

CMD [ "nginx", "-g", "daemon off;" ]

# quand le dockerfile sera execute cette partie sera automatiquement execute

ENTRYPOINT [ "bash" "ssl_config.sh" ]