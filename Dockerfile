# Use an official Maven image to build the project
FROM maven:3.8.7-openjdk-17 AS build

# Set working directory inside the container
WORKDIR /app

# Copy pom and source files
COPY pom.xml .
COPY src ./src
COPY testng.xml .

# Build the project using Maven
RUN mvn clean package -DskipTests

# ------------------------------------------------------------------

# Use a lightweight Java image to run the test
FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy test files from build stage
COPY --from=build /app/target /app/target

# Copy the testng.xml and compiled classes
COPY testng.xml .

# Set entry point to run tests (adjust JAR name if needed)
ENTRYPOINT ["java", "-cp", "target/classes;target/test-classes;target/dependency/*", "org.testng.TestNG", "testng.xml"]
