touch /var/interface/dockerexpirience

sed -i "s/short_open_tag =.*/short_open_tag = On/" /etc/php/8.3/apache2/php.ini
 
# Run Certbot to obtain SSL certificate (use --non-interactive to avoid manual input)
# certbot --apache --non-interactive --agree-tos -m jeromal03@gmail.com -d iotinterface.site

cd /var/www/html/htdocs
composer require mongodb/mongodb
# composer require vlucas/phpdotenv

/usr/sbin/apache2ctl -D FOREGROUND