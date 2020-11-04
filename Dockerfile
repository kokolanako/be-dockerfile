FROM openjdk:11

ARG JAR_FILE=target/be-1-SNAPSHOT.jar

#RUN mkdir -p /backend

#WORKDIR /backend
EXPOSE 8081
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
