# Cyber Range Lab - Day 2 Build
Pentest lab built with VirtualBox for learning SOC + Pentesting skills in public.

### What I built
4 virtual machines that can talk to each other on an isolated network:
- **Kali Linux 192.168.56.101** - Attacker machine
- **Metasploitable 2 192.168.56.102** - Vulnerable target 
- **Ubuntu Server 192.168.56.103** - Future Splunk SIEM
- **Windows 10 192.168.56.104** - Corporate endpoint

### Network Design
**Host-Only Network: 192.168.56.0/24**  
Why: Safe isolation. VMs talk to each other but not to internet.  
**NAT on Kali only**  
Why: So Kali can download tools/updates without exposing the whole lab.

### Why This Lab Matters
Real companies have mixed Windows + Linux environments. This lab copies that.  
Building it taught me: IP planning, firewalls, troubleshooting > just running tools.

### Problems I Solved Day 2
1. **IP Chaos**: DHCP gave random IPs. Fixed with static IPs.
2. **One-way ping**: Windows Firewall blocked inbound ping. Fixed with rule.
3. **.vmdk path broken**: Re-linked disk file in VirtualBox.

### How to Recreate This Lab
Follow the step-by-step scripts below. Tested on Windows 11 + VirtualBox 7.x

### Screenshots
![VMs Overview](screenshots/vbox-vms.png)
![Ping Test](screenshots/ping-success.png)

### Next Steps - Day 3
Run `nmap` scans from Kali → Metasploitable to find vulnerabilities.

### Connect
Building in public for 30 days. Follow my LinkedIn for daily updates.

#Cybersecurity #Tsacademy #HomeLab #VirtualBox #Pentesting #BlueTeam
