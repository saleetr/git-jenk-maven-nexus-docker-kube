FROM openjdk:8-alpine

# Required for starting application up.
RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY target/git-jenk-maven-nexus-docker-kube-*.jar $PROJECT_HOME/spring-boot-mongo.jar

WORKDIR $PROJECT_HOME
EXPOSE 8080
CMD ["java" ,"-jar","./spring-boot-mongo.jar"]
