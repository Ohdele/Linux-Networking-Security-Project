#!/bin/bash
# Project 2 Task 2: SSH Hardening Configuration

echo "--- 1. Making SSH Configuration Backup ---"
sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak

echo "--- 2. Applying Hardening Changes to sshd_config ---"
# Changing SSH port to 2222
sudo sed -i 's/#Port 22/Port 2222/g' /etc/ssh/sshd_config

# Disabling root login
sudo sed -i 's/PermitRootLogin yes/PermitRootLogin no/g' /etc/ssh/sshd_config
# Ensures PermitRootLogin is set to no, even if commented out
sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin no/g' /etc/ssh/sshd_config

# Disabling password authentication (forcing key-based access)
sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config

echo "--- 3. Testing SSH Configuration for Errors ---"
sudo sshd -t

echo "--- 4. Restarting SSH Service to Apply Changes ---"
sudo systemctl restart sshd

echo "--- 5. Verifying SSH Service Status ---"
sudo systemctl status sshd | head -n 3
