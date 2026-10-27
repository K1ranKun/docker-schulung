#from definiert das basisimage, worauf gebaut werden soll
FROM tomcat:10.1-jdk21-temurin

ARG WAR_FILE

# der wert/name der war_file wird extern definiert 
COPY ./java/${WAR_FILE} /usr/local/tomcat/webapps/ROOT.war

# dient ausschließlich zur dokuemntation
EXPOSE 8080

# der entrypoint fuer den container, was er beim starten immer ausfuehren soll
CMD ["catalina.sh", "run"]