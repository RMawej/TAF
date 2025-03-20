#!/bin/bash


ENV_FILE=".docker_config.env"
if [ ! -f "$ENV_FILE" ]; then
    echo "Erreur : Le fichier $ENV_FILE n'existe pas."
    exit 1
fi


docker compose --env-file "$ENV_FILE" up


if [ $? -ne 0 ]; then
    echo "Erreur : Échec du démarrage de Docker Compose."
    exit 1
fi
