# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhojoon <lhojoon@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/08 16:51:18 by lhojoon           #+#    #+#              #
#    Updated: 2024/04/22 15:07:48 by lhojoon          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM ubuntu:24.04

LABEL maintainer="lhojoon@student.42.fr"

# RUN ufw enable
# RUN ufw allow 443

RUN apt -y update
RUN apt -y install nginx

RUN service nginx restart

COPY ./default.conf /etc/nginx/sites-available/default

EXPOSE 443