FROM jetty:9.4.18-alpine

ENV JOLOKIA_VERSION=1.6.2 JOLOKIA_JSR160_PROXY_ENABLED=TRUE
RUN wget http://search.maven.org/remotecontent?filepath=org/jolokia/jolokia-war-unsecured/${JOLOKIA_VERSION}/jolokia-war-unsecured-${JOLOKIA_VERSION}.war -O /var/lib/jetty/webapps/jolokia.war
EXPOSE 8080/tcp

CMD ["java","-jar","/usr/local/jetty/start.jar"]

