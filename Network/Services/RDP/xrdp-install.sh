#/bin/bash 
# Install xrdp client (Rocky Linux on Gnome desktop)
sudo dnf install xrdp
sudo systemctl enable --now xrdp
# Add firewalld rules
sudo firewall-cmd --zone=public --add-port=3389/tcp --permanent
sudo firewall-cmd --reload