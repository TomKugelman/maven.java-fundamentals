FROM openjdk:8
COPY . .
RUN cd /
RUN pwd
COPY ./target/java-fundamentals-1.0.jar ./java-fundamentals-1.0.jar
CMD ["java","-jar","java-fundamentals-1.0.jar"]
