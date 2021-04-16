FROM openjdk:17-buster

ARG INSTALLER_VERSION=2827601

RUN apt-get update \
    && apt-get install wget curl -y \
    && mkdir -p /app
WORKDIR /app
RUN wget -q https://github.com/iTXTech/mcl-installer/releases/download/${INSTALLER_VERSION}/mcl-installer-${INSTALLER_VERSION}-linux-amd64 -O mcl \
    && chmod +x mcl


RUN bash -c 'echo -e "N\n\n" | ./mcl'

RUN ./mcl --dry-run
RUN ./mcl --update-package net.mamoe:mirai-api-http --channel stable --type plugin

ADD docker-entrypoint.sh .

ENTRYPOINT ["./docker-entrypoint.sh"]
