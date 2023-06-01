FROM openjdk:8-jdk-alpine
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
COPY target/my-app.jar app.jar

RUN mkdir destination-dir-for-add
ADD sample.tar.gz /destination-dir-for-add

ENTRYPOINT ["java","-jar","/app.jar"]
