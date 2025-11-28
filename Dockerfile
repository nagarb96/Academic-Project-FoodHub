FROM tomcat:9.0

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Deploy your WAR
COPY target/EcommProj-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/

# Rename WAR folder to ROOT (Tomcat auto-extracts WAR)
RUN mv /usr/local/tomcat/webapps/EcommProj-1.0-SNAPSHOT /usr/local/tomcat/webapps/ROOT || true

EXPOSE 8080

CMD ["catalina.sh", "run"]
