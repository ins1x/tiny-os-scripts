#!/bin/bash
# install VLC and Mplayer and their support elements from VideoLAN repository
curl https://download.videolan.org/pub/debian/videolan-apt.asc | sudo apt-key add -
echo "deb https://download.videolan.org/pub/debian/stable ./" | sudo tee /etc/apt/sources.list.d/libdvdcss.list
sudo apt-get update
sudo apt-get install vlc vlc-data browser-plugin-vlc mplayer2