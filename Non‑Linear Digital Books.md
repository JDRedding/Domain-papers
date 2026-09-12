## Non‑Linear Digital Books
: A Modern Architectural Pattern

Non‑linear electronic books—whether interactive fiction, encyclopedias, manuals, or multi‑chapter research works—now follow a **standardized web architecture** that replaces the older HTML *frameset* model. The modern pattern is built around a **single chrome shell**, **data‑driven structure**, and **stateful navigation**, enabling flexible, dynamic, and extensible digital reading systems.

The system’s core rule is:

**The chrome never changes.  
Only the data changes.**

To create a new book or paper:

- point `toc.json` at a new set of atoms  
- keep `reader.js` untouched  
- reuse the same chrome shell

This is the modern successor to framesets:  
**a stable container with dynamic, data‑driven content.**

## Overview

This architecture forms a **generalized digital book shell**:

- **Structure (SID)**: chrome layout, TOC, router  
- **Evaluation (PED)**: atom loading, gating, state mutation  
- **Dynamics**: hash transitions, responsive behavior, theme changes  

Because these components are modular and data‑driven, the same shell can host:

- interactive fiction  
- encyclopedias  
- manuals  
- documentation  
- multi‑chapter papers  
- educational modules  
- branching narrative systems  

The chrome remains constant; only `toc.json` and the atom directory change.

---

## **1. Structural Shift: Frameset → Grid Chrome**

Modern digital books no longer use `<frameset>` layouts. Instead, they rely on **CSS Grid** to define persistent regions such as a sidebar and a main reading pane. These regions are part of a single HTML document, making the layout responsive, themable, and compatible with contemporary browsers and devices. This chrome remains constant across all books or collections.

- **CSS Grid regions** provide the persistent chrome.  
- **Responsive sidebar drawers** allow mobile‑friendly navigation.  
- **Dark/light theme switching** follows OS preferences automatically.

---

## **2. Data‑Driven Table of Contents**

Instead of maintaining multiple HTML documents, the Table of Contents (TOC) is stored in a **single JSON file** (`toc.json`). Each entry describes:

- an identifier  
- a title  
- an optional classification (e.g., Dewey number)  
- a reference to a content atom  
- optional gating requirements

This makes the TOC a **structured dataset**, not a manually synchronized document.

- **JSON TOC design**  
- **Dewey classification field**  
- **Gating requirements**  

---

## **3. Atom‑Based Content Model**

Content is broken into **atoms**, each stored as a separate JSON file. An atom contains:

- a title  
- a body (HTML or Markdown)  
- optional state mutations (e.g., setting flags)

Atoms are fetched dynamically and injected into the main viewing region.

- **Atom file design**  
- **Markdown parse step**  

This modular structure supports encyclopedias, branching narratives, manuals, and research papers equally well.

---

## **4. Hash‑Based Navigation**

Navigation uses the URL hash (`#id`) to identify which atom to load. A **hash router** listens for changes and fetches the corresponding atom.

- Enables browser back/forward buttons  
- Avoids full page reloads  
- Keeps navigation state in the URL  

- **Hash router design**  

This replaces frame targeting from older web conventions.

---

## **5. Local State and Gating**

Reader progress, prerequisites, and unlock conditions are stored in **localStorage**. TOC entries can specify required flags, enabling:

- branching logic  
- progressive disclosure  
- “expert mode” sections  
- choose‑your‑own‑adventure paths  
- manuals with unlockable advanced modules

- **LocalStorage state patterns**  

This state layer is independent of the chrome.

---

## **6. Optional Content‑Plane Extensions**

These operate entirely at the content and evaluation layer. These additions enhance functionality without altering the chrome:

- **Reverse index**: cross‑references (“also from…”)  
  - **Reverse index**  

- **Compose export**: concatenating multiple atoms into a printable page  
  - **Compose export**  

- **Dewey range queries**: filtering TOC entries by classification  
  - **Dewey range query**  

- **Markdown parsing**: allowing atoms to be authored in Markdown  
  - **Markdown parse**  

---
