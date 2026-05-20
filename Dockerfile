# Stage 1: Build the WAR file using Maven
FROM eclipse-temurin:17-jdk-jammy AS build

# Install Maven
RUN apt-get update && apt-get install -y maven

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven pom.xml and source code
COPY pom.xml .
COPY src ./src

# Build the WAR file using Maven
RUN mvn package -DskipTests

# Stage 2: Create the final image with Tomcat
FROM tomcat:10.1-jdk17-temurin

# Remove existing webapps (optional, but good for clean deployments)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file from the build stage into Tomcat's webapps directory
COPY --from=build /app/target/spring-docker-app.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080

# Command to run Tomcat when the container starts
CMD ["catalina.sh", "run"]