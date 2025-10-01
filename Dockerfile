# Tomcat 公式イメージを使用
FROM tomcat:10.1-jdk21

# WAR を ROOT.war にしてコピー
COPY target/myapp.war /usr/local/tomcat/webapps/ROOT.war

# ポートを公開（Renderなどクラウド環境向け）
EXPOSE 8080
