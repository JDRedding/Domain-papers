# **Anonymous FTP**

> "Was für plundern!" ("What a place to plunder!") Gebhard Leberecht Blucher

FTP (File Transfer Protocol) was one of the earliest and most common methods for transferring files across the Internet. On many systems, “FTP” referred both to the protocol itself and to the client program used to interact with it. With the proper credentials, a user could move files between distant machines—such as from South Africa to Los Angeles—at speeds around 510 KB/s, assuming the systems were configured to allow remote access.

Anonymous FTP let anyone download publicly shared files from a remote computer without needing an account. You logged in using the username **anonymous** and typically supplied your email address as the “password.” Transfer speed depended entirely on the network link and how many people were using it at the same time.

### **📚 Why this matters**
Anonymous FTP was one of the earliest forms of open digital distribution. Before websites, package managers, or cloud storage, this was how people shared:

- source code  
- research papers  
- drivers  
- early Linux distributions  
- Usenet archives  

It was a foundational piece of Internet culture.

Ordinarily, FTP required a valid user account on both machines or special administrative setup. Anonymous FTP was created as a workaround to these restrictions. It allowed anyone to access a designated portion of a system’s storage without needing a personal login. Administrators could expose a controlled directory tree for public downloads, making it easy to distribute files. Some organizations even dedicated entire disks or servers to large public archives of software and documentation, such as:

- gatekeeper.dec.com (Digital Equipment Corporation)  
- wuarchive.wustl.edu (Washington University in St. Louis)  
- archive.cis.ohio-state.edu (Ohio State University)

To use anonymous FTP, an external user would connect via FTP and log in with the username **anonymous**, supplying any string as the password. Convention dictated entering an email address, such as:

```
Name (foo.site.com:you): anonymous
Password: jm@south.america.org
```

This courtesy allowed administrators to track usage if desired.

Transfer speed depended heavily on the underlying network connection. A host using a 9600 bps SLIP link would perform far worse than one on a 56 kbps leased line. Network congestion also mattered: if dozens of users were downloading simultaneously, both system load and link saturation would reduce throughput for everyone.

---

### **Expanded breakdown**

#### **📁 Anonymous FTP — what it was**
Anonymous FTP was a public‑access file‑sharing method used widely before HTTP and modern web servers. System administrators could expose a safe portion of their disk so anyone could download files.

- No user account needed  
- Login name: `anonymous`  
- Password: usually your email address  
- Access limited to a controlled directory tree  

This made it easy for universities, companies, and hobbyists to publish software, documentation, and archives.

---

#### **🌍 Major FTP archive sites**
The text mentions classic, historically important FTP servers:

- gatekeeper.dec.com (Digital Equipment Corporation)  
- wuarchive.wustl.edu (Washington University)  
- archive.cis.ohio-state.edu (Ohio State University)

These were huge public repositories — early versions of what GitHub, SourceForge, and package mirrors later became.

---

#### **🔐 Login etiquette**
You’d see something like:

```
Name (foo.site.com:you): anonymous
Password: jm@south.america.org
```

Providing an email address wasn’t a security requirement — it was a courtesy. It helped administrators track usage patterns and contact someone if needed.

---

#### **⚡ Transfer speed**
Throughput depended on:

- The physical connection (9600bps SLIP vs 56k leased line, etc.)  
- Network congestion  
- Server load (e.g., 30 people downloading at once)  

So speeds varied wildly depending on the era’s infrastructure.

---

Anonymous FTP **still exists today**, but in a modern, hardened form: read‑only, chrooted, rate‑limited, sometimes encrypted (FTPS), and used mainly for public mirrors, firmware distribution, and legacy workflows.  
Modern file sharing systems provide encrypted, identity‑aware, feature‑rich alternatives that have replaced anonymous FTP for most public distribution.

---

# **Anonymous FTP vs modern file sharing**  
**Modern anonymous FTP still exists**: current FTP daemons (vsftpd, Pure‑FTPd, ProFTPD) still support anonymous login, but it is now *restricted, chrooted, rate‑limited, and often paired with TLS (FTPS)*. It remains a simple way to publish world‑readable files without accounts.  

Modern file sharing systems (HTTPS, SFTP, cloud storage) provide encrypted, browser‑native, identity‑integrated access with differnet features and reliability. Anonymous FTP **still exists today** and remains a simple, account‑free way to publish world‑readable files. Modern FTP servers (vsftpd, Pure‑FTPd, ProFTPD) support anonymous login with hardened, read‑only, chrooted environments — and many deployments now offer **anonymous FTPS**, adding TLS encryption while keeping access anonymous.  Modern file sharing systems (HTTPS, SFTP, cloud platforms) provide richer features, identity integration, and browser‑native interfaces, but they serve a different purpose.

Anonymous FTP **is not obsolete** — it’s simply specialized. Modern anonymous FTP is hardened, often encrypted, and still used for public mirrors, firmware distribution, and legacy workflows where simplicity and scriptability matter.   Modern file sharing systems offer richer features, but they serve different needs.

---

## **Core differences**

### **🔓 Access model**
- **Modern Anonymous FTP:**  
  Anyone may log in as **anonymous** and retrieve files from a controlled public directory. Servers enforce chroot jails, rate limits, logging, and read‑only access. Some sites use **anonymous FTPS**, providing encryption without requiring accounts.  
- **Modern systems:**  
  Access is authenticated and permission‑based, typically using OAuth, SSO, SSH keys, or API tokens.

---

### **🔐 Security**
- **Modern Anonymous FTP:**  
  - Plain FTP is still available for simple public mirrors.  
  - Many deployments now offer **FTPS**, giving anonymous users encrypted control and data channels.  
  - Anonymous access is sandboxed and restricted, not the wide‑open 1990s model.  

- **Modern file sharing:**  
  - HTTPS/TLS 1.3 for browser‑based transfers  
  - SFTP over SSH with strong encryption  
  - Built‑in integrity checks, versioning, and compliance features  

---

### **⚙️ Protocol architecture**
- **Modern Anonymous FTP:**  
  - Still uses the classic FTP dual‑channel design.  
  - Passive mode is the modern default for NAT/firewall compatibility.  
  - FTPS adds TLS while keeping the FTP architecture intact.  

- **Modern systems:**  
  - HTTPS: single encrypted TCP connection  
  - SFTP: single SSH channel  
  - Minimal firewall complexity

---

### **📦 User experience**
- **Modern Anonymous FTP:**  
  - Requires an FTP/FTPS client since browsers removed FTP support.  
  - Simple directory listings, ideal for scripting, automation, and mirroring.  
  - Lightweight and predictable — no web UI overhead.  

- **Modern systems:**  
  - Browser‑native interfaces  
  - Drag‑and‑drop uploads, previews, versioning  
  - Cloud‑native reliability and resumable transfers

---

### **📡 Performance & reliability**
- **Modern Anonymous FTP:**  
  - Efficient for bulk downloads and automated mirroring.  
  - Reliability depends on server bandwidth and passive port configuration.  
  - FTPS adds integrity and encryption when needed.  

- **Modern systems:**  
  - CDN acceleration, parallel chunking, resumable uploads  
  - Strong integrity checks and cryptographic verification  
  - Highly reliable across global networks

---

## **Comparison table**

| **Feature** | **Modern Anonymous FTP** | **Modern File Sharing** |
|-------------|---------------------------|--------------------------|
| Security | Optional TLS (FTPS) | Full TLS/SFTP encryption |
| Authentication | Anonymous login | OAuth, SSO, SSH keys |
| Firewall behavior | Dual channels; passive mode | Single channel |
| Client requirement | FTP/FTPS client | Browser or OS tools |
| Integrity checks | None unless FTPS | Cryptographic |
| Compliance | Not for regulated data | Meets standards |
| Ease of use | Simple, scriptable | Feature‑rich |

Here’s a tighter, clearer rewrite that keeps the intent but reads cleaner and more modern:

---

### 3.1 FTP Etiquette

The Internet exists so people can get real work done. Every system and network link is supporting someone’s research, development, or operational tasks. Heavy activity consumes shared resources, and that load reduces overall performance for everyone.

An FTP session can place noticeable strain on a site and its network connection. The basic rule: any additional traffic you generate reduces that site’s capacity to serve its own users. To minimize disruption, schedule large FTP transfers outside the site’s normal business hours—ideally late at night. A multi‑megabyte download at 2 a.m. is far less intrusive than the same transfer at 2 p.m.

Also keep time zones in mind. If it’s after dinner in Maine, it may still be mid‑afternoon in California. Base your timing on the local time of the site you’re connecting to, not your own.

---

## 3.2 Basic Commands

FTP clients vary widely, but there is a core set of commands that every implementation supports. This section covers only the essential operations needed to run a basic FTP session. For details specific to your client, consult its manual.

---

## 3.2.1 Creating the Connection

The command to start an FTP session depends on the operating system, but we’ll use the generic `ftp` form here.

You can connect to a remote system using either its hostname or its numeric Internet address. Hostnames are preferred, though some sites may not resolve them correctly. Assuming hostname resolution works, the basic form is:

```
ftp hostname.domain
```

For example:

```
ftp ftp.uu.net
```

After a brief pause, you should see something like:

```
Connected to ftp.uu.net.
220 uunet FTP server ready.
Name (ftp.uu.net:localuser):
```

For anonymous access, enter:

```
anonymous
```

The server will then request a password. Provide your email address:

```
Password: user@example.com
230 Guest login ok, access restrictions apply.
ftp>
```

Passwords do not echo for security reasons. Once you reach the `ftp>` prompt, you’re logged in and ready to issue commands.

---

## 3.2.2 dir

At the `ftp>` prompt, `dir` lists the contents of the current remote directory:

```
ftp> dir
200 PORT command successful.
150 Opening ASCII mode data connection for /bin/ls.
total 3116
drwxr-xr-x  ...
-rw-rw-r--  ...
226 Transfer complete.
```

Directory formats vary by operating system (Unix, VMS, TOPS, etc.). With experience, you’ll learn to interpret file sizes and permissions across systems.

Many FTP clients allow saving directory listings directly to a local file:

```
ftp> dir n* outfilename
```

This writes the names of all remote files beginning with `n` into the local file `outfilename`.

---

## 3.2.3 cd

When you first log in, you start in the site’s top‑level directory. Most downloadable content lives in subdirectories such as `/pub`.

To change directories:

```
ftp> cd pub
250 CWD command successful.
```

To move “up” one level, the command depends on the remote OS:

- Unix: `cd ..`
- VMS: `cd [-]`

---

## 3.2.4 get and put

These commands transfer files between the remote system and your local machine.

### Getting a file

```
ftp> get filename
```

Example:

```
ftp> get newthisweek.Z
150 Opening ASCII mode data connection...
226 Transfer complete.
```

You can also rename the file locally:

```
ftp> get newthisweek.Z uunet-new
```

### Putting a file

If the remote directory allows uploads:

```
ftp> put filename
```

You may also specify a different remote filename:

```
ftp> put localname remotename
```

---

## 3.2.4.1 ASCII vs Binary

FTP supports two transfer modes:

- **ASCII** — translates end‑of‑line and certain characters; safe for text only.
- **Binary** — transfers raw bytes; required for compressed files, executables, archives, images, etc.

Binary mode prevents corruption. To switch modes:

```
ftp> ascii
200 Type set to A.

ftp> binary
200 Type set to I.
```

Once set, the mode applies to all transfers until changed.

Example of a correct binary transfer:

```
ftp> binary
ftp> get newthisweek.Z
150 Opening BINARY mode data connection...
226 Transfer complete.
```

The file size should match the size listed on the remote server.

---

## 3.2.4.2 mget and mput

These commands allow wildcard transfers:

```
ftp> mget f*
ftp> mput *.c
```

By default, FTP prompts before each file. To disable prompting:

```
ftp> prompt
Interactive mode off.
```

Repeat `prompt` to turn it back on.

---

## 3.3 The archie Server

The archie system, developed at McGill University in Canada, was one of the earliest Internet‑wide search tools. It indexed anonymous FTP archives and provided a fast way to locate files across hundreds of servers. For much of the early 1990s, archie was a foundational part of Internet resource discovery.

All original production archie servers went offline in the 2000s. However, in 2024 a community effort recovered the **Archie 3.5 beta** source and binaries from Warsaw backups. The Serial Port project published the recovered materials and deployed a reconstructed public instance — complete with a web frontend and classic protocols—running on an emulated SPARCstation at:

```
archie.serialport.org
```

This reconstruction is historically accurate but **not** one of the original McGill‑era servers. As of mid‑to‑late August 2026, the public instance is marked offline because its VM is down, though the software and documentation remain available.

---

## 3.3.1 Using archie (Historical Operation)

At its peak, archie indexed more than 800 anonymous FTP sites and tracked over a million files—roughly 50 gigabytes of material at early‑1990s scale. Listings were refreshed monthly to balance accuracy with network load.

Historically, users accessed archie via telnet to servers such as:

- archie.ans.net (New York, USA)  
- archie.rutgers.edu (New Jersey, USA)  
- archie.sura.net (Maryland, USA)  
- archie.unl.edu (Nebraska, USA)  
- archie.mcgill.ca (Canada; original server)  
- archie.funet.fi (Finland)  
- archie.au (Australia)  
- archie.doc.ic.ac.uk (Great Britain)

None of these hostnames resolve today; they survive only in documentation.

Once connected, users logged in with:

```
archie
```

and received an `archie>` prompt supporting commands such as:

- `prog` — search for filenames  
- `set` — adjust query parameters  
- `quit` — exit  

Example historical query:

```
prog vine.tar.Z
```

which returned FTP sites hosting that file.

---

## 3.3.2 archie Clients

Two primary clients existed:

- **archie** — command‑line interface  
- **xarchie** — X‑Windows graphical interface  

These queried archie servers directly without requiring telnet. For example:

```
% archie vine.tar.Z
Host athene.uni-paderborn.de
Location: /local/X11/more_contrib
FILE -rw-r--r-- 18854 Nov 15 1990 vine.tar.Z
```

Today, these clients are purely historical artifacts. They can be compiled from the recovered Archie 3.5 beta sources, but they require a running archie server—such as the Serial Port reconstruction—to function.

---

## 3.3.3 Mailing archie

archie once supported email‑based queries for users without direct Internet access. Messages sent to:

```
archie@archie.mcgill.ca
```

returned automated responses describing how to perform searches and how to use FTP‑by‑mail services.

This interface is no longer active. It is preserved only in historical documentation and in the recovered Archie 3.5 beta materials.

---

## 3.3.4 The whatis Database

archie also provided access to the *whatis* database—a catalog of more than 3,500 public‑domain software packages, datasets, and informational documents.

Planned expansions included:

- online library catalog program listings  
- directories of public mailing lists  
- collections of Frequently Asked Questions (FAQ) documents  
- archive locations for major Usenet newsgroups  

Development ended as web search engines replaced archie’s role. The original mailing list:

```
archie-l@cs.mcgill.ca
```

is no longer active.

The recovered Archie 3.5 beta includes documentation for the whatis subsystem, and the Serial Port reconstruction preserves its behavior when the VM is online.

---
