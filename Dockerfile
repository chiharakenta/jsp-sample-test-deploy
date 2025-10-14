# ステージ1: ビルド
FROM maven:3.9-eclipse-temurin-21 AS builder
WORKDIR /build
## pom.xmlを先にコピー(依存関係キャッシュ)
COPY pom.xml .
RUN mvn dependency:go-offline
## ソースコードをコピーしてビルド
COPY src ./src
RUN mvn clean package

# ステージ2: 実行
FROM tomcat:latest
## ビルドステージからwarファイルをコピー
COPY --from=builder /build/target/my-app.war /usr/local/tomcat/webapps/ROOT.war
## Tomcatのポートを8080から10000に変更
RUN sed -i 's/port="8080"/port="10000"/' /usr/local/tomcat/conf/server.xml
EXPOSE 10000