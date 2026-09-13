# ENGINEER vs ENGINEER
SYSTEM - NETWORK

```
SYSTEM ENGINEER                          NETWORK ENGINEER
(Systems • Servers • OS)                 (Connectivity • Routing • Security)
```

```
FOCUS                                    FOCUS
OS, hardware, services, data             Packets, paths, access, security
```

```
HANDLES                                  HANDLES
Windows / Linux servers                  LAN / WAN / Wi-Fi
Active Directory (AD, GPO)               Routers & switches
Applications & OS                        Firewalls & VPN
Storage & backups                        IP addressing & DNS
```

```
TROUBLESHOOTING                          TROUBLESHOOTING
PC slow / freezing                       No internet access
App crash (Outlook, apps)                Slow network
BSOD & boot issues                       DNS / IP issues
Disk / service failures                  Packet loss
```

```
COMMANDS                                 COMMANDS
taskmgr                                  ping
services.msc                             ipconfig /all
cleanmgr                                 ipconfig /release /renew
sc config                                ipconfig /flushdns
```

```
FUNDAMENTALS                             FUNDAMENTALS
OS types: Windows, Linux, macOS          OSI layers 1-4 (physical to transport)
Kernel, processes, services              IPv4/IPv6, subnet mask, gateway
NTFS/ext4, RAID, snapshots               DNS A/AAAA/CNAME, DHCP lease
AD objects: users, groups, OU, GPO       NAT, VLAN, ACL, routing table
CPU, RAM, disk I/O, event logs           TCP vs UDP, ports, MTU, latency
```

WORK TOGETHER
- Systems run the services.
- Networks deliver the access.
- One goal: reliable, secure, high-performing IT.
- Better together: stronger systems + stronger network = stronger business.

## **System Engineer**

### Availability  

$$
A = \frac{\mathrm{MTBF}}{\mathrm{MTBF}+\mathrm{MTTR}}
$$

$\mathrm{MTBF}$: mean time between failures  

$\mathrm{MTTR}$: mean time to repair  

### Little’s law (jobs in a system)  

$$
L=\lambda W
$$

$L$: average number of jobs  

$\lambda$: arrival rate  

$W$: average time in system  

### CPU utilization  

$$
U_{\mathrm{cpu}}=1-P_0
$$

or over an interval  

$$
U_{\mathrm{cpu}}=\frac{T_{\mathrm{busy}}}{T_{\mathrm{busy}}+T_{\mathrm{idle}}}
$$

### Disk throughput  

$$
\mathrm{Throughput}=\mathrm{IOPS}\times\mathrm{BlockSize}
$$

### RAID-5 usable capacity  

$$
C_{\mathrm{usable}}=(N-1)\,C_{\mathrm{disk}}
$$

$N$: number of disks  

### Amdahl’s law (speedup with parallel fraction $p$)  

$$
S=\frac{1}{(1-p)+p/n}
$$

$n$: number of processors  

---

## **Network Engineer**

### Transmission delay  

$$
T_{\mathrm{tx}}=\frac{L}{R}
$$

$L$: packet length (bits)  

$R$: link rate (bits/s)  

### Propagation delay  

$$
T_{\mathrm{prop}}=\frac{d}{v}
$$

$d$: distance  

$v$: propagation speed (often $\approx 2\times10^8\,\mathrm{m/s}$ in fiber)  

### One-way latency (simple model)  

$$
T=T_{\mathrm{prop}}+T_{\mathrm{tx}}+T_{\mathrm{queue}}+T_{\mathrm{proc}}
$$

### Bandwidth-delay product  

$$
\mathrm{BDP}=R\times\mathrm{RTT}
$$

$\mathrm{RTT}$: round-trip time  

### Link utilization  

$$
U=\frac{\lambda L}{R}
$$

$\lambda$: packet arrival rate  

### Shannon capacity  

$$
C=B\log_2(1+\mathrm{SNR})
$$

$B$: bandwidth (Hz)  

$\mathrm{SNR}$: signal-to-noise ratio  

### Usable IPv4 hosts in a subnet  

$$
N_{\mathrm{hosts}}=2^{h}-2
$$

$h=32-p$, $p$: prefix length (CIDR)  

### Number of subnets from borrowed bits  

$$
N_{\mathrm{subnets}}=2^{b}
$$

$b$: borrowed host bits  

### Approximate goodput with loss  

$$
G\approx R\,(1-p_{\mathrm{loss}})
$$

$p_{\mathrm{loss}}$: packet-loss probability  

### M/M/1 mean queue delay  

$$
W_q=\frac{\lambda}{\mu(\mu-\lambda)}\quad(\lambda<\mu)
$$

$\mu$: service rate  

$\rho=\lambda/\mu$: utilization
