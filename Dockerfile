FROM ubuntu 
RUN apt update
RUN apt install apache2 -y
COPY . /var/www/html
WORKDIR /var/www/html
ENTRYPOINT apachectl -F FOREGROUND
