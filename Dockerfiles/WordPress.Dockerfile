FROM wordpress:6.6.2-apache

RUN docker-php-ext-install mysqli

COPY ./wp/ /var/www/html/

RUN chown -R www-data:www-data /var/www/html

EXPOSE 80