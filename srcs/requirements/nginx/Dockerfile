# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhojoon <lhojoon@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/08 16:51:18 by lhojoon           #+#    #+#              #
#    Updated: 2024/04/08 17:55:59 by lhojoon          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM ubuntu:24.04

LABEL maintainer="lhojoon@student.42.fr"

RUN apt -y update

RUN apt -y install nginx

RUN ufw allow 'Nginx HTTP'

RUN service nginx restart

# copy config
COPY a b

EXPOSE 443