FROM gitpod/workspace-base
ARG base


# Dazzle does not rebuild a layer until one of its lines are changed. Increase this counter to rebuild this layer.
ENV TRIGGER_REBUILD=1

USER root

# Install Desktop-ENV, tools
RUN install-packages \
    tigervnc-standalone-server openbox libasound2-dev libgtk-3-dev libnss3-dev fonts-noto fonts-noto-cjk libgtk-3-common libasound2 libdbus-glib-1-2

USER gitpod

ENV FF_VER 105.0
ENV FF_DIR /dist

RUN mkdir -p $FF_DIR && cd $FF_DIR && wget -O - https://ftp.mozilla.org/pub/firefox/releases/$FF_VER/linux-x86_64/en-US/firefox-$FF_VER.tar.bz2 | tar -xjf -
ENV PATH $FF_DIR/firefox:$PATH

RUN git clone https://github.com/novnc/noVNC.git
# For Qt WebEngine on docker
ENV QTWEBENGINE_DISABLE_SANDBOX 1

USER gitpod
