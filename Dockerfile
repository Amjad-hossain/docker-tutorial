FROM openjdk:8-alpine
ARG JAR_FILE=target/userservice-1.0.jar
COPY ${JAR_FILE} /usr/src/userservice/
WORKDIR /usr/src/userservice
EXPOSE 8080
CMD ["java", "-jar", "userservice-1.0.jar", "--spring.config.location=config/application-secret.properties"]
