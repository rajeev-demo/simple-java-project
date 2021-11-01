FROM tomcat:7-jdk8-openjdk
MAINTAINER rajeev
ENV a=1234
RUN mkdir /var/demo
ARG WAR_FILE=target/works-with-heroku-1.0.war
copy ${WAR_FILE} $CATALINA_HOME/webapps/application.war
ENTRYPOINT ["catalina.sh", "run"]
