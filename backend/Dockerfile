FROM maven:3.8.4-openjdk-17 AS build

COPY pom.xml .
COPY src ./src

RUN mvn clean package

FROM openjdk:17-jdk-slim

WORKDIR /app

COPY --from=build /target/medical-imaging-content-0.0.1-SNAPSHOT.jar ./medical-imaging-content-0.0.1.jar

EXPOSE 8088

ENTRYPOINT ["java","-jar","medical-imaging-content-0.0.1.jar"]