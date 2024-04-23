# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhojoon <lhojoon@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/08 16:42:33 by lhojoon           #+#    #+#              #
#    Updated: 2024/04/23 17:40:37 by lhojoon          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	mkdir -p /home/lhojoon/Documents/dbdata
	mkdir -p /home/lhojoon/Documents/wordpress
	docker compose -f ./srcs/docker-compose.yml up