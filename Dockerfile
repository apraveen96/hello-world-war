FROM tomcat:latest

RUN apt-get update -y
#RUN apt-get install zip unzip vim -y
RUN rm -rf /usr/local/tomcat/webapps.dist/ROOT
RUN mv /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/.
#RUN sed -i 's/Connector port="8080"/Connector port="80/g' /usr/local/tomcat/conf/server.xml
COPY target/hello-world-war-1.0.0.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 80
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
