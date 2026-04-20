#!/bin/bash
# Install multimedia codecs:
sudo dnf -y groupinstall multimedia --with-optional
sudo dnf -y install ffmpeg
sudo dnf -y install x264
sudo dnf -y install x264-devel
sudo dnf -y install SDL2
sudo dnf -y install ffmpeg-devel
# Libraries and codec needed for VFX software
sudo dnf -y install ncurses-compat-libs
sudo dnf -y install gstreamer1-libav
sudo dnf -y install libnsl
sudo dnf -y install vulkan
sudo dnf -y install libglvnd-devel
sudo dnf -y install mesa-libGL
sudo dnf -y install mesa-libGLU
sudo dnf -y install gstreamer1-libav
sudo dnf -y install libnsl
sudo dnf -y install xmessage