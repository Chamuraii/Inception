.PHONY: up down logs build

build:
	docker-compose -f srcs/docker-compose.yml build

up:
	docker-compose -f srcs/docker-compose.yml up

down:
	docker-compose -f srcs/docker-compose.yml down

#logs:
#	docker-compose -f srcs/docker-compose.yml logs -f

# docker exec -it nginx sh
