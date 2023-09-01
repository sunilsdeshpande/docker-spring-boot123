# Use a base image with Java 11 and Alpine Linux
FROM adoptopenjdk/openjdk11:alpine-jre

# Install Maven and other required packages
RUN apk update && apk add maven curl

# Create a directory for your application
WORKDIR /app

# Copy your Maven project files into the container
COPY . /app

# Build your Maven project inside the container
RUN mvn clean install

# Your entry point to run the Java application (adjust as needed)
CMD ["java", "-jar", "target/spring-boot-web.jar"]
