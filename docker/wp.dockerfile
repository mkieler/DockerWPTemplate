FROM wordpress:6.7.1-php8.3-fpm

# Kopier src indhold til wp-content
COPY src /var/www/html/wp-content/
