FROM tomcat:9.0

# Remove default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into ROOT
COPY target/Academic-Project-FoodHub.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
