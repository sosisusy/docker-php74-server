

FROM php:7.4-fpm

RUN apt-get update && apt-get install -y \
    curl \
    zip \
    unzip

# php modules
RUN docker-php-ext-install \
    bcmath

# install composer
RUN curl -Ss https://getcomposer.org/installer |php \
    && mv composer.phar /usr/local/bin/composer

EXPOSE 9000