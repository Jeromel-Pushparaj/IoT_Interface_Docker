

touch /var/photogram/dockerexpirience

# git clone https://git.selfmade.ninja/jeromal03/first_app.git /var/www/html
# cp /var/photogram/photogramconfig.json /var/www/
sed -i "s/short_open_tag =.*/short_open_tag = On/" /etc/php/8.3/apache2/php.ini
/usr/sbin/apache2ctl -D FOREGROUND