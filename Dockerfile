FROM Java
MAINTAINER zav

RUN yum install -y wget

RUN cd /


RUN wget http://apache.stu.edu.tw/tomcat/tomcat-7/v7.0.104/bin/apache-tomcat-7.0.104.tar.gz
RUN tar zxvf apache-tomcat-7.0.104.tar.gz

ENV JAVA_HOME=/jdk1.8.0_152
ENV PATH=$PATH:/jdk1.8.0_152/bin
CMD ["/apache-tomcat-7.0.104/bin/catalina.sh", "run

EXPOSE 8080
