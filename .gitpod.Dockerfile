FROM gitpod/workspace-base
ARG base


# Dazzle does not rebuild a layer until one of its lines are changed. Increase this counter to rebuild this layer.
ENV TRIGGER_REBUILD=1

USER root

# Install Desktop-ENV, tools
RUN install-packages \
	tigervnc-standalone-server openbox


	


USER gitpod
RUN apt-get update && apt-get install -yq \
    git \
    git-lfs \
    sudo \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/*

FROM debian:stable
RUN apt-get update
RUN apt-get install -y \
       firefox-esr
