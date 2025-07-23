FROM debian:bullseye

#Install necessary package from php

RUN apt-get update && apt-get -y install \
    wget \
    curl \
    php8.0 \
    php8.0-cgi \
    php8.0-mysql \
    php8.0-fpm \
    php8.0-pdo \
    php8.0-gd php8.0-cli \
    php8.0-mbstring \
    && rm -rf /var/lib/apt/lists/*

#Copy the necessary tools to download wordpress

COPY ./www.conf /var/www/html/

#Create the folder to enable php start

RUN mkdir /run/php

#Launch script

COPY ./install.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/install.sh
ENTRYPOINT ["/usr/local/bin/install.sh"]

WORKDIR /var/www/html/

EXPOSE 9000

CMD ["/usr/sbin/php-fpm8.0", "-F"]