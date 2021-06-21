FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y nginx wget vim
RUN apt-get install -y mariadb-server
RUN apt-get install -y php-mysql php php-fpm

RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
RUN tar -xzvf phpMyAdmin-4.9.0.1-all-languages.tar.gz && rm -r phpMyAdmin-4.9.0.1-all-languages.tar.gz
RUN mv phpMyAdmin-4.9.0.1-all-languages/ /var/www/html/phpmyadmin

RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xzvf latest.tar.gz && rm -r latest.tar.gz
RUN mv wordpress/ /var/www/html/wordpress

RUN openssl req -newkey rsa:4096 -days 365 -nodes -x509 -subj "/C=RU/ST=Russia/L=Kazan/O=21Kazan/OU=Tagir/CN=localhost" -keyout /etc/ssl/cert.key -out /etc/ssl/bundle.crt
RUN chmod 600 /etc/ssl/cert.key /etc/ssl/bundle.crt

COPY /srcs/wp-config.php /var/www/html/wordpress
COPY /srcs/default /etc/nginx/sites-available/

COPY /srcs/start.sh /
RUN chmod 755 /start.sh
CMD /start.sh
