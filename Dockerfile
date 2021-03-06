# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine
#FROM maven:3.6.1-jdk-8-alpine

VOLUME /tmp

#RUN mvn package for the feature

EXPOSE 8080

# The application's jar file
ARG JAR_FILE=target/book-store-1.0-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} book-store.jar

# Run the jar file //try add command to mvn cleam install, create and run -jar file
CMD ["java", "-jar", "book-store.jar"]