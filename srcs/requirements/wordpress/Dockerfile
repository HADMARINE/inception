# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhojoon <lhojoon@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/22 13:53:41 by lhojoon           #+#    #+#              #
#    Updated: 2024/04/23 17:59:57 by lhojoon          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM ubuntu:24.04

LABEL maintainer="lhojoon@student.42.fr"

RUN apt -y update
RUN apt -y install php php-mysql php-fpm curl

RUN mkdir -p /var/www/html/lhojoon.42.fr
# RUN chown lhojoon: /var/www/html/lhojoon.42.fr
RUN chmod 664 /etc/hosts
RUN curl https://wordpress.org/latest.tar.gz | tar zx -C /var/www/html/lhojoon.42.fr



EXPOSE 9000