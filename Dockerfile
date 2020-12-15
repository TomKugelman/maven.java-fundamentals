FROM maven3:alpine
COPY . ./usr/src
RUN cd ./usr/src
RUN pwd
RUN ls
CMD ["java","-jar","java-fundamentals-1.0.jar"]
