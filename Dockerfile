# Stage 1: Build
FROM maven:3.9.6-eclipse-temurin-17 AS builder

WORKDIR /app
COPY . .

# Package with dependencies
RUN mvn clean package -DskipTests

# Stage 2: Run
FROM eclipse-temurin:17-jdk

WORKDIR /app

# # Copy JAR from builder
COPY --from=builder /app/target/selenium-framework-1.0-SNAPSHOT.jar /app/selenium-tests.jar

# Copy testng.xml to run TestNG tests
COPY testng.xml /app/testng.xml

# Run tests
ENTRYPOINT ["java", "-jar", "selenium-tests.jar", "-testngxml", "testng.xml"]
