#!/bin/bash

# Retrieve the public IP address using nslookup
public_ip=$(nslookup <your_domain> | awk '/^Address: / { print $2 }' | tail -1)

# Update the NordVPN whitelist with the public IP address
nordvpn whitelist add subnet $public_ip/32