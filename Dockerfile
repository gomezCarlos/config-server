FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY target/*.jar app.jar
ENV SPRING_APPLICATION_JSON='{"spring":{"cloud":{"config":{"server":{"git":{"uri":"https://github.com/gomezCarlos/config-repo.git", "clone-on-start": true}}}}}}'
#ENTRYPOINT ["java","-jar","/app.jar"]
ENTRYPOINT ["java"]
CMD ["-jar", "/app.jar"]
EXPOSE 8888
