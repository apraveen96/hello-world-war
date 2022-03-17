FROM tomcat:latest

RUN yum  update -y
#RUN apt-get install zip unzip vim -y
RUN rm -rf /usr/local/tomcat/webapps.dist/ROOT
RUN mv /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/.
COPY target/hello-world-war-1.0.0.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 80
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
