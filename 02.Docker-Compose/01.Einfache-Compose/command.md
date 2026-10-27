###################### ZUERST AUSFUEHREN #################################################################

cd C:\DEV\PROJECTS\SIT\SCHULUNG\02.Docker-Compose\01.Einfache-Compose

########################### DANACH #######################################################################

docker rm -f webserver

##########################################################################################################
###################### GRUNDSTRUKTUR VON DOCKER COMPOSE ##################################################

[lies blaupause] [erstelle / loesche / starte neu] [detatched]
[docker compose] [   up    /  down   /  restart  ] [-d]

##########################################################################################################
###################### COPY & PASTE INS TERMINAL #########################################################

docker compose up -d

##########################################################################################################
###################### WEITERE COMMANDS ##################################################################
COMMAND                                 -> BESCHREIBUNG

docker compose -f ./produkt_x.yaml up   -> falls man die compose anders benannt hat (absolute pfadangabe).

docker compose up db                   -> erstellt/startet nur container db, die in der docker-compose.yaml definiert ist

docker compose down -v                  -> hierbei werden auch die volumes gelöscht

docker volumes ls                       -> listet alle vorhanden volumes auf

docker network ls                       -> listet alle vorhanden netzwerke auf