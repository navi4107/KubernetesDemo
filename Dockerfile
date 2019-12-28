#FROM openjdk:8-jdk-alpine
#ADD /target/KubernetesDemo-0.0.1-SNAPSHOT.jar app.jar
#EXPOSE 8080
#ENTRYPOINT ["java","-jar","app.jar"]


FROM centos
MAINTAINER avinashnarisetty466@gmail.com

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O https://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.40/bin/apache-tomcat-8.5.40.tar.gz
RUN tar -xvf apache-tomcat-8.5.40.tar.gz
RUN mv apache-tomcat-8.5.40/* /opt/tomcat/.
RUN yum -y install java
RUN java -version

WORKDIR /opt/tomcat/webapps
#RUN curl -O -L https://github.com/AKSarav/SampleWebApp/raw/master/dist/SampleWebApp.war
ADD /target/KubernetesDemo-0.0.1-SNAPSHOT.war avinashapp.war
EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
