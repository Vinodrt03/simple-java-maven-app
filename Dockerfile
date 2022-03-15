FROM maven:3.5.4
WORKDIR /app
ADD . /app
RUN mvn install
EXPOSE 3000
CMD mvn start
