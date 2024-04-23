# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhojoon <lhojoon@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/08 16:42:33 by lhojoon           #+#    #+#              #
#    Updated: 2024/04/23 17:39:12 by lhojoon          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	mkdir -p /Users/lhojoon/Desktop/dbdata
	mkdir -p /Users/lhojoon/Desktop/wordpress
	docker compose -f ./srcs/docker-compose.yml up