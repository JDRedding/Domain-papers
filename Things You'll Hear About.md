# Things You'll Hear About

There are certain things that people heard about shortly after they start actively using the Internet ar the dawn of the web. Most people assume that everyone's familiar with them, and they require no additional explanation. If only that were true!

This addresses a few topics that are commonly encountered and asked about as a new user explores Cyberspace. Some of them are directly related to how the networks are run; other points are simply interesting to read about. It’s essentially a “starter pack” for navigating cyberspace confidently.

## 🧠 Why?
Internet culture assumes everyone already knew these basics — but most people don’t. So introductory documents like the this will help  users understand:

- What the internet *is*  
- How it *works*  
- What tools they’ll use  
- What dangers to avoid  
- What cultural artifacts they’ll encounter  

Below is a structured breakdown of what those topics typically include, some old and then some grounded in what modern sources describe as the first concepts new users encounter when learning how the internet works. 

---

### 🌐 Core Concepts

- **Internet vs. Web** — People often use these interchangeably, but the *Internet* is the global network of cables, routers, and servers, while the *Web* is just one service running on top of it.
- **IP Addresses** — Every device online has a numerical address so data knows where to go.  
- **Data Packets** — All online information is chopped into tiny packets that travel independently and reassemble at the destination.  
- **Protocols** — Rules that govern communication: TCP, IP, HTTP/HTTPS, SMTP, etc.  
- **Routers and Modems** — The basic hardware that connects your home to the wider network.  
- **DNS** — The system that translates human-friendly names (like example.com) into IP addresses.  

---

### 🧭 Everyday Tools 

- **Web Browsers** — Chrome, Firefox, Safari, Edge; your gateway to websites.  
- **Email** — One of the first apps most people learn; uses SMTP and IMAP/POP.  
- **Search Engines** — Google, DuckDuckGo, Bing; how you find information.  
- **Social Media** — Platforms for communication and sharing.  
- **Online Shopping** — Buying goods online, payment systems, and safety considerations.
  
---

### 🔐 Safety Topics 

- **Online Safety** — Avoiding scams, malware, and unsafe downloads.  
- **Passwords** — Why strong, unique passwords matter.  
- **Privacy** — Understanding what data websites collect and how to protect yourself.  
- **Phishing** — Fake emails or sites trying to steal information.  
- **Safe Browsing Habits** — Recognizing trustworthy sites, HTTPS, and secure connections. 
---

### 🧩 Cultural & Historical Things 

- **Usenet** — One of the earliest discussion systems; still exists today.  
- **Early Web Browsers** — Mosaic, Netscape, and the rise of the graphical web.  
- **Netiquette** — Early norms for polite online communication.  
- **The Digital Revolution** — How the web exploded in the 1990s.   

---

### 📡 Infrastructure

- **Servers** — Computers that store websites, apps, and services.  
- **Fiber Optics** — Light-speed data transmission.  
- **Wireless Towers** — How phones access the network.  
- **ISPs** — Companies that provide your internet connection.  

---

## 1. The Internet Worm

The Morris Worm is one of those early‑internet stories that every technically curious person eventually bumps into — not because it was the first malicious program, but because it was the first one to **take down a significant portion of the Internet** and force everyone to confront how fragile the early network really was.

Below is a structured, technically accurate breakdown of what happened, why it mattered, and how it shaped modern security thinking — written for someone like you who appreciates systems, architecture, and historical context.

---

### 🧩 What the Morris Worm Actually Was  
A **self‑replicating, self‑propagating program** designed by **Robert T. Morris, Jr.**, then a Cornell graduate student.  
It wasn’t intended to destroy systems — Morris later claimed it was meant to measure the size of the Internet — but a logic flaw caused it to replicate uncontrollably.

Key mechanisms it exploited:

- **sendmail debug mode** — allowed remote command execution.  
- **fingerd buffer overflow** — classic overflow vulnerability.  
- **trusted hosts / rsh** — allowed passwordless remote execution between machines.

These were not obscure bugs — they were *default behaviors* in 1980s Unix culture, where convenience and trust were prioritized over security.

---

### 🕒 Timeline of the Incident  

- **Nov 2, 1988** — Morris releases the worm from an MIT machine to obscure its origin.  
- The worm spreads far faster than intended due to a flawed reinfection‑avoidance check.  
- Machines across the U.S. become overloaded, catatonic, or crash entirely.  
- Researchers at **Berkeley**, **MIT**, and **Purdue** begin reverse‑engineering the worm.  
- Temporary fixes are devised, but network congestion prevents rapid dissemination.  
- Many sites disconnect entirely from the Internet to stop the spread.  
- After ~12 hours, containment strategies begin working.  
- Within days, the network stabilizes.  
- Morris is identified and later prosecuted under the **Computer Fraud and Abuse Act**.

---

### ⚖️ Legal Outcome  
Morris became the **first person convicted under the CFAA** (Computer Fraud and Abuse Act).  
Sentence:

- 3 years probation  
- 400 hours community service  
- $10,000 fine  
- Supervision costs  

His appeal was rejected in 1991.

---

### 📉 Impact on the Early Internet  
The worm infected an estimated **10% of the Internet** at the time — which sounds small today, but in 1988 that meant:

- major universities  
- military research sites  
- medical research institutions  
- government systems  

Costs per site ranged from **$200 to $53,000**, mostly in labor spent cleaning and restoring systems.

More importantly, it exposed a truth:

> The early Internet was built on trust, not security.

The worm forced the community to confront the need for:

- secure coding practices  
- patch distribution mechanisms  
- incident response teams  
- coordinated security advisories  

It directly led to the creation of **CERT/CC** (Computer Emergency Response Team Coordination Center).

---

### 🧠 Why This Event Still Matters  
The Morris Worm is the ancestor of modern worms like Code Red, Slammer, and WannaCry.  
It demonstrated:

- how small bugs in self‑replicating systems can cause exponential damage  
- how fragile distributed systems are when trust is implicit  
- how slow communication channels worsen crises  
- how security culture must evolve faster than technology  

It’s also a reminder that **the first major internet outage was caused by a grad student experimenting** — not a nation‑state or criminal syndicate.

---

