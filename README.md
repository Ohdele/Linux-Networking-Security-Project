SECURE INFRASTRUCTURE SOLUTION (Project 2: Networking & Hardening)

Goal: Establish a robust, production-ready server baseline with secure networking and hardened remote access controls.
---
## 1: Static IP Configuration

Objective: Establish Predictable Network Routing

Configure the server's private network interface to use a static IP address, which is essential for consistent firewall application and service management. [View Output in task1-output.txt]
---
## 2: Secure Remote Access (SSH Hardening)

Objective: Restrict Server Access

Harden the OpenSSH Server configuration by changing the default port (to 2222) and disabling insecure login methods (Root Login, Password Authentication).
[View Output in task2-output.txt]
---
## 3: Firewall Configuration

Objective: Implement Secure Access Control

Configure the Uncomplicated Firewall (UFW) to enforce a default-deny policy, explicitly allowing only essential services (SSH on port 2222) to minimize the server's attack surface.
[View Output in task3-firewall-output.txt]
---
## 4: VPN Tunnel (OpenVPN)

Objective: Establish a secure, encrypted tunnel for remote access.

VPN tunnel established successfully between the Server and Client (10.8.0.0/24), validated by successful application traffic.
[View Output in task4-output.txt]
---
## 5: Secure File Access (Samba)

Objective: Configure and validate secure file sharing over the VPN.

The 'project_share' directory was successfully accessed from the VPN Client via the established tunnel.
[View Output in task5-output.txt]
