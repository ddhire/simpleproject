FROM centos:latest
RUN yum install -y httpd \
zip \
unzip
ADD https://bootstrapmade.com/content/templatefiles/Moderna/Moderna.zip /var/www/html
WORKDIR /var/www/html
RUN unzip Moderna.zip
RUN cp -rvf Moderna/* .
RUN rm -rf Moderna/ Moderna.zip
CMD ["/usr/sbin/httpd", ".D", "FOREGROUND"]
EXPOSE 8080
