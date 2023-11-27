FROM gitpod/workspace-full

RUN sudo apt-get update \
 && sudo apt-get install -y \
    openbox \
    firefox-esr \
    tigervnc-standalone-server \
&& sudo rm -rf /var/lib/apt/lists/*
