# Using following Base image because it already has maven and java 21 installed
FROM maven:3.9.6-amazoncorretto-21

WORKDIR /workspace/app
#copy pom and source code from local system to /workspace/app in docker container
COPY pom.xml .
COPY src src
#build spring boot project
RUN mvn install -DskipTests

# defining entrypoint for when docker run will be invoked
ENTRYPOINT ["java","-jar","/workspace/app/target/joyeshspringbootrestapi1-0.0.1-SNAPSHOT.jar"]
