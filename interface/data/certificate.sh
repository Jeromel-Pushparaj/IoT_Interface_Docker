#!/bin/bash
certbot -d iotinterface.site -m jeromal03@gmail.com --agree-tos --apache --non-interactive
echo "0 0,12 * * * root /opt/certbot/bin/python -c 'import random; import time; time.sleep(random.random() * 3600)' && certbot renew -q" | tee -a /etc/crontab > /dev/null