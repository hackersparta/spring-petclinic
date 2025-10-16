# Use Java 21 JDK base image
FROM eclipse-temurin:21-jdk-jammy

# Optional: Add dockerize for waiting on db (if needed)
# COPY dockerize /usr/local/bin/

VOLUME /tmp
COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
EXPOSE 7854
