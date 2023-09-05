FROM php:8.2-fpm

COPY ./install.sh ./install.sh
RUN bash ./install.sh

RUN useradd -r -u 1000 -ms /bin/bash dmp
USER dmp
WORKDIR /home/dmp

RUN echo 'cd /var/www/html' >> ~/.bashrc

EXPOSE 9003