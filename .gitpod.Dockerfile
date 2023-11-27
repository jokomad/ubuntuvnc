FROM gitpod/workspace-base
USER gitpod
RUN sudo apt-get update -q && \
    sudo apt-get install -yq openbox
