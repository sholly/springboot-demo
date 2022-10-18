FROM openjdk:17
RUN pwd && \
    mkdir -p /deployments/config &&  \
    chown -R 1001:0 /deployments/ && \
    chmod -R 775 /deployments/ && \
    ls -lR .
ADD target/springboot-demo.jar /deployments/springboot-demo.jar
WORKDIR /deployments
USER 1001
EXPOSE 8080
ENTRYPOINT ["java","-jar", "/deployments/springboot-demo.jar"]

