FROM tomcat:9.0

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR
COPY target/EcommProj-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/

# Manually extract WAR
RUN cd /usr/local/tomcat/webapps/ && \
    jar -xf EcommProj-1.0-SNAPSHOT.war && \
    mv WEB-INF ../ && mv * ../ROOT/ || true

# Rename extracted folder to ROOT
RUN mv /usr/local/tomcat/webapps/EcommProj-1.0-SNAPSHOT /usr/local/tomcat/webapps/ROOT || true

EXPOSE 8080

CMD ["catalina.sh", "run"]
