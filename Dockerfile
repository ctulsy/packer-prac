# Base Image
FROM openjdk:8

# Create DIR
RUN mkdir -p /usr/src/myapp

# COPY APPLICTAION COde
COPY target/sample-prac-1.0.jar    /usr/src/myapp

# Setup Working DIR
WORKDIR /usr/src/myapp

# Start the Bot Service
CMD ["java", "-jar", "sample-prac-1.0.BUILD-SNAPSHOT.jar"]
