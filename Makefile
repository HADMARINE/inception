# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhojoon <lhojoon@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/08 16:42:33 by lhojoon           #+#    #+#              #
#    Updated: 2024/06/18 11:20:59 by lhojoon          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	mkdir -p /home/lhojoon/Documents/dbdata
	mkdir -p /home/lhojoon/Documents/wordpress
	docker compose -f ./srcs/docker-compose.yml up
clean:
	docker stop $$(docker ps -qa);\
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q);\
	docker network rm $$(docker network ls -q);
fclean:
	rm -rf /home/lhojoon/Documents/dbdata
	rm -rf /home/lhojoon/Documents/wordpress
	@docker compose -f $(COMPOSE_FILE) down
	@-docker stop `docker ps -qa`
	@-docker rm `docker ps -qa`
	@-docker rmi -f `docker images -qa`
	@-docker volume rm `docker volume ls -q`
	@-docker network rm `docker network ls -q`
	@sudo rm -rf /home/bfaisy/data/wordpress
	@sudo rm -rf /home/bfaisy/data/mysql
re: fclean all