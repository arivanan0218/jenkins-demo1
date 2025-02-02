# Use a base image with Java 17
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged JAR file into the container
COPY target/*.jar devops-integration.jar

# Expose the port that the application will run on
#EXPOSE 8080
EXPOSE 9090

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "devops-integration.jar"]
