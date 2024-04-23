# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhojoon <lhojoon@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/08 16:51:18 by lhojoon           #+#    #+#              #
#    Updated: 2024/04/23 18:47:08 by lhojoon          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM ubuntu:24.04

LABEL maintainer="lhojoon@student.42.fr"

# RUN ufw enable
# RUN ufw allow 443

RUN apt -y update
RUN apt -y install nginx openssl

# COPY ./default.conf /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/conf.d/lhojoon.42.fr.conf
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -days 365 -new -newkey rsa:2048 -nodes -keyout /etc/nginx/ssl/cert-key.pem -out /etc/nginx/ssl/cert.pem -subj "/C=FR/ST=Denial/L=Dis/CN=lhojoon.42.fr"

# TODO : Test this if works or have to replace localhost

RUN service nginx restart

EXPOSE 443

# CMD ["nginx"]
