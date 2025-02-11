# Use an official OpenJDK 19 runtime as a parent image
FROM eclipse-temurin:19-jdk

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file into the container
COPY target/*.jar app.jar

# Expose the port the app runs on
EXPOSE 8080

# Run the JAR file
CMD ["java", "-jar", "app.jar"]
