FROM jetty:9.4.7-alpine

ENV JOLOKIA_VERSION 1.3.7

RUN wget http://search.maven.org/remotecontent?filepath=org/jolokia/jolokia-war/${JOLOKIA_VERSION}/jolokia-war-${JOLOKIA_VERSION}.war -O /var/lib/jetty/webapps/jolokia.war

CMD ["java","-jar","/usr/local/jetty/start.jar"]

