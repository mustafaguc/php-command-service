FROM ghcr.io/mustafaguc/command-service:1.0.1
ENV PHP_VERSION=82

RUN apk update \
    && apk add --no-cache \
        # Core PHP and extensions
        php${PHP_VERSION} \
        php${PHP_VERSION}-fpm \
        php${PHP_VERSION}-mbstring \
        php${PHP_VERSION}-pdo \
        php${PHP_VERSION}-pdo_mysql \
        php${PHP_VERSION}-openssl \
        php${PHP_VERSION}-json \
        php${PHP_VERSION}-phar \
        php${PHP_VERSION}-xml \
        php${PHP_VERSION}-tokenizer \
        php${PHP_VERSION}-ctype \
        php${PHP_VERSION}-session \
        php${PHP_VERSION}-curl \
        php${PHP_VERSION}-gd \
        php${PHP_VERSION}-soap \
        php${PHP_VERSION}-zip \
        php${PHP_VERSION}-exif \
        php${PHP_VERSION}-opcache \
        php${PHP_VERSION}-sodium \
        php${PHP_VERSION}-intl \
        # System packages        
        busybox-extras \
        mysql-client \
        curl \
        # Libraries
        libzip-dev \
        libnsl \
        icu \
        libpng \
        libjpeg-turbo \
        libsodium \
        libaio \
        libc6-compat
