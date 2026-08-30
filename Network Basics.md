# 1 Network Basics

# **1.1 Domains**

Getting where you want to go on a network can be surprisingly difficult at first. The variety of naming conventions often leaves newcomers staring blankly. Fortunately, there *is* a method to the apparent chaos.

A home address has a predictable structure—street, apartment, city, state, ZIP code. Computers follow a similar pattern. Their addresses generally take one of two forms:

- **A person’s email address:** user@somewhere.domain  
- **A computer’s name:** somewhere.domain

The **user** portion is usually the account name on the system. The **somewhere.domain** portion identifies the host and the type of organization it belongs to. Common top‑level domains include:

- **com** — commercial organizations (e.g., convex.com)  
- **edu** — educational institutions (e.g., nyu.edu)  
- **gov** — U.S. government sites (e.g., nasa.gov)  
- **mil** — U.S. military sites (e.g., af.mil)  
- **net** — network infrastructure hosts (e.g., near.net)  
- **org** — non‑profit or non‑commercial organizations (e.g., eff.org)

Countries also have their own top‑level domains:

- **au** — Australia  
- **ca** — Canada  
- **fr** — France  
- **uk** — United Kingdom (with subdomains such as ac.uk for academics and co.uk for commercial sites)

The proper term for a site’s domain name is its **Fully Qualified Domain Name** (FQDN). It is usually chosen to clearly identify the organization. For example, **mit.edu** for MIT or **apple.com** for Apple. Occasionally names are misleading—**vt.edu** is Virginia Tech, not a school in Vermont—but such cases are rare.

---

## ⭐ **Bookmark Directory by Domain Class**

### 🏢 **.com — Commercial**
- **Google.com** — Search, cloud, identity  
- **Apple.com** — Hardware, services  
- **Microsoft.com** — Windows, Azure, enterprise  
- **Amazon.com** — Retail, AWS  
- **Meta.com** — Facebook/Instagram parent  
- **Netflix.com** — Streaming  
- **Reddit.com** — Social aggregation  
- **Stackoverflow.com** — Developer Q&A  
- **Cloudflare.com** — DNS, CDN, security  

---

### 🎓 **.edu — Education**
- **mit.edu** — Engineering, CS, research  
- **harvard.edu** — Law, medicine, humanities  
- **stanford.edu** — AI, startups, research  
- **berkeley.edu** — CS, physics, open-source culture  
- **nyu.edu** — Arts, global campuses  
- **cmu.edu** — Robotics, ML  
- **utexas.edu** — Large public research institution  

---

### 🏛️ **.gov — Government**
- **usa.gov** — Federal portal  
- **nasa.gov** — Space, research  
- **whitehouse.gov** — Executive branch  
- **irs.gov** — Taxes  
- **cdc.gov** — Health  
- **fbi.gov** — Federal law enforcement  
- **congress.gov** — Legislative information  

---

### 🎖️ **.mil — Military**
- **af.mil** — Air Force  
- **army.mil** — U.S. Army  
- **navy.mil** — U.S. Navy  
- **marines.mil** — Marine Corps  
- **spaceforce.mil** — Space Force  
- **dod.mil** — Department of Defense  

---

### 🌐 **.net — Network Infrastructure**
Historically: gateways, backbone hosts.  
Modern usage: general-purpose commercial sites.

- **cloudflare.net** — CDN nodes  
- **slideshare.net** — Document sharing  
- **speedtest.net** — Network diagnostics  
- **php.net** — PHP language  
- **sourceforge.net** — Open-source hosting  
- **gnu.org** (org, but historically net-adjacent)  

---

### 🏢 **.org — Nonprofits & Foundations**
- **eff.org** — Electronic Frontier Foundation  
- **wikipedia.org** — Wikimedia Foundation  
- **mozilla.org** — Firefox, open web  
- **archive.org** — Internet Archive  
- **gnu.org** — Free Software Foundation  
- **linuxfoundation.org** — Kernel stewardship  

---

## 🌍 **Country-Code Domains (ccTLDs)**

### 🇦🇺 **.au — Australia**
- **abc.net.au** — National broadcaster  
- **gov.au** — Government  
- **csiro.au** — National science agency  

### 🇨🇦 **.ca — Canada**
- **canada.ca** — Federal portal  
- **cbc.ca** — National broadcaster  
- **uottawa.ca** — University of Ottawa  

### 🇫🇷 **.fr — France**
- **gouv.fr** — Government  
- **inria.fr** — Research institute  
- **sorbonne-universite.fr** — University  

### 🇬🇧 **.uk — United Kingdom**
Subdomains matter:  
- **ac.uk** — Academia  
- **co.uk** — Commercial  

Examples:  
- **ox.ac.uk** — Oxford  
- **bbc.co.uk** — BBC  
- **gov.uk** — Government portal  

---

# **1.2 Internet Numbers**

Every machine on the Internet has a unique address called an **IP address**. Although it is a 32‑bit number, it is usually written as four decimal numbers separated by periods, such as **147.31.254.130**. This format is known as a **dotted quad**.

Early ARPAnet addressing allowed only 256 systems. As the network grew in the early 1980s, the 32‑bit addressing scheme was introduced, enabling millions of possible hosts.

Each part of an IP address (e.g., 192) is an **octet**, representing eight bits. The first two or three octets identify the **subnet**. For example, Wesleyan University uses the subnet **129.133**, allowing addresses like 129.133.10.10 or 129.133.230.19—over 65,000 possible hosts.

IP addresses and domain names are not assigned randomly. Organizations apply to the **Network Information Center (NIC)** for allocation.

---

# **1.3 Resolving Names and Numbers**

Computers can be referenced by either their FQDN or their IP address. Users are not expected to memorize them all.

Instead, the Internet uses a distributed system that maps domain names to IP addresses. Each domain has a **DNS server** responsible for answering queries about hosts within that domain.

For example, when resolving **foosun.bar.com**, the resolver contacts **foovax.bar.com**, the DNS server for bar.com, and requests the IP address for foosun.bar.com. If the host exists, the server returns the correct number. All of this happens automatically behind the scenes.

Users rarely need to remember IP addresses, though frequent use may make some stick in memory. Over time, you’ll also develop a sense for what a domain name *should* look like based on an organization’s name.

## 🔢 **IP Addressing & Network Infrastructure**  

### 🧩 **IPv4 Structure**
- Dotted quad: `147.31.254.130`  
- Octets: 4 × 8 bits  
- Subnet examples: `129.133.x.x`  

### 🧩 **IPv6 Structure**
Modern replacement for IPv4 exhaustion:  
- Example: `2001:0db8:85a3::8a2e:0370:7334`  
- 128-bit addressing  
- Hexadecimal segments  

---

# **1.4 The Networks**

- **Internet**  
  A vast “network of networks.” Regional networks such as SuraNet, PrepNet, and NearNet interconnect using the TCP/IP protocol, enabling real‑time communication.

- **UUCP**  
  A loose federation of systems using the Unix‑to‑Unix Copy Program. Systems connect at scheduled intervals (polling) to exchange queued work. Originally Unix‑based, UUCP later spread to other platforms. Some UUCP traffic now runs over TCP/IP, providing faster hops.

- **BITNET**  
  A network of point‑to‑point links using the NJE protocol. BITNET grew steadily but declined as Internet connectivity became cheaper. Gateways allow communication between BITNET and other networks.

## 🔗 **Network Types**

### 🌐 **Internet**
- TCP/IP  
- Real-time routing  
- Backbone carriers  

### 📡 **UUCP**
- Unix-to-Unix Copy  
- Polling-based  
- Store-and-forward  

### 🖧 **BITNET**
- NJE protocol  
- Point-to-point links  
- Historically academic  

---

# **1.5 The Physical Connection**

Internet links take several physical forms:

- **56k leased lines** — dedicated telephone lines carrying 56 kbps  
- **T1 lines** — 1 Mbps dedicated circuits  
- **T3 lines** — 45 Mbps backbone connections  
- **SLIP connections** — Internet traffic over high‑speed modems

Institutions pay local carriers (e.g., Bell Atlantic for PrepNet) for these connections.

UUCP links typically use modems ranging from 1200 baud to 38.4 kbps. Because UUCP is store‑and‑forward, even inexpensive local calls can move mail across the world. Some UUCP traffic also rides over TCP/IP for improved speed.

BITNET links often use 14.4 kbps modems, with many sites relying on upstream neighbors for connectivity.

## ⚡ **Physical Connections (modernized)**

### 🚀 **High-speed links**
- 56k (historic)  
- T1 (1.544 Mbps)  
- T3 (45 Mbps)  
- Fiber (1–400 Gbps modern)  
- SLIP/PPP (historic modem-based IP)  
