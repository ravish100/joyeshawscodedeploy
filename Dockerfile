FROM openjdk:21-jdk

WORKDIR /

COPY target/joyeshspringbootrestapi1-0.0.1-SNAPSHOT.jar app.jar

#EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]