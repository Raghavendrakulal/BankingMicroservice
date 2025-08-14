FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the generated .jar file from the build context to the container
COPY target/capstone-1.0-SNAPSHOT.jar app.jar

# Command to run the jar file when the container starts
ENTRYPOINT ["java", "-jar", "app.jar"]
