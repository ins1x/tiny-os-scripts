#!/bin/sh
# Blackhole ru zone
echo "address=/ru/0.0.0.0" | sudo tee /etc/NetworkManager/dnsmasq.d/dnsmasq-ru-blackhole.conf && sudo systemctl restart network-manager