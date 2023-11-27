FROM gitpod/workspace-base
ARG base


# Dazzle does not rebuild a layer until one of its lines are changed. Increase this counter to rebuild this layer.
ENV TRIGGER_REBUILD=1

USER root

# Install Desktop-ENV, tools
RUN install-packages \
	tigervnc-standalone-server chromium-browser
	
	


USER gitpod
