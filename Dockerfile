FROM gayanhewa/lumen

WORKDIR /var/www

ADD . /var/www

RUN echo "listen = 127.0.0.1:9000" >> /etc/php5/fpm/php-fpm.conf

RUN composer self-update
RUN composer install

ENV DB_CONNECTION sqlite

RUN php artisan migrate --force

CMD service php5-fpm restart && nginx
