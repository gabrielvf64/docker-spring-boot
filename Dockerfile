# A simple linux distro with openjdk8
FROM openjdk:8-jdk-alpine

# Changing the working directory
WORKDIR /opt/app

# Variable with the snapshot name value of the project
ARG JAR_FILE=target/*.jar

# Renaming the jar file name to app.jar
COPY ${JAR_FILE} app.jar

# Command to run the app separeted by strings
ENTRYPOINT ["java","-jar","app.jar"]

# Docker basics

# Build command
# sudo docker build -t name:tag .
# Ex: sudo docker build -t spring-boot:1.0 .

# Run command
# Ex: sudo docker run -d -p 8080:8080 -t spring-boot:1.0

# List all containers
# docker ps

# Stop a container by id
# Ex: docker stop 3e36a2c0c241