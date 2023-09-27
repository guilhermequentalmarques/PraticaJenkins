FROM maven:3.8.3-openjdk-17 as build

COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:17-jdk-slim

COPY --from=build target/JBS-0.1.jar.original
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "app.jar"]
