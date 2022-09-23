FROM ubuntu
ARG DEBIAN_FORNTEND=noninteractive
RUN apt update
COPY .  /var/www/html
RUN apt install apache2 -y
ENTRYPOINT apachectl -D FOREGROUND
