#!/bin/bash
docker run -d -t -i \
        -e VERSION=1.14.4 \
        -e TYPE=FORGE -e FORGEVERSION=28.2.0 \
        -e EULA=TRUE \
        -e MAX_RAM=8G \
        -p 25566:25565 \
        -v /home/mc/docker/mc:/data \
        --restart always \
        --name mc \
        itzg/minecraft-server:latest
