FROM debian:latest

LABEL maintainer="blvckbytes@gmail.com"

RUN apt update -y && apt upgrade -y
RUN apt install curl python3 python3-pip git -y

ENTRYPOINT git clone https://github.com/BlvckBytes/SpigotContainerSetup.git &&\
           cd SpigotContainerSetup &&\
           python3 -m pip install -r requirements.txt &&\
           python3 main.py $SPIGOT_REV $SPIGOT_SOCKET_PORT
