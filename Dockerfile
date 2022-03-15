#Base Image
FROM openjdk:8
COPY . /src/java
COPY pom.xml /src/java
WORKDIR /src/java
RUN ["javac", "JavaExample.java"]
ENTRYPOINT ["java", "JavaExample"]
