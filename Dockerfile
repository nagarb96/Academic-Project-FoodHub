FROM payara/micro:5.2021.8

COPY target/EcommProj-1.0-SNAPSHOT.war /opt/payara/deployments/

EXPOSE 8080

CMD ["--port", "8080", "--deploy", "/opt/payara/deployments/EcommProj-1.0-SNAPSHOT.war"]
