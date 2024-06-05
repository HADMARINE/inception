# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhojoon <lhojoon@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/22 13:53:41 by lhojoon           #+#    #+#              #
#    Updated: 2024/06/05 17:37:00 by lhojoon          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:bookworm

LABEL maintainer="lhojoon@student.42.fr"

RUN apt -y update
RUN apt -y install php php-mysql php7.3-fpm curl wget

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp
COPY ./www.conf /etc/php/7.3/fpm/pool.d/

RUN mkdir -p /run/php

RUN mkdir -p /var/www/html/lhojoon.42.fr
# RUN chown lhojoon: /var/www/html/lhojoon.42.fr
RUN curl https://wordpress.org/latest.tar.gz | tar zx -C /var/www/html/lhojoon.42.fr

COPY ./install.sh /usr/local/bin
RUN chmod +x /usr/local/bin/install.sh
ENTRYPOINT ["/usr/local/bin/install.sh"]

WORKDIR /var/www/html/

EXPOSE 9000

CMD ["/usr/sbin/php-fpm7.3", "-F"]