# SECURE INFRASTRUCTURE SOLUTION (Project 2: Networking & Hardening)

**Goal:** Establish a robust, production-ready server baseline with secure networking and hardened remote access controls.

---

## I. Task 1: Static IP Configuration

### Objective: Establish Predictable Network Routing

Configure the server's private network interface to use a static IP, which is essential for consistent firewall application and service management.

**Commands Executed:**
1.  `ip a` (Initial check of dynamic IPs)
2.  `sudo nano /etc/netplan/00-installer-config.yaml` (Apply static IP: 192.168.10.10/24)
3.  `sudo netplan apply` (Activate new configuration)
4.  `sudo chmod 600 ...` (Secure the config file permissions)
5.  `ip a` (Final verification)

**Analysis:** The interface `enp0s8` was successfully configured with the static IP `192.168.10.10/24`, resolving the initial DHCP dependency. Configuration file permissions were immediately secured.

[View Output in task1-output.txt]

