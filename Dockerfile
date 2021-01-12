FROM php:7.4-fpm-alpine

RUN docker-php-ext-install pdo_mysql

WORKDIR /var/www

ADD . /var/www

RUN chown -R www-data:www-data /var/www