FROM payara/server-full:5.2021.8

# Remove default apps (optional)
RUN rm -rf $PAYARA_PATH/glassfish/domains/domain1/autodeploy/*

# Copy your WAR file into Payara deploy folder
COPY target/EcommProj-1.0-SNAPSHOT.war $PAYARA_PATH/glassfish/domains/domain1/autodeploy/ROOT.war
