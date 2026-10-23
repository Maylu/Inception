
if[ ! -f "/data/www/wordpress/wp-confing.php"]; then
wget https://fr.wordpress.org/wordpress-7.1.3-fr_FR.tar.gz -P /var/www
cd /var/www && tar -xzf wordpress-7.1.3-fr_FR.tar.gz && rm wordpress-7.1.3-fr_FR.tar.gz
chown -R root:root /var/www/wordpress
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

cp -rn /tmp/wordpress/* /var/www/wordpress/ || true
rm -f /tmp/wordpress

    wp config create    --allow-root \
                --dbname=$SQL_DATABASE \
                --dbuser=$SQL_USER \
                --dbpass=$SQL_PASSWORD \
                --dbhost=mariadb:3306 --path='/var/www/wordpress' --allow-root
    wp core install \
                --url=https://gcamara.42.fr \
                --title="Hello World" \
                --admin_user=$WP_ADMIN_NAME \
                --admin_password=$WP_ADMIN_PASS \
                --admin_email=$WP_ADMIN_EMAIL --allow-root
    wp user create $WP_USER_NAME $WP_USER_EMAIL \
                --user_pass= $WP_USER_PASS\
                --role=author --allow-root

fi

/usr/sbin/php-fpm8.2 -F