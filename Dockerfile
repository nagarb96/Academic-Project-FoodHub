FROM payara/server-full:5.2021.8

# Expose Payara HTTP port
EXPOSE 8080

# Copy WAR to Payara autodeploy folder
COPY target/EcommProj-1.0-SNAPSHOT.war $DEPLOY_DIR
