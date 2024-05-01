export DEBIAN_FRONTEND=noninteractive

mariadb -uroot -pPASS -e "SET PASSWORD = PASSWORD('$MYSQL_ROOT_PASSWORD');"

service mariadb start

echo "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" | mariadb

echo "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" | mariadb
echo "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';" | mariadb
echo "FLUSH PRIVILEGES;" | mariadb

echo "CREATE DATABASE WORDPRESS;" | mariadb

# kill $(cat /var/run/mysqld/mysqld.pid)
service mariadb stop

mariadbd