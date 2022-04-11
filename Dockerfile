FROM php:7.4

ENV PHALCON_VERSION=4.1.3

RUN apt update

# install phalcon
RUN pecl install -s psr \
    && docker-php-ext-enable psr \
    && pecl clear-cache \
    && curl -LO https://github.com/phalcon/cphalcon/archive/v${PHALCON_VERSION}.tar.gz \
    && tar xzf v${PHALCON_VERSION}.tar.gz \
    && docker-php-ext-install -j$(nproc) ${PWD}/cphalcon-${PHALCON_VERSION}/build/php7/64bits \
    && rm -rf v${PHALCON_VERSION}.tar.gz cphalcon-${PHALCON_VERSION}

# install composer
RUN curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php \
    && php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"\
    && php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer

RUN apt install git -y

RUN composer require phalcon/devtools

# for DB
RUN docker-php-ext-install pdo_mysql
RUN composer require --dev phalcon/migrations

CMD ["php", "-S", "0.0.0.0:3000", "-t", "public", ".htrouter.php"]