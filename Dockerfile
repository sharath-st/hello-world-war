FROM maven:3.8.2-openjdk-8
RUN mkdir -p /var/test
WORKDIR /var/test
COPY . .
RUN mvn clean package
