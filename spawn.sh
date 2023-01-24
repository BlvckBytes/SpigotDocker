#!/bin/bash

REV="$1"
SPIGOT_PORT="$2"
SOCKET_PORT="$3"

if [[ -z "$REV" || -z "$SPIGOT_PORT" || -z "$SOCKET_PORT" ]]; then
  echo "Usage: $0 <rev> <spigot_port> <socket_port>"
  exit 1
fi

docker run -it -d --name spigotc_$REV -e SPIGOT_REV=$REV -e SPIGOT_SOCKET_PORT=$SOCKET_PORT -p $SOCKET_PORT:$SOCKET_PORT -p $SPIGOT_PORT:25565 spigotc
