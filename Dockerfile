FROM maven
WORKDIR /app
ADD . /app
RUN mvn install
EXPOSE 3000
CMD npm start
