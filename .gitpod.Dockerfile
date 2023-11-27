FROM gitpod/workspace-firefox

RUN sudo apt-get update && \
    sudo apt-get install -y openbox tigervnc-standalone-server
