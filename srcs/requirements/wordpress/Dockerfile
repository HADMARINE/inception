# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhojoon <lhojoon@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/22 13:53:41 by lhojoon           #+#    #+#              #
#    Updated: 2024/05/01 15:42:58 by lhojoon          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:bookworm

LABEL maintainer="lhojoon@student.42.fr"

RUN apt -y update
RUN apt -y install php php-mysql php-fpm curl

RUN mkdir -p /var/www/html/lhojoon.42.fr
# RUN chown lhojoon: /var/www/html/lhojoon.42.fr
RUN curl https://wordpress.org/latest.tar.gz | tar zx -C /var/www/html/lhojoon.42.fr



EXPOSE 9000