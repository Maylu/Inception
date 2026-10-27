#!/bin/bash

set -e 

if [ -n "$WP_USER_PASS_FILE" ] && [ -f "$WP_USER_PASS_FILE" ]; then
    WP_USER_PASS=$(cat "$WP_USER_PASS_FILE")
    export WP_USER_PASS
fi

if [ -n "$WP_ADMIN_PASS_FILE" ] && [ -f "$WP_ADMIN_PASS_FILE" ]; then
    WP_ADMIN_PASS=$(cat "$WP_ADMIN_PASS_FILE")
    export WP_ADMIN_PASS
fi

if [ ! -f "/var/www/wordpress/wp-config.php" ]; then

    wp config create    --allow-root \
                --dbname=$SQL_DATABASE \
                --dbuser=$SQL_USER \
                --dbpass=$WP_USER_PASS \
                --dbhost=mariadb:3306 --path='/var/www/wordpress' --allow-root

fi

if ! wp core is-installed --path='/var/www/wordpress' --allow-root; then
    wp core install \
                --url=https://gcamara.42.fr \
                --title="Hello World" \
                --admin_user=$WP_ADMIN_NAME \
                --admin_password=$WP_ADMIN_PASS \
                --admin_email=$WP_ADMIN_EMAIL --allow-root
    wp user create $WP_USER_NAME $WP_USER_EMAIL \
                --user_pass=$WP_USER_PASS \
                --role=author --allow-root
fi

chown -R www-data:www-data /var/www/wordpress

mkdir -p /run/php
/usr/sbin/php-fpm8.2 -F