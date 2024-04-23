# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhojoon <lhojoon@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/08 16:51:18 by lhojoon           #+#    #+#              #
#    Updated: 2024/04/23 18:02:57 by lhojoon          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM ubuntu:24.04

LABEL maintainer="lhojoon@student.42.fr"

# RUN ufw enable
# RUN ufw allow 443

RUN apt -y update
RUN apt -y install nginx

COPY ./default.conf /etc/nginx/nginx.conf
# COPY ./default.conf /etc/nginx/conf.d/lhojoon.42.fr.conf

# TODO : Test this if works or have to replace localhost
# RUN echo "127.0.0.1 lhojoon.42.fr" >> /etc/hosts

RUN service nginx restart

EXPOSE 443