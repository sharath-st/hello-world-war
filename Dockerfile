FROM ubuntu:20.04
RUN mkdir -p warfile
RUN chmod -R 777 warfile
WORKDIR warfile
COPY hello-world-war-1.0.0.war
