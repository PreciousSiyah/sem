
# Use a newer JDK that matches your local build
FROM openjdk:21

# Set the working directory
WORKDIR /app

# Copy the built JAR file into the image
COPY target/Precious-1.0-SNAPSHOT.jar app.jar

# Run the application
CMD ["java", "-jar", "app.jar"]
