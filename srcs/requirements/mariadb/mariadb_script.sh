service mariadb start

echo "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" | mysql

echo "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" | mysql
echo "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';" | mysql
echo "FLUSH PRIVILEGES;" | mysql

echo "CREATE DATABASE WORDPRESS;" | mysql

# kill $(cat /var/run/mysqld/mysqld.pid)
service mariadb stop

mysqld