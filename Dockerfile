FROM openjdk:8-jre-alpine
ADD target/jenkins-marathon-mesos-1.0-SNAPSHOT.jar app.jar
EXPOSE 84
ENTRYPOINT ["java","-jar","/app.jar"]