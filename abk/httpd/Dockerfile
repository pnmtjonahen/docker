FROM httpd:2.4
MAINTAINER Philippe Tjon-A-Hen (philippe@tjonahen.nl)

COPY ./abk-httpd.conf /usr/local/apache2/conf/abk-httpd.conf
RUN cat /usr/local/apache2/conf/abk-httpd.conf >> /usr/local/apache2/conf/httpd.conf
ENV PORT 80
EXPOSE 80

