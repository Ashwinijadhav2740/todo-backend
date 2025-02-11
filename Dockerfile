# Use an official OpenJDK 19 image
FROM eclipse-temurin:19-jdk

# Set the working directory inside the container
WORKDIR /app

# Copy the prebuilt JAR into the container
COPY target/todobackend.jar app.jar

# Expose the port the app runs on
EXPOSE 8080

# Run the Spring Boot application
CMD ["java", "-jar", "app.jar"]
