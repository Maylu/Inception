#!/bin/bash

set -e

if [ -n "$SQL_PASSWORD_FILE" ] && [ -f "$SQL_PASSWORD_FILE" ]; then
    SQL_PASSWORD=$(cat "$SQL_PASSWORD_FILE")
    export SQL_PASSWORD
fi

if [ -n "$SQL_ROOT_PASSWORD_FILE" ] && [ -f "$SQL_ROOT_PASSWORD_FILE" ]; then
    SQL_ROOT_PASSWORD=$(cat "$SQL_ROOT_PASSWORD_FILE")
    export SQL_ROOT_PASSWORD
fi

service mariadb start

mariadb -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}'"
mariadb -e "CREATE DATABASE IF NOT EXISTS ${SQL_DATABASE}"
mariadb -e "CREATE USER IF NOT EXISTS '${SQL_USER}'@'%' IDENTIFIED BY '${SQL_PASSWORD}'"
mariadb -e "GRANT ALL PRIVILEGES ON ${SQL_DATABASE}.* TO '${SQL_USER}'@'%' IDENTIFIED BY '${SQL_PASSWORD}'"
mariadb -e  "FLUSH PRIVILEGES;"
mariadbadmin -u root -p${SQL_ROOT_PASSWORD} shutdown
exec mariadbd_safe