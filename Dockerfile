FROM ubuntu
RUN apt-get update
RUN apt install apache -y
ADD . /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
