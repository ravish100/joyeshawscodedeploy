FROM openjdk:21-jdk


ENV MAVEN_VERSION 3.5.4
ENV MAVEN_HOME /usr/lib/mvn
ENV PATH $MAVEN_HOME/bin:$PATH
RUN wget http://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz && \
    tar -zxvf apache-maven-$MAVEN_VERSION-bin.tar.gz && \
    rm apache-maven-$MAVEN_VERSION-bin.tar.gz && \
    mv apache-maven-$MAVEN_VERSION /usr/lib/mvn

WORKDIR /workspace/app

COPY pom.xml .
COPY src src
RUN mvn install -DskipTests

RUN echo "$PWD"


#WORKDIR /

COPY target/joyeshspringbootrestapi1-0.0.1-SNAPSHOT.jar app.jar

#EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]
