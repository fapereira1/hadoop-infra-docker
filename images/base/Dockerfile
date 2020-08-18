FROM ubuntu:20.04

LABEL Description="This is a base image for Hadoop Cluster Nodes" \
      Author="Fabio Pereira <fapereira1@gmail.com>"

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
	build-essential curl git netcat net-tools software-properties-common wget dirmngr gpg-agent && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends openjdk-8-jdk && \
    rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/