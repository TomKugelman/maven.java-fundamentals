FROM openjdk:8-jdk
RUN mvn install -Dmaven.test.failure.ignore=true
RUN mvn package
COPY . ./usr/src
CMD ["java","-jar","java-fundamentals-1.0.jar"]
