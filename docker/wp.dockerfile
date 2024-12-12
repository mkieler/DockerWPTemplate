FROM wordpress:6.7.1-php8.3-fpm

# Install wp cli
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

# Move plugins and themes from the host to the container
COPY ./src/plugins /var/www/html/wp-content/mu-plugins
COPY ./src/themes /var/www/html/wp-content/themes