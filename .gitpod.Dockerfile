FROM gitpod/workspace-base
USER gitpod
RUN sudo apt-get update -q && \
    sudo apt-get install -yq openbox tigervnc-standalone-server \
    sudo add-apt-repository ppa:mozillateam/ppa \
    sudo apt update \
    sudo apt install firefox-esr
