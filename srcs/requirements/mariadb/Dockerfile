# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhojoon <lhojoon@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/22 13:15:39 by lhojoon           #+#    #+#              #
#    Updated: 2024/04/23 16:59:31 by lhojoon          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM ubuntu:24.04

ENV MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}
ENV MYSQL_USER=${MYSQL_USER}
ENV MYSQL_PASSWORD=${MYSQL_PASSWORD}

LABEL maintainer="lhojoon@student.42.fr"

RUN apt -y update
RUN DEBIAN_FRONTEND=noninteractive apt -y install mariadb-server

# RUN mysql_secure_installation

RUN service mariadb start

EXPOSE 3306