# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhojoon <lhojoon@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/08 16:42:33 by lhojoon           #+#    #+#              #
#    Updated: 2025/07/24 14:35:32 by lhojoon          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	mkdir -p /home/lhojoon/data
	mkdir -p /home/lhojoon/data/dbdata
	mkdir -p /home/lhojoon/data/wordpress
	docker compose -f ./srcs/docker-compose.yml up
clean:
	docker stop $$(docker ps -qa);\
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q);\
	docker network rm $$(docker network ls -q);
fclean:
	sudo rm -rf /home/lhojoon/data
	@docker compose -f $(COMPOSE_FILE) down
	@-docker stop `docker ps -qa`
	@-docker rm `docker ps -qa`
	@-docker rmi -f `docker images -qa`
	@-docker volume rm `docker volume ls -q`
	@-docker network rm `docker network ls -q`
re: fclean all