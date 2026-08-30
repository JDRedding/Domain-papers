# 🧩 Various Tools
New and interesting ways to use the Internet are being dreamed up every day. 

> "Fingers were made before forks."
> Jonathan Swift, Polite Conversation

As they gain wide-spread use, some methods become near-standard (or actual written standard) tools for Internet users to take advantage of. A few are detailed here; there are undoubtedly others, and new ideas spring up all the time. An active user of the Internet will discover most of the more common ones in time. Usually, these services are free.

## 🧭 Introduction 

Usenet was often used to announce a new service or capability on the Internet, which has largely been replaced by social media. In particular, the groups comp.archives and comp.protocols.tcp-ip were good places to look. Information will drift into other areas as word spreads. See the "Usenet News" for some information on reading news.

The early Internet ran on a handful of lightweight, non‑HTTP tools — **Archie**, **Gopher**, **WAIS**, **Finger**, **Talk**, **IRC**, anonymous FTP — and announcements happened on **Usenet**. These tools largely **disappeared** once the Web and full‑text crawlers became universal, though their *ideas* live on in modern search engines and communication platforms.  The early Internet tools weren’t “primitive versions” of modern ones — they were **solutions to a different topology**:

- FTP servers had *no hyperlinks*.  
- Gopher menus had *no free‑form text*.  
- WAIS databases were *islands*, not a unified web.  

Modern search engines only make sense once you have a **global graph of documents**. Before that, indexing filenames and menu titles was the only viable strategy. The key point: **these tools didn’t evolve into the Web; the Web replaced them.**  
Their *ideas* survived, but the protocols did not.

### 📜 What those tools actually did  

- **Archie** — indexed *filenames* on anonymous FTP servers. It didn’t read file contents; it simply told you where a file lived.
- **Gopher** — menu‑driven, text‑only browsing. Universities loved it because it was structured and predictable. Veronica/Jughead extended Archie‑style indexing to Gopher menus. 
- **WAIS** — early full‑text search across distributed databases; conceptually closer to modern search engines.  
- **Finger** / **Whois** — directory lookups for people and domains. Whois is still around; Finger died due to privacy concerns.  
- **Talk** / **ntalk** — real‑time terminal‑to‑terminal chat.  
- **IRC** — still exists, but now niche.  
- **Anonymous FTP** — the backbone of file distribution before HTTP.  
- **Listserv / BITNET** — email‑based group communication.

All of these lived **outside** the early Web. They were Internet services, not Web services.

### 🧨 Why they disappeared  
The Web didn’t kill them immediately — but once HTTP + HTML + full‑text crawlers arrived, the older ecosystem became obsolete.

#### Replacement patterns  
- **Archie → Web crawlers**  
  Archie indexed filenames; WebCrawler (1994) indexed *full text*, which was a qualitative leap.  
- **Gopher → HTTP**  
  Gopher’s menu model couldn’t compete with hyperlinks, inline media, and the flexibility of HTML.  
- **WAIS → modern search engines**  
  WAIS’s distributed full‑text search foreshadowed Google‑style indexing.  
- **Finger / Talk → privacy concerns + spam + modern messaging**  
- **IRC → Slack/Discord (culturally), though IRC still runs**  
- **Usenet → GitHub, mailing lists, Discord, X**  
  Usenet’s role as the “announcement channel” is now filled by modern developer‑centric platforms.

### 🔄 The underlying pattern hasn’t changed  
Your observation is dead‑on: the social‑technical cycle is identical today.

1. **Someone builds a useful service.**  
2. **Early adopters spread the word through existing discussion forums.**  
   - 1990s: Usenet  
   - 2000s: mailing lists, Slashdot  
   - 2010s: GitHub, Reddit, Twitter  
   - 2020s: Discord, X, Mastodon  
3. **If adoption reaches critical mass, the service becomes infrastructure.**

This is the same dynamic that took us from Archie → WebCrawler → Google, or from Talk → IRC → Slack/Discord.

## **1. Finger**

The **Finger** protocol was an early Internet directory service used to check who was logged into a system and to retrieve basic profile information about users. It predates the Web and was common on UNIX hosts throughout the 1980s and early 1990s.

On modern systems, the `finger` command may still exist. The Finger protocol provided user presence and profile information on local and remote UNIX systems. While the command still exists on some machines, the network service is almost universally disabled due to privacy and security concerns. Modern directory systems such as LDAP, Active Directory, and RDAP have replaced Finger’s role.

---

### **Local Usage**

On a system where Finger is still installed, running:

```
finger
```

shows a summary of users currently logged into the *local* machine.

To view details about a specific user:

```
finger username
```

This typically displays:

- login name  
- real name (GECOS field)  
- home directory  
- shell  
- last login time  
- mail status  
- `.plan` and `.project` files, if present  

---

### **Remote Usage (If Enabled)**

Finger was also designed to work across the Internet. The general form is:

```
finger @hostname
```

This requests a list of users logged into the remote host.

Example (if the remote server allows it):

```
finger @example.edu
```

To request information about a specific remote user:

```
finger alice@example.edu
```

If the remote system supports Finger, you’ll receive the same type of profile information you would locally.

---

### **Security Reality**

Most modern systems **block Finger entirely**. The protocol exposes:

- login names  
- last login times  
- user presence  
- home directory paths  
- personal `.plan` files  

All of these are considered sensitive today. As a result:

- The Finger daemon (`in.fingerd`) is usually **disabled**.  
- Firewalls commonly **reject** port 79 (Finger).  
- Many servers return **“Connection refused”** or simply time out.

This is normal and expected.

---

### **Why Finger Disappeared**

Finger declined for several reasons:

- **Privacy**: It leaked user activity and personal details.  
- **Security**: Attackers used Finger to enumerate accounts.  
- **Spam**: Email harvesters used Finger to find valid usernames.  
- **Modern replacements**: LDAP, Active Directory, WHOIS/RDAP, and web‑based directories replaced its role.

Today, Finger survives mostly as a historical curiosity or a local convenience tool on hobbyist systems.

---

## **2. Ping**

The **ping** command is a basic network diagnostic tool used to check whether a remote host is reachable and to measure round‑trip latency. It works by sending **ICMP Echo Request** packets and waiting for **ICMP Echo Reply** packets.

Ping sends ICMP Echo Requests to test reachability and measure latency. It remains one of the simplest and most reliable network diagnostics, though many hosts now rate-limit or block ICMP for security reasons. Use a small number of packets to check basic connectivity and round-trip performance.

On most systems, the general form is:

```
ping hostname
```

This tells you whether the remote system is reachable and provides timing information for each response.

---

### **Basic Reachability Test**

Example:

```
ping cs.example.edu
```

If the host responds, you’ll see a stream of replies showing:

- packet size  
- sequence number  
- TTL (time‑to‑live)  
- round‑trip time  

---

### **Timing and Statistics**

Most implementations send packets continuously until interrupted with `Ctrl‑C`. A typical output looks like:

```
PING cs.example.edu (203.0.113.42): 56 data bytes
64 bytes from 203.0.113.42: icmp_seq=0 ttl=251 time=46.2 ms
64 bytes from 203.0.113.42: icmp_seq=1 ttl=251 time=45.7 ms
64 bytes from 203.0.113.42: icmp_seq=2 ttl=251 time=52.1 ms
^C
--- cs.example.edu ping statistics ---
3 packets transmitted, 3 packets received, 0% packet loss
round-trip min/avg/max = 45.7/48.0/52.1 ms
```

This tells you:

- **Latency** (min/avg/max round‑trip time)  
- **Packet loss** (useful for diagnosing congestion or routing issues)  
- **TTL** (indicates how many hops remain before expiration)  

---

### **Modern Usage Notes**

- **Ping does not measure bandwidth.** It only measures latency and packet loss.  
- **High latency** may indicate congestion, long geographic distance, or rate‑limiting.  
- **Packet loss** often points to network issues, overloaded routers, or wireless interference.  
- **TTL values** can hint at routing changes or unusual paths.

---

### **Security and Rate‑Limiting in 2026**

Many servers now **rate‑limit** or **block ICMP Echo Requests** to reduce load or prevent abuse. As a result:

- Some hosts respond intermittently.  
- Some respond only to the first few packets.  
- Some return “Destination Unreachable” or simply drop ICMP entirely.

This is normal behavior on cloud platforms, CDNs, and security‑hardened systems.

---

### **How Often Should You Use Ping?**

Ping is lightweight, but modern networks often treat excessive ICMP traffic as noise. A few packets are usually enough:

```
ping -c 3 hostname
```

This sends exactly three probes and prints a summary.

---

## **3. Talk**

Before instant messaging, Slack, or Discord, UNIX systems provided real‑time interactive chat through the **talk** command. It allowed two users to type directly to each other’s terminals, character‑by‑character, even across the Internet.

Talk was an early real-time chat system for UNIX hosts, allowing users to type directly to each other’s terminals. While the command still exists on some systems, the network service is almost universally disabled due to security, firewalling, and the availability of modern messaging platforms.

On systems where Talk is still installed, the basic usage is:

```
talk user@hostname
```

If the remote host supports Talk, the user receives a notification and can accept the session.

---

### **How a Talk Session Worked**

If you attempted to talk with a remote user:

```
talk bart@example.edu
```

Bart’s terminal would display a message similar to:

```
Message from talkd@example.edu ...
talk: connection requested by joe@remote.edu
talk: respond with:  talk joe@remote.edu
```

Once Bart responded, both users would see a split‑screen interface and could type back and forth in real time. Every keystroke appeared immediately on both ends.

To exit Talk, users typically pressed `Ctrl‑C`, though implementations varied.

---

### **Old Talk vs. New Talk (ntalk)**

Historically, two incompatible versions existed:

- **old talk** — used on older UNIX variants  
- **ntalk** — the newer, more standardized protocol  

If you attempted to contact a host running the other version, you might see errors such as:

```
Protocol mismatch
```

or

```
Connection refused
```

Administrators had to install the correct daemon (`talkd` or `ntalkd`) to support both.

---

### **Status**

Talk is now **almost entirely obsolete**:

- Most modern systems disable the Talk daemon for security reasons.  
- Firewalls commonly block the required ports (517/518).  
- Terminal‑to‑terminal chat is no longer part of normal workflow.  
- Modern replacements include SSH‑based messaging, IRC, Matrix, Slack, and Discord.

Talk survives mainly on hobbyist UNIX systems, retro computing environments, and a few academic networks.

---

### **Why Talk Disappeared**

Several factors contributed to its decline:

- **Security**: Talk exposed user presence and relied on unauthenticated UDP traffic.  
- **Reliability**: NAT, firewalls, and modern routing break Talk’s assumptions.  
- **Better alternatives**: Instant messaging, IRC, and later Slack/Discord replaced its role.  
- **User experience**: Split‑screen terminal chat became unnecessary once graphical interfaces and persistent chat rooms emerged.

---

