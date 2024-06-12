# export DEBIAN_FRONTEND="noninteractive"

# mysql -uroot -pPASS -e "SET PASSWORD = PASSWORD('$MYSQL_ROOT_PASSWORD');"
# debconf-set-selections <<< "mariadb-server mysql-server/root_password password $MYSQL_ROOT_PASSWORD"
# debconf-set-selections <<< "mariadb-server mysql-server/root_password_again password $MYSQL_ROOT_PASSWORD" 


# mysql_secure_installation

# systemctl start mariadb

service mariadb start

echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;" | mysql

echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" | mysql

echo "GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';" | mysql
echo "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" | mysql
echo "FLUSH PRIVILEGES;" | mysql

echo "CREATE DATABASE $MYSQL_DATABASE;" | mysql

kill $(cat /var/run/mysqld/mysqld.pid)
# service mysql stop