FROM java:8-jre
FROM maven

RUN mvn clean package
ADD target/test.jar test.jar
RUN echo "****************Hello Shekhar,I am from dockerfile******************"
ENTRYPOINT ["java", "-jar", "/test.jar"]
# ENTRYPOINT ["java", "-jar", "/worksetupService.jar"]

# start on run

EXPOSE 8121 



