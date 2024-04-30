# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhojoon <lhojoon@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/22 13:15:39 by lhojoon           #+#    #+#              #
#    Updated: 2024/04/30 14:29:35 by lhojoon          ###   ########.fr        #
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

COPY ./mariadb_script.sh .

RUN ./mariadb_script.sh

EXPOSE 3306