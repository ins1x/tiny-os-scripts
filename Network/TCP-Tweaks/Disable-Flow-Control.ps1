# Disable Flow Control
# Flow Control (IEEE 802.3x) is enabled on network devices to prevent packet loss during congestion by sending "PAUSE" frames to stop traffic temporarily. 
Set-NICProperty "FlowControl" "0"