NAME=srcs/docker_compose.yaml
VOLUME=/home/gcamara/data

all: build up

build:
	if [ ! -d "$(VOLUME)" ]; then \
		mkdir $(VOLUME); \
		mkdir $(VOLUME)/mariadb && mkdir $(VOLUME)/wordpress; \
	fi
	docker compose -f $(NAME) build

up:
	docker compose -f $(NAME) up -d

down:
	docker compose -f $(NAME) down

stop:
	docker compose -f $(NAME) stop

clean:
	docker compose -f $(NAME) down

fclean: clean
	sudo rm -rf $(VOLUME)

re: fclean all

.PHONY : all build up down stop clean fclean re