# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhojoon <lhojoon@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/22 13:53:41 by lhojoon           #+#    #+#              #
#    Updated: 2024/04/23 17:02:59 by lhojoon          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM ubuntu:24.04

LABEL maintainer="lhojoon@student.42.fr"

RUN apt -y update
RUN apt -y install php php-mysql php-fpm

RUN mkdir -p /var/www/html
RUN chown www-data: /var/www/html
RUN curl https://wordpress.org/latest.tar.gz | sudo -u www-data tar zx -C /var/www/html

EXPOSE 9000