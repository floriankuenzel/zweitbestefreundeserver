#!/bin/bash
docker run -d \
        -e VERSION=1.14.4 \
        -e TYPE=FORGE -e FORGEVERSION=28.2.6 \
        -e EULA=TRUE \
        -e MAX_RAM=8G \
        -p 25565:25565 \
        -v /home/mc/docker/mc:/data \
        --noconsole \
        --restart always \
        --name mc \
        itzg/minecraft-server:latest
