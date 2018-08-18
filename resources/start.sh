#!/bin/sh

chown -Rf www-data:www-data /var/www
exec /usr/bin/supervisord -n -c /etc/supervisord.conf
