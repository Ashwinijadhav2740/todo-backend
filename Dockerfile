# Use an official OpenJDK 19 runtime as a parent image
FROM eclipse-temurin:19-jdk

# Set the working directory inside the container
WORKDIR /app

# Copy the project files into the container
COPY . .

# Install Maven inside the container
RUN apt update && apt install -y maven

# Build the application inside the container using `mvn`
RUN mvn clean package -DskipTests

# Copy the built JAR file into the container
RUN mvn target/*.jar app.jar

# Expose the port the app runs on
EXPOSE 8080

# Run the JAR file
CMD ["java", "-jar", "app.jar"]
