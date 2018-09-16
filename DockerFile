From tomcat:8.0

MAINTAINER ENGY mavenishere@gmail.com

ADD ./webapp/target/*.war /usr/local/tomcat/webapps

EXPOSE 8080

CMD [ "catalina.sh", "run"]