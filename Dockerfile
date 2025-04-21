FROM openjdk:21-jdk-alpine
WORKDIR /app
COPY target/helloapp-1.0.jar hellodemo.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "hellodemo.jar"]
