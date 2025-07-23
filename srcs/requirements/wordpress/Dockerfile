FROM debian:bullseye

#Install necessary package from php

RUN apt-get update && apt-get -y install \
    wget \
    curl \
    php \
    php-cgi \
    php-mysql \
    php-fpm \
    php-pdo \
    php-gd php-cli \
    php-mbstring \
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

CMD ["/usr/sbin/php-fpm8.3", "-F"]