FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
WORKDIR /var/interface
RUN apt update
RUN apt upgrade -y
RUN apt install -y apache2
RUN apt install nano git -y
RUN apt install -y php libapache2-mod-php php-mysql

RUN apt-get install -y certbot python3-certbot-apache apache2

RUN rm -rf /var/www/html
COPY ./data/ .
RUN chmod +x /var/interface/main.sh
RUN cp Iot_Interface.conf /etc/apache2/sites-available/
RUN a2dissite 000-default.conf
#RUN rm /etc/apache/sites-available/000-default.conf
RUN a2ensite Iot_Interface.conf
VOLUME ["/var/www/html"]

# docker run -p 8080:80 -v D:\playground\index.html:/var/www/html jeromelpushparaj/apache2:local

CMD /var/interface/main.sh