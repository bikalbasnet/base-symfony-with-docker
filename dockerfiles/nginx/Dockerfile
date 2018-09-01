FROM nginx

RUN rm /etc/nginx/conf.d/*

ADD ./conf/nginx.conf /etc/nginx/nginx.conf
ADD ./conf/sites /etc/nginx/conf.d/

WORKDIR /code
