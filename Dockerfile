FROM tomcat

MAINTAINER richard

RUN apt-get update && apt-get -y upgrade

WORKDIR /usr/local/tomcat

ADD tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
Add context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml

EXPOSE 8085
