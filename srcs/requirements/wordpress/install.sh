#!/bin/sh

#check if wp-config.php exist
if [ -f ./wp-config.php ]
then
	echo "wordpress already downloaded"
else

	wget http://wordpress.org/latest.tar.gz
	tar xfz latest.tar.gz
	mv wordpress/* .
	rm -rf latest.tar.gz
	rm -rf wordpress

	sed -i "s/$MYSQL_USER/g" wp-config-sample.php
	sed -i "s/$MYSQL_PASSWORD/g" wp-config-sample.php
	sed -i "s/$MYSQL_HOSTNAME/g" wp-config-sample.php
	sed -i "s/$MYSQL_DATABASE/g" wp-config-sample.php
	cp wp-config-sample.php wp-config.php

fi

exec "$@"