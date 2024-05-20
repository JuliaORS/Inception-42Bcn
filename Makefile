RM := rm -rf
HOME := /home/julolle-/
DATA_DIR := data
DATA_DIR := $(addprefix $(HOME),$(DATA_DIR))
DATA := wordpress wordpress
DATA := $(addprefix $(DATA_DIR)/,$(DATA))

all: $(DATA)
	docker compose -f ./src/docker-compose.yml up -d --build

$(DATA_DIR)/%:
	@mkdir -p $@

down:
	@docker compose -f ./src/docker-compose.yml down

clean: 
	-@docker stop $$(docker ps -qa)
	-docker rm $$(docker ps -qa)
	-docker rmi -f $$(docker images -qa)
	-@docker volume rm $$(docker volume ls -q)
	@$(RM) $(DATA_DIR)

re: clean all

.PHONY: all down clean re
