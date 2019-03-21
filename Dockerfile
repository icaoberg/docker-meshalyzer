FROM ubuntu:18.04

###############################################################################################
MAINTAINER Ivan E. Cao-Berg <icaoberg@andrew.cmu.edu>
LABEL Description="Ubuntu 18.04 +  meshalyzer"
LABEL Vendor="Murphy Lab in the Computational Biology Department at Carnegie Mellon University"
LABEL Web="http://www.cellorganizer.org"
###############################################################################################

###############################################################################################
# UPDATE OS AND INSTALL TOOLS
USER root
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y build-essential git unzip wget curl
RUN apt-get upgrade -y
###############################################################################################

###############################################################################################
# CONFIGURE ENVIRONMENT
ENV DEBIAN_FRONTEND noninteractive
ENV SHELL /bin/bash
ENV USERNAME murphylab
ENV UID 1000
RUN useradd -m -s /bin/bash -N -u $UID $USERNAME
RUN if [ ! -d /home/$USERNAME/ ]; then mkdir /home/$USERNAME/; fi
###############################################################################################

###############################################################################################
# INSTALL MESHALYZER
USER root
RUN echo "Downloading and Installing Meshalyzer"
RUN mkdir /opt/meshalyzer
COPY mesh_tools/meshalyzer /opt/meshalyzer/
RUN cd /opt/meshalyzer && \
        make && \
	mkdir /opt/meshalyzer/bin && \
        mv /opt/meshalyzer/meshalyzer /opt/meshalyzer/bin/
ENV PATH="/opt/meshalyzer/bin:${PATH}"
USER $USERNAME
WORKDIR /home/$USERNAME
###############################################################################################
