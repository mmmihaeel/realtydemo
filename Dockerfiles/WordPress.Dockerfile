FROM wordpress:6.6.2-apache

RUN docker-php-ext-install mysqli

ENV WORDPRESS_DB_HOST=dpg-d09u1sodl3ps7392spbg-a:5432 \
    WORDPRESS_DB_NAME=realtydemo_database \
    WORDPRESS_DB_USER=realtydemo \
    WORDPRESS_DB_PASSWORD=dpg-d09u1sodl3ps7392spbg-a

COPY ./wp/ /var/www/html/


RUN chown -R www-data:www-data /var/www/html

EXPOSE 80