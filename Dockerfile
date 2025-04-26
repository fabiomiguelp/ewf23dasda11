FROM php:8.1-apache

# Enable required Apache modules
RUN a2enmod rewrite ssl

# Copy SSL configuration
COPY ./apache-ssl.conf /etc/apache2/sites-available/default-ssl.conf
RUN a2ensite default-ssl


# Copy custom php.ini if needed
COPY ./php.ini /usr/local/etc/php/php.ini