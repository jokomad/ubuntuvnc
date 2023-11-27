FROM gitpod/workspace-full-vnc

RUN sudo apt-get update && \
    sudo apt-get install -y openbox firefox-esr tigervnc-standalone-server
