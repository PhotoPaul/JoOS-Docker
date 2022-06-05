FROM php:apache

RUN apt update && \
    apt -y install git libpng-dev libjpeg-dev libfreetype6-dev

RUN docker-php-ext-install mysqli pdo pdo_mysql

RUN docker-php-ext-configure gd --with-jpeg
RUN docker-php-ext-install gd

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

COPY docker-php-ext-xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

WORKDIR /var/www/html

RUN git clone https://github.com/PhotoPaul/JoOS-API.git ./joos-api

EXPOSE 80