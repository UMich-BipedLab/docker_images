FROM tensorflow/tensorflow:1.12.0-gpu
# e.g. FROM osrf/ros:kinetic-desktop-full

# author
MAINTAINER Ray Zhang

LABEL version="0.6"
LABEL description="Melodic ROS Semantic mapping docker file"

# optional, if the default user is not "root", you might need to switch to root here and at the end of the script to the original user again.
# e.g.
# USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
        pkg-config \
        mesa-utils \
        libxau-dev \
        libxdmcp-dev \
        libxcb1-dev \
        libxext-dev \
        libx11-dev \
        sudo \ 
        git \
        tmux \
        wget \
        curl \
        cmake \
        vim \ 
        build-essential \
        unzip \
        autoconf \
        autogen \
        automake \
        libtool \
        mlocate \
        zlib1g-dev \
        libopenblas-dev \
        libqt4-dev \
        libflann-dev \
         libusb-1.0-0-dev \
         libgtest-dev \
         pkg-config \
        emacs && \
    rm -rf /var/lib/apt/lists/*

#RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

#RUN apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

#RUN apt-get update

#RUN apt-get install -y --no-install-recommends ros-melodic-desktop-full

# nvidia-container-runtime
ENV NVIDIA_VISIBLE_DEVICES \
    ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES \
    ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics

# USER original_user
