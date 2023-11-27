FROM gitpod/workspace-base
ARG base


# Dazzle does not rebuild a layer until one of its lines are changed. Increase this counter to rebuild this layer.
ENV TRIGGER_REBUILD=1

USER gitpod

# Install Desktop-ENV, tools
#RUN install-packages \
#	tigervnc-standalone-server openbox

RUN sudo apt update -y && apt install -y tigervnc-standalone-server openbox
ENV FF_VER 105.0
ENV FF_DIR /dist
RUN sudo apt update -y && apt upgrade -y && apt install -y libgtk-3-common libasound2 libdbus-glib-1-2
RUN sudo mkdir -p $FF_DIR && cd $FF_DIR && wget -O - https://ftp.mozilla.org/pub/firefox/releases/$FF_VER/linux-x86_64/en-US/firefox-$FF_VER.tar.bz2 | tar -xjf -
ENV PATH $FF_DIR/firefox:$PATH
RUN sudo git clone https://github.com/novnc/noVNC.git
