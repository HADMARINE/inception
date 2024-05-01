export DEBIAN_FRONTEND="noninteractive"

# mysql -uroot -pPASS -e "SET PASSWORD = PASSWORD('$MYSQL_ROOT_PASSWORD');"
debconf-set-selections <<< "mariadb-server mysql-server/root_password password $MYSQL_ROOT_PASSWORD"
debconf-set-selections <<< "mariadb-server mysql-server/root_password_again password $MYSQL_ROOT_PASSWORD" 

apt -y install mariadb-server

# mysql_secure_installation

service mysql start

echo "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" | mariadb

echo "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" | mariadb
echo "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';" | mariadb
echo "FLUSH PRIVILEGES;" | mariadb

echo "CREATE DATABASE WORDPRESS;" | mariadb

# kill $(cat /var/run/mysqld/mysqld.pid)
systemctl stop mariadb

mariadbd