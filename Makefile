all:
	@docker-compose -f ./src/docker-compose.yml up -d --build
down:
	@docker-compose -f ./src/docker-compose.yml down
clean:
	@rm -rf /home/julolle-/data/mysql/*
	@rm -rf /home/julolle-/data/wordpress/*
	@docker stop $$(docker ps -qa);
	@docker rm $$(docker ps -qa);
	@docker rmi -f $$(docker images -qa);
	@docker volume rm $$(docker volume ls -q);
	@docker network rm julolle-net;
