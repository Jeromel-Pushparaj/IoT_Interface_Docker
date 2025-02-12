touch /var/interface/dockerexpirience

sed -i "s/short_open_tag =.*/short_open_tag = On/" /etc/php/8.3/apache2/php.ini

/usr/sbin/apache2ctl -D FOREGROUND