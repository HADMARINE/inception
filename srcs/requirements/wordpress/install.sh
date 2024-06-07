#!/bin/sh


	# wget http://wordpress.org/latest.tar.gz
	# tar xfz latest.tar.gz
	# mv wordpress/* .
	# rm -rf latest.tar.gz
	# rm -rf wordpress

	# sed -i "s/$MYSQL_USER/g" wp-config-sample.php
	# sed -i "s/$MYSQL_PASSWORD/g" wp-config-sample.php
	# sed -i "s/$MYSQL_HOSTNAME/g" wp-config-sample.php
	# sed -i "s/$MYSQL_DATABASE/g" wp-config-sample.php

rm -rf /etc/php/7.4/fpm/pool.d/www.conf
mv ./www.conf /etc/php/7.4/fpm/pool.d/

sed -i -r "s/db1/$MYSQL_DATABASE/1"   lhojoon.42.fr/wp-config.php
sed -i -r "s/user/$MYSQL_USER/1"  lhojoon.42.fr/wp-config.php
sed -i -r "s/pwd/$MYSQL_PASSWORD/1"    lhojoon.42.fr/wp-config.php
mv wp-config.php ./lhojoon.42.fr/wp-config.php

cd lhojoon.42.fr

# wp core install --url=$WP_HOSTNAME/ --title=$WP_TITLE -admin_user=$WP_ADMIN_USR --admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root
# wp user create $WP_USR $WP_EMAIL --role=author --user_pass=$WP_PWD --allow-root
# wp theme install astra --activate --allow-root
# wp plugin update --all --allow-root

sed -i 's/listen = \/run\/php\/php7.4-fpm.sock/listen = 9000/g' /etc/php/7.4/fpm/pool.d/www.conf

mkdir -p /run/php

	# cp wp-config-sample.php wp-config.php
