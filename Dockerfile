# Step 1: Use an official OpenJDK 19 image
FROM eclipse-temurin:19-jdk

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the project files into the container
COPY . .

# Step 4: Install Maven inside the container (if needed)
RUN apt update && apt install -y maven

# Step 5: Build the Spring Boot application inside the container
RUN mvn clean package -DskipTests

# Step 6: Copy the built JAR file to a known location
RUN cp target/*.jar app.jar

# Step 7: Expose the port the app runs on
EXPOSE 8080

# Step 8: Run the Spring Boot application
CMD ["java", "-jar", "app.jar"]
