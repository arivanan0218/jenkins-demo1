# Use a base image with Java 17
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Add the packaged JAR file to the container from the host
ADD target/jenkins-docker.jar /app/app.jar

# Expose the port that the application will run on
EXPOSE 8080

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar", "/jenkins-docker.jar"]
