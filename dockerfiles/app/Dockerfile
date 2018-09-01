FROM php:7.1.9-fpm

RUN DEBIAN_FRONTEND=noninteractive \

    #Install Composer
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && chmod +x /usr/local/bin/composer \

    #Install git by manually adding repository
    && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E1DD270288B4E6030699E45FA1715D88E1DF1F24 \
    && echo 'deb http://ppa.launchpad.net/git-core/ppa/ubuntu trusty main' > /etc/apt/sources.list.d/git.list \
    && apt-get update \
    && apt-get install -y git

#COPY ./conf/www.conf /usr/local/etc/php-fpm.d/
#COPY ./conf/php.ini /usr/local/etc/php/
#COPY ./conf/xdebug.ini /usr/local/etc/php/conf.d/

COPY ./docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["php-fpm"]

WORKDIR /var/www
