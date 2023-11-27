FROM gitpod/workspace-base
ARG base


# Dazzle does not rebuild a layer until one of its lines are changed. Increase this counter to rebuild this layer.
ENV TRIGGER_REBUILD=1

USER root

# Install Desktop-ENV, tools
RUN install-packages \
	tigervnc-standalone-server tigervnc-xorg-extension \
	dbus dbus-x11 gnome-keyring xfce4 xfce4-terminal \
	xdg-utils x11-xserver-utils pip 
	

RUN sudo add-apt-repository -y ppa:mozillateam/ppa && \
    sudo apt-get -y update \
    sudo apt-get install -y firefox-esr
USER gitpod
