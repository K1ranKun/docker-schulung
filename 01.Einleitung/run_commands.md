###################### GRUNDSTRUKTUR VON DOCKER RUN ######################################################
[starte container] [detatched] [name des containers] [extern-port:container-port] [tag vom dockerimage]
[docker run]       [-d]        [--name webserver]    [-p 8080:80]                 [nginx:alpine]
##########################################################################################################

###################### COPY & PASTE INS TERMINAL #########################################################
docker run -d --name webserver -p 8080:80 nginx:alpine
##########################################################################################################
###################### WEITERE COMMANDS ##################################################################
COMMANDS                                                -> BESCHREIBUNG

docker ps                                               -> liste an laufenden container
docker ps -a                                            -> liste an bestehenden container
docker images                                           -> liste an docker images
docker inspect webserver                                -> liste an metadaten vom container webserver

docker stop webserver                                   -> stoppt den container
docker stop $(docker ps -q)                             -> stopt alle laufenden container
docker start webserver                                  -> startet bestehenden container
docker start $(docker ps -aq --filter "status=exited")  -> startet alle bestehenden container
docker restart webserver                                -> startet container neu
docker rm -f webserver                                  -> loescht ohne warten auf dienste den container
##########################################################################################################
