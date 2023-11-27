FROM gitpod/workspace-base
USER gitpod
RUN sudo apt-get update -q && \
    sudo apt-get install -yq openbox tigervnc-standalone-server
FROM debian:stable
RUN apt-get update
RUN apt-get install -y \
       firefox-esr
    
