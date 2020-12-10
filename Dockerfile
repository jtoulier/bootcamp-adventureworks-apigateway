FROM openjdk:11-jre
LABEL maintainer="BCP-DEMO-SPRINGBOOT"
ENV spring.application.name apigateway

COPY build/libs/apigateway-*SNAPSHOT.jar /opt/apigateway.jar
ENTRYPOINT ["java", "-Djava.file.encoding=UTF-8", "-jar", "/opt/apigateway.jar"]