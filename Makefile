NAME= ./srcs/docker_compose.yaml

all: build up

build:
	docker-compose -f $(NAME) up -build

up:
	docker-compose -f $(NAME) up -build -d

down:
	docker-compose -f $(NAME) down

clean:
	docker-compose -f $(NAME) down
	docker-compose rm -f

fclean: clean

re: fclean all

.PHONY : all build up down clean fclean re