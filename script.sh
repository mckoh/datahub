#!/bin/bash

# 1. Erstelle ein Verzeichnis für DataHub
mkdir -p datahub-docker && cd datahub-docker

# 2. Lade die offizielle docker-compose Konfiguration herunter
echo "Lade Docker Compose Files von DataHub..."
curl  -L https://raw.githubusercontent.com/datahub-project/datahub/master/docker/quickstart/docker-compose-without-neo4j.quickstart.yml -o docker-compose.yml

# 3. Starte die Container im Hintergrund
echo "Starte DataHub Container..."
docker-compose up -d

echo "-------------------------------------------------------"
echo "DataHub wird gestartet. Das kann 2-5 Minuten dauern."
echo "Frontend: http://localhost:9002"
echo "Username: datahub | Passwort: datahub"
echo "-------------------------------------------------------"
