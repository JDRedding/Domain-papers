# Telnet 

One of the earliest and most influential remote‑access protocols in networking. This description captures its original appeal: it let someone sitting at one machine *become* a terminal on another machine, across the street or across the country. The deeper picture is even more interesting — and it explains both Telnet’s historical importance and why it’s mostly obsolete today.

---

## What Telnet actually is  
Telnet is a **client–server protocol** that provides **bidirectional, interactive text communication** over TCP, typically on port 23. When you connect, your keyboard becomes the keyboard of the remote machine, and every character you type is sent across the network. The key abstraction is the **Network Virtual Terminal (NVT)** — a standardized fictional terminal that both sides pretend to use. This solved the early ARPANET problem where every manufacturer had incompatible terminal codes.

---

## Why Telnet mattered  
- **First remote-access protocol on ARPANET (1969)** — the first “login” across a network happened via early Telnet.   
- **Interoperability breakthrough** — it let DEC, IBM, and other machines talk without custom hardware.  
- **Foundation for later protocols** — many BBSes, library systems, and text-based games used Telnet. 

Compared to dial-up modems, Telnet was dramatically faster and not limited by analog line quality. Once TCP/IP became standard, Telnet connections were effectively error-free relative to noisy phone lines.

---

## Why Telnet declined  
Telnet sends **everything in plaintext** — usernames, passwords, commands, output. Anyone who can see the traffic can read it. 

Because of this, most systems disabled Telnet and replaced it with **SSH**, which encrypts all traffic.   

---

## Telnet vs. modems

- Modems were limited by analog line noise  
- Long-distance calls were expensive  
- Throughput topped out at 56 kbps  
- Error correction depended on modem hardware  

Telnet, by contrast:

- Ran over digital networks  
- Was not limited by analog noise  
- Provided reliable, packet-based communication  
- Allowed multiple simultaneous sessions  
- Was dramatically faster than dial-up  

This is why, once the Internet became widely accessible, Telnet replaced modem-based remote access almost everywhere.

---

- Telnet sends all data **in plaintext**, including passwords.  
- Telnet is disabled by default on most secure systems.  
- Use Telnet today primarily for **testing**, **debugging**, or interacting with **legacy devices**.

---

## 1 Using Telnet

Telnet is an older Internet protocol used to open an interactive text session with a remote machine. While modern systems typically use SSH instead, Telnet still appears in legacy environments, embedded devices, and debugging workflows.

Most operating systems that still ship a Telnet client use the command:

```
telnet hostname
```

For example, if your system’s hostname were `wubba.cs.widener.edu`, you would run:

```
telnet wubba.cs.widener.edu
```

A typical connection banner looks like:

```
Trying 147.31.254.999...
Connected to wubba.cs.widener.edu.
Escape character is '^]'.
```

The **escape character** (often `Ctrl+]`) switches you back to the Telnet client’s local command prompt. From there, you can issue commands such as:

```
telnet> close
```

to terminate the session. Different Telnet clients may use different escape keys or offer additional commands, so check your local documentation if needed.

---

### 1.1 Telnet Ports

By default, Telnet connects to **TCP port 23**, but you can specify any port manually. This is useful for:

- Accessing services that expose a text-based interface  
- Testing whether a TCP port is open  
- Debugging custom servers  

To connect to a specific port:

```
telnet hostname port
```

For example, to reach a service running on port 3000 at the University of Michigan:

```
telnet martini.eecs.umich.edu 3000
```

Many legacy systems, library catalogs, and diagnostic services historically used this pattern. Modern practice often replaces Telnet with tools like `nc` (netcat) or `ssh`, but the usage remains identical.

---

Here is a **fully modernized rewrite** of your Section 2, keeping the structure and intent of the original but updating the language, context, and expectations for today’s Internet environment. I’ve preserved the historical flavor while making it accurate for contemporary readers.

---

### 2 Publicly Accessible Libraries

University and research libraries were among the first institutions to move from paper card catalogs to computerized catalog systems. These systems made it possible for students and researchers to quickly search holdings, check availability, and access up‑to‑date bibliographic information. As networking evolved—from campus LANs to dial‑up access, and eventually to the global Internet—library catalogs became accessible far beyond the physical campus.

Today, most academic libraries provide online public access catalogs (OPACs) through web interfaces, APIs, or federated search systems. Many also participate in shared catalog networks, allowing users to search holdings across multiple institutions from a single interface. Although the technology has changed, the core idea remains the same: anyone, anywhere, can explore the collections of libraries around the world.

Historically, numerous universities made their catalogs available via Telnet or similar text‑based interfaces. Institutions such as Boston University, the Colorado Alliance of Research Libraries (CARL), and King’s College London were early adopters. While most of these systems have since migrated to web‑based platforms, the tradition of open access continues.

Because the number of publicly accessible catalogs is large—and constantly changing—static lists quickly become outdated. Instead, several curated directories were created to track Internet‑accessible library systems. These directories were distributed via email, anonymous FTP, and early Internet guides such as the *Internet Resource Guide (IRG)*.

One of the most widely referenced compilations was maintained by Art St. George and Ron Larsen, often called **the St. George Directory**. Originally focused on library catalogs, it expanded to include campus‑wide information systems and even non‑Internet bulletin board systems. Entries were grouped into categories such as free catalogs, fee‑based catalogs, and international catalogs, and further organized by state, province, or country. Dial‑up access information was also included. The directory was available via anonymous FTP from `nic.cerf.net` in the `cerfnet/cerfnet_info/library_catalog` directory, with the file `internet-catalogs` updated periodically.

Another resource was compiled by Billy Barron, Systems Manager at the University of North Texas. His directory complemented the St. George guide by providing a standardized entry format listing each system’s Internet address, login instructions, vendor information, and logoff procedures. It was available via anonymous FTP from `vaxb.acs.unt.edu` in the `library` subdirectory as `libraries.txt`.

For announcements of newly accessible library systems and discussion of related topics, the Usenet newsgroup **comp.internet.library** served as a community hub.

---

Here’s a **modernized, historically accurate rewrite** of your sections on the Cleveland Freenet, Knowbot, and the PSI White Pages. I’ve kept the original structure and intent, but updated the language, clarified the historical context, and made it readable for a contemporary audience. Guided Links are included where natural.

---

## 3 The Cleveland Freenet

Freenets were early community‑driven, open‑access computing systems designed to give the public free electronic communication, information services, and a sense of digital “citizenship.” One of the most influential examples was the **Cleveland Freenet**, operated by Case Western Reserve University (CWRU). It became a model for what advocates hoped would grow into a nationwide public telecomputing network.

Anyone could register for an account at no cost. In the Freenet era, registration typically involved connecting via Telnet to one of several hosts:

```
freenet-in-a.cwru.edu
freenet-in-b.cwru.edu
freenet-in-c.cwru.edu
```

Once connected, users selected the guest‑access option, then chose **Apply for an account** from the menu. Registration required filling out a form and mailing it via the U.S. Postal Service; after processing, the system issued a login ID and password.

The Cleveland Freenet offered multi‑user chat, email, Usenet news, community forums, and a wide range of local information services. Although Freenets have largely disappeared—replaced by the modern web, social platforms, and community portals—they were a foundational experiment in public digital access.

---

## 4 Directories

Several systems were created to help the Internet community locate information about people, organizations, and research resources. These ranged from academic directories to experimental “white pages” services and early attempts at unified identity lookup. While most have been superseded by modern identity systems, they played an important role in the early Internet’s growth.

---

### 4.1 Knowbot

**Knowbot** was an early “meta‑directory” service designed to unify multiple email‑address registries behind a single interface. Instead of querying each directory separately, Knowbot aggregated data from:

- The NIC WHOIS database  
- The PSI White Pages Pilot Project  
- The NYSERNET X.500 directory  
- MCI Mail  

Knowbot provided a single point of access to these otherwise independent systems. Users connected via Telnet:

```
telnet nri.reston.va.us 185
```

Knowbot was an early example of federated directory services—an idea that later evolved into LDAP, global address books, and modern identity systems. You can explore more through WHOIS history or X.500 directory services.

---

### 4.2 White Pages

PSI operated one of the first Internet “white pages” directories, listing individuals along with their organization and email address (when provided). Access was via Telnet:

```
telnet wp.psi.net
```

Users logged in with the username:

```
fred
```

The PSI White Pages Project also experimented with remote graphical interfaces, including an X Window System front‑end—an early attempt at making directory services more user‑friendly.

---

## 5 Databases

Not all databases on the Internet require payment or commercial subscriptions. Alongside large commercial services (see Section 7.2 *Commercial Databases*), many research‑driven or publicly funded databases have historically been freely accessible. New systems appeared frequently, each with its own focus, software platform, and access method.

Because these databases vary widely in purpose and implementation, the best way to learn more about any specific system is to contact the administrators responsible for it. Your local library’s reference staff can also help identify both traditional resources and Internet‑accessible databases—many libraries now integrate online research tools directly into their services.

---

### 5.1 Colorado Alliance of Research Libraries (CARL)

The **Colorado Alliance of Research Libraries (CARL)**, working with CARL Systems Inc., operated one of the earliest public-access library catalog networks. CARL provided:

- Government periodical indexes  
- Book reviews  
- Current article indices  
- Access to catalogs at other participating libraries  

Members also had access to additional services such as an online encyclopedia.

Historically, CARL was reachable via Telnet:

```
telnet pac.carl.org
```

For more information, users could email:

```
help@carl.org
```

CARL later evolved into modern web‑based systems and shared catalog platforms.

---

### 5.2 PENpages

**PENpages**, operated by Pennsylvania State University, was an agricultural information database drawing content from:

- The Pennsylvania Department of Agriculture  
- Rutgers University  
- Penn State  
- Other regional contributors  

Its menu-driven interface provided information on livestock prices, crop conditions, weather, health topics, and agricultural news. A keyword search allowed users to locate related articles, and the database was updated daily.

Access was via Telnet:

```
telnet psupen.psu.edu
login: PNOTPA
```

---

### 5.3 Clemson University Forestry & Agricultural Network

Clemson University maintained a database similar to PENpages, but focused on the Southeastern United States. Its menu-driven system offered information on:

- Weather  
- Food and nutrition  
- Family and community resources  
- Human services  

Access required a VT100-compatible terminal:

```
telnet eureka.clemson.edu
login: PUBLIC
```

---

### 5.4 University of Maryland Info Database

The University of Maryland’s Computer Science Department operated a broad information repository intended to demonstrate how networked systems could distribute knowledge widely. Users accessed the database through a screen-oriented interface:

```
telnet info.umd.edu
login: info
```

All content was also available via anonymous FTP.

A mailing list, **INFO‑L**, supported discussion, suggestions, and interface feedback. To subscribe:

```
send email to: listserv@umdd.umd.edu
body: subscribe INFO-L Your Full Name
```

See Section 2.2.1 *Listservs* for more details.

---

### 5.5 University of Michigan Weather Underground

The University of Michigan’s Department of Atmospheric, Oceanic, & Space Sciences maintained a weather database covering the United States and Canada. It provided:

- Current conditions  
- Forecasts  
- National summaries  
- Ski conditions  
- Earthquake and hurricane updates  
- Severe weather alerts  

Access was via Telnet on a nonstandard port:

```
telnet madlab.sprl.umich.edu 3000
```

This early system later inspired the modern Weather Underground service.

---

### 5.6 Geographic Name Server

Merit, Inc. operated a geographic database containing information about U.S. cities and selected international locations. Users could search by city name, ZIP code, or other identifiers. Results included:

- City and county  
- State and country  
- Feature type  
- Latitude and longitude  
- Elevation  
- Area code  
- Population  
- Associated ZIP codes  

Example query for ZIP code **19013**:

```
0 Chester
1 42045 Delaware
2 PA Pennsylvania
3 US United States
F 45 Populated place
L 39 50 58 N  75 21 22 W
P 45794
E 22
Z 19013
Z 19014
Z 19015
Z 19016
```

Access:

```
telnet martini.eecs.umich.edu 3000
```

Typing `help` displayed field explanations and usage instructions.

---

## 5.7 FEDIX — Minority Scholarship Information

**FEDIX** was an online information service connecting higher‑education institutions with U.S. federal agencies. It provided free access to:

- Federal research and education program updates  
- Scholarship, fellowship, and grant information  
- Available surplus research equipment  
- General agency announcements  

A major component was **MOLIS** (Minority On‑Line Information Service), which offered current information about Black and Hispanic colleges and universities.

Access was via Telnet:

```
telnet fedix.fie.com
login: fedix
```

---

