FROM gayanhewa/lumen

WORKDIR /var/www

ADD . /var/www

RUN echo "listen = 127.0.0.1:9000" >> /etc/php5/fpm/php-fpm.conf

RUN composer self-update
RUN if [ -f composer.json ]; then composer install; fi

ENV DB_CONNECTION sqlite

RUN if [ -f artisan ]; then php artisan migrate --force; fi

CMD service php5-fpm restart && nginx