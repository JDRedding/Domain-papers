# 🧩 Various Tools
New and interesting ways to use the Internet are being dreamed up every day. 

> "Fingers were made before forks."
> Jonathan Swift, Polite Conversation

As they gain wide-spread use, some methods become near-standard (or actual written standard) tools for Internet users to take advantage of. A few are detailed here; there are undoubtedly others, and new ideas spring up all the time. An active user of the Internet will discover most of the more common ones in time. Usually, these services are free.

## 🧭 Introduction 

Usenet was often used to announce a new service or capability on the Internet, which has largely been replaced by social medoa. In particular, the groups comp.archives and comp.protocols.tcp-ip were good places to look. Information will drift into other areas as word spreads. See the "Usenet News" for some information on reading news.

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

The Finger protocol provided user presence and profile information on local and remote UNIX systems. While the command still exists on some machines, the network service is almost universally disabled due to privacy and security concerns. Modern directory systems such as LDAP, Active Directory, and RDAP have replaced Finger’s role.

On modern systems, the `finger` command may still exist, but most sites disable the network service entirely for privacy and security reasons.

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

### **Security Reality in 2026**

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

