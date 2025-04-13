FROM openjdk:17-jdk-alpine
WORKDIR /app
COPY target/hellodemo-0.0.1-SNAPSHOT.jar hellodemo.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "hellodemo.jar"]
