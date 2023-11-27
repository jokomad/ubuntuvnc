FROM gitpod/workspace-base
USER gitpod
RUN sudo apt-get update -q && \
    sudo apt-get install -yq openbox tigervnc-standalone-server
FROM debian:stable
RUN apt-get update -q && \
    apt-get install -yq firefox-esr
    
