# This is a comment line
FROM ubi7/ubi:7.7
LABEL description="Demo Image"
MAINTAINER Chandra Prakash <cprakash@qcsdclabs.com>
RUN yum install -y httpd && \
    yum clean all 
EXPOSE 80 443 
ENV DO180 /home/student 
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D", "FOREGROUND"]
