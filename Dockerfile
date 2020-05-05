FROM php:7.2-apache

COPY virtualhost.conf /etc/apache2/sites-available/000-default.conf

RUN apt-get update \
  && apt-get install -y \
    git \
    build-essential \
    zip \
    libfreetype6-dev \
    libfreetype6 \
    libjpeg62-turbo-dev \
    libjpeg62-turbo \
    libpng-dev \
    libpng16-16 \
    libwebp-dev \
    libwebp6 \
    zlib1g-dev \
    zlib1g \
    nodejs \
  && docker-php-ext-configure gd \
    --with-freetype-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
    --with-webp-dir=/usr/include/ \
  && docker-php-ext-install \
    pdo_mysql \
    gd \
    zip \
  && docker-php-ext-enable \
    opcache \
  && a2enmod \
    expires \
    headers \
    rewrite \
  && apt-get autoremove -y \
  && apt-get clean \
  && rm -rf /tmp/pear \
  && curl -sSL https://www.npmjs.com/install.sh | sh

EXPOSE 80
