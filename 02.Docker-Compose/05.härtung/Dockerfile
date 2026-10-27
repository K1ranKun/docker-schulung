FROM alpine:3 AS unpack
ARG WAR_FILE
COPY ./java/${WAR_FILE} /app.war
RUN mkdir /ROOT && unzip -q /app.war -d /ROOT

FROM tomcat:10.1-jdk21-temurin
RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=unpack /ROOT /usr/local/tomcat/webapps/ROOT