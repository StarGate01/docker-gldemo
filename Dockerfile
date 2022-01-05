FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive TZ=Europe/Berlin

RUN apt-get update && \
    apt-get -y install --no-install-recommends \
    bash wget ca-certificates fuse xorg mesa-utils libnss3 libasound2 curl libarchive-tools
    # libnss && \
    # rm -rf /var/lib/apt/lists/*

SHELL ["/bin/bash", "-c"]

ARG UID=1000
ARG GID=1000
RUN groupadd -g "${UID}" contuser && \
    useradd -u "${GID}" -g contuser contuser && \
    mkdir -p /home/contuser/data && mkdir -p /home/contuser/unity && \
    chown -R contuser:contuser /home/contuser && \
    groupadd fuse && \
    usermod -a -G fuse contuser
USER contuser

WORKDIR /home/contuser/unity
RUN wget https://download.unity3d.com/download_unity/6bd9e232123f/UnitySetup-2021.2.7f1 && \
    mv UnitySetup-2021.2.7f1 UnitySetup && \
    chmod a+x UnitySetup

# USER root
# RUN apt-get -y install --no-install-recommends \
    


# USER contuser
# CMD [ "glxinfo -B && glxgears" ]