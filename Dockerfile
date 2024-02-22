FROM maven:3.8.5-openjdk-17 AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY . .
RUN mvn package
FROM openjdk:17
WORKDIR /app
COPY --from=build /app/target/demo-0.0.1-SNAPSHOT.jar .
CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]