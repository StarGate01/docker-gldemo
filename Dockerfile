FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive TZ=Europe/Berlin

RUN apt-get update && \
    apt-get -y install --no-install-recommends \
    bash mesa-utils && \
    rm -rf /var/lib/apt/lists/*

CMD [ "bash", "-c",  "glxinfo -B && glxgears" ]