#pull base image
FROM openjdk:8-jdk-alpine

LABEL maintainer="vaibhav@payr.np"

RUN apk update && apk add maven
COPY . /
RUN ls

RUN mvn clean install

#expose port 8080
EXPOSE 8080


#default command
CMD java -jar target/hello-world-0.1.0.jar


