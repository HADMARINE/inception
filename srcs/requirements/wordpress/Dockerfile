# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhojoon <lhojoon@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/22 13:53:41 by lhojoon           #+#    #+#              #
#    Updated: 2024/06/06 14:43:58 by lhojoon          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:bookworm

LABEL maintainer="lhojoon@student.42.fr"

RUN apt update -y
RUN apt install -y software-properties-common python3-launchpadlib
RUN apt update -y
RUN apt-add-repository ppa:ondrej/php && apt install -y wget php8.3-cli php8.3-fpm php8.3-mysql php8.3-json php8.3-opcache php8.3-mbstring php8.3-xml php8.3-gd php8.3-curl
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