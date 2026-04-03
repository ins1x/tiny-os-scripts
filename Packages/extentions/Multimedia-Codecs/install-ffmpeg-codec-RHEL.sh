#!/bin/bash
# Install multimedia codecs
sudo dnf -y group install multimedia
sudo dnf -y install ffmpeg ffmpeg-libs ffmpeg-devel mpv