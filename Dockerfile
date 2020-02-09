FROM centos:centos7
LABEL MAINTAINER KazuhikoTsuji 
RUN yum install -y httpd && \
    yum upgrade -y && \
    yum clean all
ADD index.html /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/httpd", "-DFOREGROUND"]