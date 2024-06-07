# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhojoon <lhojoon@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/22 13:53:41 by lhojoon           #+#    #+#              #
#    Updated: 2024/06/07 17:26:28 by lhojoon          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:bookworm

LABEL maintainer="lhojoon@student.42.fr"


RUN apt update -y
RUN apt install -y software-properties-common python3-launchpadlib wget curl
RUN sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
RUN wget -qO - https://packages.sury.org/php/apt.gpg | apt-key add -
RUN apt update -y
RUN apt install -y wget php7.4-cli php7.4-fpm php7.4-mysql php7.4-json php7.4-opcache php7.4-mbstring php7.4-xml php7.4-gd php7.4-curl
RUN mkdir -p /var/www/html/lhojoon.42.fr
COPY wp-config.php /var/www/html/wp-config.php
COPY www.conf /etc/php/7.4/fpm/pool.d/

# RUN wget -P /tmp https://wordpress.org/latest.tar.gz
# RUN tar -xf /tmp/latest.tar.gz -C /tmp
# RUN mv /tmp/wordpress/* /var/www/html/lhojoon.42.fr
# RUN chown -R www-data: /var/www/html/lhojoon.42.fr
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

RUN wp core download --allow-root
# RUN mv /var/www/html/wp-config-sample.php /var/www/html/lhojoon.42.fr/wp-config.php


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

COPY ./install.sh /usr/local/bin
RUN chmod +x /usr/local/bin/install.sh
ENTRYPOINT ["/usr/local/bin/install.sh"]

WORKDIR /var/www/html/

EXPOSE 9000

CMD ["/usr/sbin/php-fpm7.4", "-F"]