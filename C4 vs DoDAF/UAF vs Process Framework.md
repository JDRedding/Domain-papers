# 🧩 **C4 vs DoDAF/UAF vs Process Frameworks**  
**Architecture altitude** — the difference between *software‑system diagramming* (C4) and *enterprise/mission/capability architecture* (DoDAF/UAF). Everything else — ITIL, GMP, ISO9000, Six Sigma — was noise from mixing unrelated ontologies.

Ultimately clarified:

- C4 is a **software‑system diagramming convention**.  
- ITIL/GMP/ISO9000/Six Sigma are **process frameworks**.  
- Neither of these produce **Operational Views (OV)** or **Capability Views (CV)**.  
- DoDAF/UAF are the frameworks that define and require OV/CV/SV for **enterprise and mission architecture**.  
- Therefore, C4 cannot map to OV or CV—**not directly, indirectly, tangentially, or as an interface**.

This is not a matter of opinion or preference; it is a matter of **framework scope and architectural altitude**.

---

## 1. **Architecture Altitude: The Core Issue**  
Modern architecture frameworks operate at different “altitudes.”  
These altitudes define *what* is being modeled:

- **Capability View (CV)** — enterprise‑level capabilities, strategic outcomes, dependencies, and delivery timing.  
- **Operational View (OV)** — mission behavior, operational nodes, activities, performers, and information flows.  
- **System View (SV)** — systems, subsystems, components, interfaces, and technical structure.

These three views form the backbone of **DoDAF** and **UAF**, which are used for **enterprise and systems‑of‑systems architecture**.

---

## 2. **What C4 Actually Covers**  
The **C4 Model** is a **software architecture diagramming technique**.  
Its abstractions are:

- **Software System → SV‑1**  
- **Containers → SV‑2**  
- **Components → SV‑4**  
- **Code → SV‑C**

Even its “supporting diagrams” (system landscape, dynamic, deployment) remain **system‑centric**.

**C4 does not produce OV or CV.**  
It does not model missions, capabilities, enterprise outcomes, or systems‑of‑systems behavior.

C4 is intentionally **developer‑friendly**, notation‑independent, and focused on **static structure of a single software system**.

---

## 3. **What DoDAF and UAF Cover**  
**DoDAF** (Department of Defense Architecture Framework) and **UAF** (Unified Architecture Framework) define the full set of enterprise‑architecture viewpoints:

- **CV** — capability taxonomy, dependencies, phasing, mapping  
- **OV** — operational nodes, activities, mission threads  
- **SV** — systems, interfaces, resources  
- **SvcV** — services  
- **StdV** — standards  
- **AcV** — acquisition views  

UAF is the **modern, unified meta‑model** that integrates DoDAF, MODAF, and NAF.  
Most MBSE tools (Cameo, MagicDraw, EA) implement **UAF**, even when programs say “DoDAF.”

---

## 4. **Why Process Frameworks Don’t Fill the Gap**  
Frameworks like:

- **ITIL**  
- **GMP**  
- **ISO9000**  
- **Six Sigma**  
- **Agile**

are **process‑control and quality‑management systems**.  
They define *how work is done*, not *what the enterprise is* or *how missions operate*.

They do **not** produce:

- capability models  
- operational node maps  
- mission threads  
- systems‑of‑systems architecture  
- enterprise traceability  

They are orthogonal to OV/CV/SV.

---

## 5. **The Conceptual Bridge**  
The key conceptual realization is:

- **C4 = System View (SV)**  
- **Process frameworks = governance/quality**  
- **DoDAF/UAF = enterprise + mission + system architecture**  

C4 is useful and valid—but only at **system altitude**.  
It cannot substitute for **OV** or **CV**, which are required for modeling **systems‑of‑systems**, **mission behavior**, and **enterprise capabilities**.

---

# Future work

- **A formal C4 → SV mapping**  
- **A clean OV/CV/SV comparison table**  
- **A short article explaining architecture altitude**
