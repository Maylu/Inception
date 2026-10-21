sleep 10
if[ ! -f "/var/www/html/wp-confing.php"]; then
wget https://fr.wordpress.org/wordpress-7.1.3-fr_FR.tar.gz -P /data/www
cd /data/www && tar -xzf wordpress-7.1.3-fr_FR.tar.gz && rm wordpress-7.1.3-fr_FR.tar.gz
    wp config create    --allow-root \
                --dbname=$SQL_DATABASE \
                --dbuser=$SQL_USER \
                --dbpass=$SQL_PASSWORD \
                --dbhost=mariadb:3306 --path='/data/www/wordpress' --allow-root
    wp core install \
                --url=https://gcamara.42.fr \
                --title="Hello World" \
                --admin_user="Administrator" \
                --admin_password=$SQL_ROOT_PASSWORD \
                --admin_email=--allow-root
    wp user create $WP_U_NAME $WP_U_EMAIL \
                --user_pass= $WP_U_PASS\
                --role=author --allow-root

/usr/sbin/php-fpm8.2 -F
