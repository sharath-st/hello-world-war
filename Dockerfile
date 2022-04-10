FROM maven:3.8.2-openjdk-8 as mavenbuild
RUN mkdir -p /var/test
WORKDIR /var/test
COPY . .
RUN mvn clean package

FROM tomcat: jre8-temurin-focal
RUN mkdir -p /var/lib
WORKDIR /var/test
COPY --from-mavenbuild /var/lib/target/hello-world-war /usr/local/tomcat/webapps
