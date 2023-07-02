FROM centos:7
MAINTAINER RajudevaReddy
RUN yum install epel-release -y &&\
	yum install httpd -y &&\
	yum install zip unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page293/fitapp.zip /opt
WORKDIR /var/www/html/
RUN unzip /opt/fitapp.zip -d /opt 
RUN cp -r /opt/mobile-app-html-template/* /var/www/html/
#RUN rm -rf fitapp.zip mobile-app-html-template
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80 8000

