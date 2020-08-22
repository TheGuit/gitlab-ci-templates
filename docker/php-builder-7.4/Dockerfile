FROM composer:1.10 as composer

FROM php:7.4-alpine

COPY --from=composer /usr/bin/composer /usr/local/bin/composer

RUN apk add --no-cache \
    unzip \
    git \
    jq \
    grep \
    ca-certificates \
    curl \
    tar \
    xz \
    openssl \
 && composer global require hirak/prestissimo --no-progress \
 && rm -rf /tmp/* /var/cache/apk/*
