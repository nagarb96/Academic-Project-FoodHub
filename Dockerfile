FROM payara/server-full:5.2021.8

EXPOSE 8080

COPY target/EcommProj-1.0-SNAPSHOT.war $DEPLOY_DIR
