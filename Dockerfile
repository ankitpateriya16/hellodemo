FROM openjdk:21-jdk-slim
WORKDIR /app
COPY target/helloapp-1.0.jar hellodemo.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "hellodemo.jar"]
