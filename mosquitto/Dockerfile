FROM ubuntu:14.04

RUN apt-get update && apt-get install -y mosquitto mosquitto-clients
EXPOSE 1883 

CMD mosquitto

ENTRYPOINT /bin/bash 
