FROM ubuntu
RUN apt-get update
RUN apt install apache2 -y
ADD . /var/www/html/
RUN sed -i 's/80/99/g' /etc/apache2/ports.conf \
    && sed -i 's/:80/:99/g' /etc/apache2/sites-available/000-default.con
ENTRYPOINT apache2ctl -D FOREGROUND
