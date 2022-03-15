FROM maven
Copy pom.xml /usr/local
copy src /usr/local
WORKDIR /usr/local
RUN mvn package
