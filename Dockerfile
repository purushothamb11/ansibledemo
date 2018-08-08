FROM ubuntu:16.04
MAINTAINER Docker purushothamb11 <purushothamb11@docker.com>

RUN apt-get update
RUN apt-get install vim
RUN apt-get install -y nginx
RUN echo 'Hi, I am in your container' \
    >/usr/share/nginx/html/index.html

CMD [ "nginx", "-g", "daemon off;" ]

EXPOSE 80
