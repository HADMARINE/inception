# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhojoon <lhojoon@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/22 13:53:41 by lhojoon           #+#    #+#              #
#    Updated: 2024/06/06 14:33:52 by lhojoon          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:bookworm

LABEL maintainer="lhojoon@student.42.fr"

RUN apt update -y
RUN apt-add-repository ppa:ondrej/php && apt install -y wget php7.2-cli php7.2-fpm php7.2-mysql php7.2-json php7.2-opcache php7.2-mbstring php7.2-xml php7.2-gd php7.2-curl
RUN mkdir -p /var/www/html/lhojoon.42.fr

RUN wget -P /tmp https://wordpress.org/latest.tar.gz
RUN tar -xf /tmp/latest.tar.gz -C /var/www/html/lhojoon.42.fr
RUN chown -R www-data: /var/www/html/lhojoon.42.fr

# RUN apt update -y
# RUN apt-get install -y software-properties-common
# RUN add-apt-repository -y ppa:ondrej/php
# RUN apt update
# RUN apt -y install php php-mysql php7.3-fpm curl wget

# RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
#     && chmod +x wp-cli.phar \
#     && mv wp-cli.phar /usr/local/bin/wp
# COPY ./www.conf /etc/php/7.3/fpm/pool.d/

# RUN mkdir -p /run/php

# RUN mkdir -p /var/www/html/lhojoon.42.fr
# # RUN chown lhojoon: /var/www/html/lhojoon.42.fr
# RUN curl https://wordpress.org/latest.tar.gz | tar zx -C /var/www/html/lhojoon.42.fr

# COPY ./install.sh /usr/local/bin
# RUN chmod +x /usr/local/bin/install.sh
# ENTRYPOINT ["/usr/local/bin/install.sh"]

WORKDIR /var/www/html/

EXPOSE 9000

# CMD ["/usr/sbin/php-fpm7.3", "-F"]