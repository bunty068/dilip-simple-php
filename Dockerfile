FROM php:7.2-apache

ENV APACHE_DOCUMENT_ROOT=/var/www/html/public

#install the required php extensions
RUN docker-php-ext-install mysqli

COPY ./etc/apache2/sites-enabled/000-default.conf /etc/apache2/sites-enabled/
COPY . /var/www/html

RUN chown -R www-data /var/www/html

EXPOSE 80

RUN a2enmod rewrite
RUN service apache2 restart