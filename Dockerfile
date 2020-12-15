FROM openjdk:8
COPY . .
WORKDIR /usr/src/
COPY /target/java-fundamentals-1.0.jar ./java-fundamentals-1.0.jarCOPY .
CMD ["java","-jar","java-fundamentals-1.0.jar"]
