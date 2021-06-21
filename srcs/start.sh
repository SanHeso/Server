service nginx start
service mysql start
service php7.3-fpm start
service php7.3-fpm status

echo "create user 'admin'@'localhost' IDENTIFIED BY 'admin';" | mysql -u root
echo "create database wordpress;" | mysql -u root
echo "grant all privileges on wordpress.* to 'admin'@'localhost' identified by 'admin';" | mysql -u root
echo "flush privileges;" | mysql -u root

bash