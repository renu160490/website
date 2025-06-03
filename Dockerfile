FROM ubuntu 
RUN apt update
RUN apt install apache2 -y
COPY . /var/www/html
WORKDIR /var/www/html
EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
