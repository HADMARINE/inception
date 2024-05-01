# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhojoon <lhojoon@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/22 13:15:39 by lhojoon           #+#    #+#              #
#    Updated: 2024/05/01 15:42:48 by lhojoon          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:bookworm

ENV MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}
ENV MYSQL_USER=${MYSQL_USER}
ENV MYSQL_PASSWORD=${MYSQL_PASSWORD}

LABEL maintainer="lhojoon@student.42.fr"

RUN apt-get -y update

RUN apt-get -y install mariadb-server

# RUN mysql_secure_installation

COPY ./mariadb_script.sh .
COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/

RUN bash ./mariadb_script.sh

CMD ["mysqld"]

EXPOSE 3306