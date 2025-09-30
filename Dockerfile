
FROM openjdk:latest
COPY target/sem-0.1.0.3-jar-with-dependencies.jar app.jar

WORKDIR /tmp
ENTRYPOINT ["java", "-jar", "/app.jar"]
