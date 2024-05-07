FROM oraclelinux:8.4  AS mavenBuilder 
LABEL name="ashutoshh"
RUN yum install java-11-openjdk java-11-openjdk-devel maven -y \ 
&& mkdir  /spring-webapp
COPY java-springboot /spring-webapp/
WORKDIR /spring-webapp
# to change directory during image build time like cd 
RUN  mvn install  
# mvn install -- build / compile / test -- war file under target directory 
FROM tomcat 
LABEL email="ashutoshh@linux.com"
COPY --from=mavenBuilder /spring-webapp/target/*.war  /usr/local/tomcat/webapps/
EXPOSE 8080
# optional field these days to let DE know about port
# CMD anymore 
