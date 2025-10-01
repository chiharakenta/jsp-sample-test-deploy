# ビルド用
FROM maven:3.9.9-eclipse-temurin-21 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn package -DskipTests

# 実行用
FROM tomcat:10.1-jdk21
WORKDIR /usr/local/tomcat
COPY --from=build /app/target/myapp.war webapps/ROOT.war

EXPOSE 8080