# Use an official OpenJDK runtime as a base image
FROM openjdk:17-slim as builder

# Set the working directory in the container
WORKDIR /app

# Copy the application JAR file into the container
COPY build/libs/spring-boot-docker-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the port that your application will run on
EXPOSE 8080

# Define any environment variables if needed
# ENV VAR_NAME value

# Specify the command to run your application
CMD ["java", "-jar", "app.jar"]