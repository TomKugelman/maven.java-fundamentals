FROM openjdk:8-jdk
RUN nvm package -Dmaven.test.failure.ignore=true
COPY . ./usr/src
CMD ["java","-jar","java-fundamentals-1.0.jar"]
