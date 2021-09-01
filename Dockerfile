FROM openjdk:8-jdk-alpine
LABEL maintainer="lmn165@github.com"
VOLUME /main-app
ADD build/libs/oracle-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-Dspring.datasource.url=jdbc:oracle:thin:@localhost:1521/xe","-jar","app.jar"]