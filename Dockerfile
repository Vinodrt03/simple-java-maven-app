FROM maven:3.5.4-jdk-8-alpine as maven
COPY ./pom.xml ./pom.xml
COPY ./src ./src
RUN mvn dependency:go-offline -B
RUN mvn package
FROM openjdk:8u171-jre-alpine
WORKDIR /home/jenkins
COPY --from=maven target/simple-java-maven-app-*.jar ./home/jenkins/simple-java-maven-app.jar
CMD ["java", "-jar", "./home/jenkins/simple-java-maven-app.jar"]
