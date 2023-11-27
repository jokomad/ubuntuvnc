FROM amanral/ubuntu-firefox

RUN sudo apt-get update && \
    sudo apt-get install -y openbox tigervnc-standalone-server
