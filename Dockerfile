FROM php:7.4-fpm-alpine

WORKDIR /var/www/html

COPY index.php missing_timezones .

CMD [ "php", "-S", "0.0.0.0:80", "./index.php" ]
