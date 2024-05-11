ARG PHP_VERSION=

FROM php:${PHP_VERSION}-apache

ARG PS_VERSION=
ARG PS_ZIP_URL=
ARG PHP_PS_INFO_URL=https://raw.githubusercontent.com/PrestaShop/php-ps-info/master/phppsinfo.php

# TODO: Add ENV for PrestaShop configuration
ENV PHP_VERSION=${PHP_VERSION}
ENV PS_VERSION=${PS_VERSION}
ENV PS_DOMAIN=
ENV PS_DB_SERVER=
ENV PS_DB_NAME=
ENV PS_DB_USER=
ENV PS_DB_PASSWORD=
ENV PS_PREFIX=
ENV PS_EMAIL=
ENV PS_PASSWORD=

RUN apt-get update && apt-get install -y \
    unzip \
    libpng-dev libjpeg-dev libfreetype6-dev \
    # sendmail \
    libicu-dev \
    libzip-dev \
    libonig-dev \
    # libmagickwand-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install and enable PHP extensions
RUN docker-php-ext-install \
    zip \
    gd \
    mbstring \
    pdo_mysql \
    mysqli \
    intl \
    bcmath \
    exif

COPY docker-php.ini /usr/local/etc/php/conf.d/docker-php.ini

# Apache configuration
RUN a2enmod headers rewrite

# Install PECL: Imagick
# RUN pecl install imagick \
#     && docker-php-ext-enable imagick

RUN curl -o /tmp/prestashop.zip -L ${PS_ZIP_URL} \
    && unzip /tmp/prestashop.zip -d /tmp/prestashop \
    && unzip /tmp/prestashop/prestashop.zip -d /var/www/html \
    && rm -rf /tmp/* \
    && curl -o /var/www/html/phppsinfo.php -L ${PHP_PS_INFO_URL} \
    && chown -R www-data:www-data /var/www/html

COPY ./docker-prestashop-entrypoint.sh /usr/local/bin/docker-prestashop-entrypoint
RUN chmod +x /usr/local/bin/docker-prestashop-entrypoint && \ 
    sed -i 's/exec "$@"/\/usr\/local\/bin\/docker-prestashop-entrypoint \&\& exec "$@"/g' /usr/local/bin/docker-php-entrypoint