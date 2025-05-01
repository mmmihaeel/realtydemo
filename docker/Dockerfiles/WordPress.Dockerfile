FROM wordpress:6.6.2-apache

RUN docker-php-ext-install mysqli
EXPOSE 80