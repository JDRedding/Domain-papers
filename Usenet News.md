# Usenet News

The first thing to understand about Usenet is that it is widely misunderstood. No essay on the nature of Usenet can ignore the erroneous impressions held by many Usenet users. Therefore, this note will treat falsehoods. Keep reading for truth. (Beauty, alas, is not relevant to Usenet.)

Every day on Usenet, like on social media, the *"**blind men and the elephant**"* phenomenon appears, in spades. More flame wars (rabid arguments) arise because of a lack of understanding of the nature of Usenet than from any other source. And consider that such flame wars arise, of necessity, among people who are on Usenet. Imagine, then, how poorly understood Usenet must be by those outside!

## **1 Usenet as a network**
At its core, Usenet is a **distributed flood‑fill network** of servers exchanging *articles* (posts) that are each labeled with one or more **newsgroups**. No central authority, no single owner, no master database — just NNTP servers passing articles around according to shared conventions.

That’s why the definition emphasizes:

- “machines that exchange articles”  
- “universally‑recognized labels”  
- “newsgroups (groups)”

Because if you get those three wrong, you’re not describing Usenet anymore — you’re describing a forum, a BBS, or a proprietary conferencing system.

---

### **Why the terminology policing existed**
Usenet culture was extremely protective of its vocabulary. Calling a newsgroup an *area* or *board* wasn’t just pedantic — it implied you didn’t understand the architecture.

A **newsgroup** is not:
- a forum (web metaphor)  
- a board (BBS metaphor)  
- a SIG (organizational metaphor)  
- a channel (IRC metaphor)

It’s a **label in a distributed namespace**.  
That’s why the hierarchy matters: `comp.lang.c`, `rec.arts.sf.written`, `alt.sysadmin.recovery`, etc.

The namespace *is* the structure.

---

### **Usenet as a culture**
The technical definition is correct, but incomplete. Usenet was also:

- a **long‑form, threaded conversation medium**  
- a place where quoting style (“>”) became an art  
- a proto‑social network with norms, killfiles, and reputations  
- a global salon for nerds, academics, engineers, and writers  
- a system where ideas persisted and arguments had lineage

It was the opposite of IRC’s real‑time chaos.  
It rewarded **thought**, not presence.

---

### **Usenet as a protocol**
Under the hood, Usenet is NNTP:

- articles have headers (`From:`, `Subject:`, `Message-ID:`)  
- servers exchange articles using `IHAVE` / `POST`  
- propagation is store‑and‑forward  
- retention depends on each server’s policy  
- nothing is guaranteed except the *attempt* to propagate

It’s shockingly simple, which is why it survived everything.

---

## **2 The Diversity of Usenet**  
Usenet has always been difficult to generalize because it was never designed to be uniform. It is a **federation of independently‑run servers**, each choosing what to carry, how long to keep it, and how to present it. That diversity has only increased over time.

Usenet spans:

- government agencies  
- universities and research labs  
- public libraries and schools  
- private companies  
- hobbyist servers  
- home machines running everything from Linux to retro hardware  

Every **administrator** governs only their own system. Their authority comes from the **owner** of that machine or network, and as long as the owner is satisfied, the administrator may configure, filter, restrict, or even disconnect from Usenet entirely. There is no appeals process, no oversight board, no “higher office” to complain to. That’s simply how the network works.

This autonomy is not a flaw — it is the defining feature. Usenet is a **loosely connected ecosystem**, not a centrally managed service. Diversity is baked into its architecture.

---

## **3 What Usenet Is Not**

### **Usenet is not an organization.**  
There is no headquarters, no board, no membership list, no governing body. Terms like **upstream** and **downstream** describe traffic flow, not authority. While upstream servers may influence what their downstream neighbors receive, such influence is limited and easily bypassed. Attempts at heavy-handed control historically produced resentment and routing workarounds.

### **Usenet is not a democracy.**  
Democracy requires an organized structure capable of enforcing collective decisions. Usenet has neither. People may *wish* it were democratic, or behave *as if* it were, but the network’s architecture does not permit democratic governance. Each site is sovereign; collective voting has no binding force unless each administrator voluntarily agrees.

### **Usenet is not fair.**  
Fairness requires an arbiter. Usenet has none. If someone behaves “unfairly,” there is no central authority to intervene. Administrators can filter, block, or ignore whatever they choose. Users can complain, but complaints carry no inherent power.

### **Usenet is not a right.**  
Freedom of speech does not obligate anyone to carry your speech on their privately owned computer. Administrators may refuse traffic for any reason. “Freedom of the press belongs to those who own one” applies literally: if you want guaranteed distribution, you must run your own server.

### **Usenet is not a public utility.**  
Some servers are publicly funded, but most are not. There is no government monopoly, no regulatory framework, and no guaranteed access. Usenet is a voluntary network of private systems.

### **Usenet is not a commercial network.**  
Although commercial providers participate, Usenet’s culture historically discouraged advertising and promotional traffic. When commercial posts are tolerated, they are usually segregated into specific groups (e.g., `comp.newprod`). Academic and research institutions still form a large portion of the network’s backbone.

### **Usenet is not the Internet.**  
Usenet traffic travels *over* the Internet, but also over private networks, internal organizational links, and other transports. The Internet is a global infrastructure; Usenet is a message-distribution layer that can use that infrastructure but does not depend exclusively on it.

### **Usenet is not a Unix network, nor even an ASCII network.**  
Usenet has always been platform‑agnostic. Servers and clients exist on:

- Unix  
- Linux  
- VMS  
- IBM mainframes  
- Amigas  
- MS-DOS and Windows  
- modern systems using UTF‑8  
- legacy systems using EBCDIC  

Assuming everyone uses `rn` on a Unix box has never been correct.

### **Usenet is not software.**  
There is no single “Usenet program.” Many packages exist for transporting and reading articles — `INN`, `Cyclone`, `DNews`, `tin`, `trn`, `slrn`, `Pan`, and countless others. Any software that speaks NNTP and handles newsgroups can participate.

Private networks often use the same software but different newsgroup namespaces, keeping their internal traffic separate from the public hierarchy.

### **Usenet is not a UUCP network.**  
UUCP was once a major transport mechanism, especially in the early days of dial-up links. Today, NNTP over TCP/IP dominates, but UUCP still exists in niche environments. Usenet is a *type of content*, not a transport protocol. UUCP is one of many ways articles can move.

**Short take:** Here’s a rewritten, modernized version of **Section 4: Propagation of News** that keeps the historical truth, updates the context, and preserves the tone of the original — authoritative, technically precise, and culturally aware.

---

## **4 Propagation of News**

### **4.1 From Backbone to Broadband**
In the early era of Usenet, when **UUCP over long‑distance dialup** was the dominant transport, a small number of well‑connected sites effectively shaped the flow of articles. These sites informally called themselves **“the backbone.”** Their influence came from simple physics: long‑distance calls were expensive, bandwidth was scarce, and only a handful of institutions could afford to move large volumes of news reliably.

That world is gone.

Modern connectivity — even at the smallest sites — far exceeds what backbone administrators once considered unimaginable. A single home server on a consumer fiber line now has more bandwidth and uptime than many university hubs had in the 1980s. As a result, **propagation power is no longer concentrated**. Any site with a feed and a willingness to carry traffic participates on equal footing.

In the U.S., cheaper long‑distance service and high‑speed modems in the 1990s opened the door for smaller companies to run full Usenet feeds. Today, NNTP over TCP/IP dominates, and UUCP survives only in niche or archival contexts.

The one historically pre‑eminent UUCP transport site in the U.S. — **UUNET** — still exists, but it no longer plays any role in shaping Usenet’s content flow. UUNET’s business model and legal posture required neutrality: it accepted all traffic without filtering, because refusing content would have jeopardized its status as an enhanced service provider. In practice, this meant UUNET was never a participant in “propagation politics.”

---

### **4.2 Regional Differences**
The above description applies primarily to the United States. Europe evolved differently.

European cost structures historically favored **strictly controlled hierarchical organizations** with central registries and formal routing policies. These systems resembled regulated utilities more than the free‑form American model. Naming conventions, group creation, and feed distribution were often managed by committees or national bodies.

For decades, these **“benign monopolies”** operated without serious competition. But as connectivity improved and costs dropped, looser, U.S.-style organizations emerged across Europe. These newer networks embraced the American ethos:  
**pick a name, install the software, get a feed, and you’re part of Usenet.**

The result is a gradual shift toward a more decentralized, more diverse, and less centrally governed European Usenet — closer in spirit to the original U.S. model.

---

## **5 Group Creation**

### **5.1 The Illusion of Democracy**
As noted earlier, **Usenet is not a democracy**.  
Despite that, the most widely accepted method for creating a new newsgroup still involves a **“vote”** — a public process intended to measure support and opposition for a proposed group. The mechanics of this process are documented in **newsgroup creation guidelines**.

If you follow those guidelines carefully, your group will *probably* be created and *probably* be widely carried. But nothing in Usenet is enforceable. No user, no committee, no “authority” can compel any site to honor the results of a vote. Propagation depends entirely on voluntary cooperation.

Because of this, success requires more than procedural correctness. You must follow **both the letter and the spirit** of the guidelines. Even the faintest hint of manipulation, ballot‑stuffing, or procedural gamesmanship can doom a proposal. Administrators have long memories, and they can ignore you with a single keystroke.

---

### **5.2 Why New Users Should Not Run Votes**
A reasonable question follows: *How is a new user supposed to understand the “spirit” of the guidelines?*  
The honest answer: **they can’t.**

Usenet’s norms are unwritten, historical, and cultural. They are learned by immersion, not by reading a FAQ. This leads to the unavoidable recommendation:

### **If you are new to Usenet, do not attempt to create a new newsgroup by yourself.**

If you have a genuinely good idea for a new group:

- Spend time reading **news.groups** — six months at minimum.  
- If six months feels too long, that’s a sign you need more time. Make it a year.  
- If you absolutely cannot wait, find an experienced Usenet participant to run the process for you.

This advice may seem strict. It is not. It is pragmatic.

---

### **5.3 The Cultural Reality**
Usenet is a society with its own expectations:

- Speaking before learning is embarrassing.  
- Barging into a community you don’t understand is foolish.  
- Trying to impose your will on a decentralized network is futile.  

Users can — and will — ignore you instantly if you behave as though you have authority. You don’t. No one does. That’s the point.

Group creation works best when approached with patience, humility, and respect for the culture that keeps Usenet functioning.

---

## **6 If You’re Unhappy…**

### **6.1 The Limits of Authority**
On Usenet, **property rights define authority**. The highest power on any site is the person who owns the machine carrying the traffic. If the owner of the system you use decides:

> “We will not carry `alt.sex` on this server.”

and you dislike that decision, **Usenet offers no recourse**. There is no appeals board, no central committee, no “higher level” to complain to. Outsiders have no leverage over someone else’s hardware.

This is not a bug. It is the architecture.

---

### **6.2 What You *Can* Do**
Being powerless on Usenet does not mean being without options. Depending on your situation, you may have several avenues:

- **Internal recourse** — If your site is part of a company, school, or institution, you may be able to lobby internally. Policies can change if the right people are persuaded.
- **External pressure** — Sometimes administrators respond to community feedback, especially if the issue affects reputation or user satisfaction.
- **Get your own feed** — The most reliable solution is independence.  
  Modern hardware is cheap, and even a small home server can run a full Usenet feed.  
  NNTP‑capable systems are inexpensive, and lightweight Unix‑like environments are available for well under $100.  
  If you control your own machine, you control your own feed.

What will not help is appealing to **“Usenet”** as an abstract entity. Even sympathetic readers have **zero authority** over your local administrator — usually less than you do.

---

### **6.3 When You’re Unhappy With Another Site**
The same principle applies when the problem is a user at another site. Only the **administrator or owner** of *that* machine has the authority to act. If you can persuade them that the user is causing trouble *for them*, they might intervene — if they feel like it.

If the problematic user **is** the administrator or owner of the site they post from, you have no chance of changing their behavior. In that case:

- configure your newsreader to ignore their posts  
- filter their site or their address  
- chalk it up to experience  

Usenet’s strength — decentralization — is also the reason you cannot force anyone to behave differently.

---

### **6.4 The Cultural Reality**
Usenet’s architecture guarantees:

- no central authority  
- no universal rules  
- no enforceable fairness  
- no guaranteed access  

If you want control, you must own the machine.  
If you want peace, you must configure your filters.  
If you want change, you must persuade — not command.

That’s the Usenet way.

---

## **7 The History of Usenet (The ABCs)**

### **7.1 Origins**
In the beginning, there were conversations — local, ad‑hoc, and limited.  
Then, in 1979, shortly after the release of **V7 Unix** with **UUCP**, came **Usenet**, and the scope of those conversations expanded dramatically.

Two Duke University graduate students, **Tom Truscott** and **Jim Ellis**, proposed linking Unix systems to exchange information across campuses. **Steve Bellovin**, then a graduate student at UNC, wrote the first implementation of the news software using shell scripts and deployed it on the first two sites: **unc** and **duke**. By early 1980, a third machine (**phs**, also at Duke) joined, and the network was described publicly at the January 1980 **Usenix** conference in Boulder, Colorado.

Bellovin later rewrote the shell scripts in C, though that version never left UNC and Duke. Shortly afterward, **Steve Daniel** produced a C implementation intended for public distribution. Truscott refined it further, and this became the first widely released package: **A News**.

---

### **7.2 The Rise of B News**
By 1981, Usenet’s growth had outpaced A News, which was designed for only a handful of articles per group per day. At UC Berkeley, graduate student **Mark Horton** and high‑school student **Matt Glickman** rewrote the system to handle higher volume and add new features. Their work became **B News**.

The first public release, **version 2.1**, appeared in 1982. Earlier versions were considered beta. As Usenet expanded, B News evolved rapidly. Horton’s final primary release was **2.10.1**.

In 1984, **Rick Adams** (Center for Seismic Studies) took over coordination of B News development with the **2.10.2** release. This version introduced support for **moderated groups**, inspired by ARPA mailing lists and other bulletin‑board systems. By late 1986, **version 2.11** arrived, adding:

- a new naming structure for newsgroups  
- improved batching and compression  
- enhanced `ihave/sendme` control messages  
- numerous reliability improvements  

The canonical B News lineage ends with **2.11, patchlevel 19**.

---

### **7.3 The Emergence of C News**
As article volume continued to grow, performance became a serious concern. At the University of Toronto, **Geoff Collyer** and **Henry Spencer** developed a new implementation known as **C News** — a ground‑up rewrite of the lowest layers of the system.

C News focused on:

- faster article processing  
- more efficient expiration  
- improved locking and reliability  
- reduced resource consumption  

It was released to the network in autumn 1987. Their paper, *News Need Not Be Slow*, published in the Winter 1987 Usenix Technical Conference proceedings, describes the design philosophy and performance gains.

---

### **7.4 Portability and Expansion**
Over time, Usenet software spread far beyond its Unix roots. News transport and reading tools were ported to:

- Amigas  
- IBM PCs  
- MS‑DOS systems  
- minicomputers  
- mainframes  
- and eventually every major Unix and Unix‑like platform  

This portability helped Usenet grow into a global, heterogeneous network — one that never depended on any single operating system, vendor, or architecture.

---

**Short take:** Here’s a rewritten, modernized version of **Section 8: Hierarchies** that keeps the original’s clarity and tone, updates the context for 2026, and preserves the cultural meaning of each hierarchy. It’s structured, precise, and still unmistakably Usenet‑native.

---

## **8 Hierarchies**

Newsgroups on Usenet are arranged in a **tree‑structured namespace**. Each top‑level branch is called a **hierarchy**, and each hierarchy reflects a broad area of interest. The traditional “Big Seven” remain the backbone of the globally distributed groups.

### **8.1 The Big Seven Hierarchies**

#### **comp**  
Topics for computer professionals and hobbyists. Includes programming, operating systems, hardware, software sources, and computer science discussions.

#### **misc**  
Subjects that don’t fit neatly into other hierarchies or span multiple domains. Common themes include fitness, law, job‑hunting, personal finance, and general advice.

#### **sci**  
Discussions grounded in scientific knowledge — research, theory, applications, and professional scientific communities.

#### **soc**  
Social issues, cultural discussions, and general socializing. Covers a wide range of world cultures and social topics.

#### **talk**  
Debate‑oriented groups. Long discussions, often without resolution, and typically without much practical information. High noise, low signal — by design.

#### **news**  
Groups about Usenet itself: administration, software, propagation, policies, and meta‑discussion.

#### **rec**  
Recreation and hobbies: games, music, sports, collecting, outdoor activities, and leisure interests.

---

### **8.2 Distribution Reality**
These “world” groups are *intended* for global distribution, but actual propagation varies:

- Many European Usenet and Eunet sites historically carried only a **technical subset** of the Big Seven.  
- Controversial or high‑noise groups (especially under **talk** and **soc**) are often dropped by U.S. and Canadian sites.  
- Some sites refuse **comp.binaries** groups due to their large post sizes (binary executables, encoded archives, etc.).

Usenet’s decentralized nature means **no hierarchy is guaranteed universal distribution**. Each administrator chooses what to carry.

---

### **8.3 Alternative Hierarchies**
Beyond the Big Seven, several “alternative” hierarchies exist, each with its own culture and propagation patterns.

#### **alt**  
The anarchic free‑for‑all. Anything can appear here: sex, fringe topics, humor, fandoms, conspiracy theories, The Simpsons, privacy discussions, and everything in between.  
Creation is unregulated; propagation is voluntary.

#### **gnu**  
Groups related to the **GNU Project** and the **Free Software Foundation**. Discussions include GNU software, philosophy, licensing, and development.  
(For more on the FSF, see **FSF**.)

#### **biz**  
Business‑oriented groups: marketing, entrepreneurship, industry discussions, and commercial topics.

---

### **8.4 The Cultural Meaning of Hierarchies**
Each hierarchy carries a reputation:

- **comp** and **sci** → high signal, technical, widely carried  
- **rec** → friendly, hobby‑focused, generally safe  
- **misc** → catch‑all, unpredictable  
- **soc** and **talk** → noisy, controversial, often filtered  
- **alt** → unregulated, chaotic, sometimes brilliant, sometimes trash  
- **gnu** → ideological and technical, tied to free software culture  
- **biz** → practical, commercial, sometimes lightly moderated  

Understanding these reputations helps you predict where your posts will propagate and how they’ll be received.

---

# **9 Moderated vs Unmoderated**

A number of newsgroups require discussions to stay focused, civil, or on‑topic. To meet that need, **moderated groups** were created.

In a moderated group:

- Every submitted article is **emailed to the group’s moderator**.  
- The moderator reviews incoming posts and decides what gets published.  
- Approved posts are then injected into Usenet — either individually or as part of a periodic digest.  
- Many mailing‑list gateways work exactly this way; for example, the long‑running **Risks Digest**.

Moderation is not censorship; it is **curation**. The goal is to maintain signal quality, prevent spam, and keep discussions aligned with the group’s purpose.

By contrast, **unmoderated groups** accept posts directly from users. Articles propagate immediately, without review. This is the default mode for most of Usenet and is the reason unmoderated groups vary widely in tone, quality, and noise level.

Moderation is a tool — not a hierarchy. Any group, in any branch of the namespace, may be moderated if its charter calls for it.

---

## **10 news.groups & news.announce.newgroups**

Being a responsible participant in Usenet means understanding how the network evolves. Two groups form the core of that process:

### **news.groups**  
This is where discussion happens. Proposals for new groups, arguments for or against them, questions about charters, and debates about reorganizing hierarchies all occur here. It is the workshop where newsgroups are shaped before they exist.

### **news.announce.newgroups**  
This is the official record. Announcements of new group proposals, calls for discussion, calls for votes, and final results are posted here. It is moderated to ensure clarity, accuracy, and consistency.

Every Usenet user is **allowed and encouraged** to participate in group creation:

- You may join discussions in **news.groups**.  
- You may vote on new group proposals announced in **news.announce.newgroups**.  
- You may help shape the future of the namespace simply by being involved.

Participation is voluntary, but historically, it has been one of the defining acts of **good net.citizenship**.

---
