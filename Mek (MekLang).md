# Mek

*Mek* is a research prototype language and tool—**MekLang**—designed specifically for expressing **game mechanics** (state‑transition rules) in **2D, turn‑based, tile‑based, deterministic, complete‑information games**. It aims to give designers a Photoshop‑like environment for mechanics, letting them prototype interactions without writing full general‑purpose code. The authors frame Mek as a step toward giving designers a dedicated mechanics‑editing environment—analogous to how Photoshop empowers visual artists. The goal is to make mechanics iteration fast, expressive, and accessible. 

The authors demonstrate that Mek can succinctly implement a range of well‑known mechanics, including movement rules like the **bishop** or **knight** in chess, which serve as canonical examples of “mechanics as state‑transition definitions.”

---

### What Mek actually is  

The paper positions Mek against:

- **GVGAI** — flexible for describing whole games but too rigid for inventing new interactions  
- **General programming languages** — flexible but slow and require expertise  
- **Other DSLs** — often aimed at full game specification rather than mechanics prototyping

Mek’s niche is **mechanics‑first prototyping**, not full game authoring.  Mek consists of two parts:

- **MekLang** — a domain‑specific language that describes *mechanics*, not whole games. A mechanic is defined as a **state transition rule**: how the game state changes when a move is taken.  
- **Mek Tool** — an interfacing environment that executes MekLang mechanics and allows rapid iteration.

The authors explicitly distinguish:

- **Mechanics** → rules for how the game state evolves  
- **Games** → sets of mechanics + an end condition (no moves available)  

---

### Why Mek exists  
The paper argues that existing tools (e.g., GVGAI) focus on *game generation* or *AI benchmarking*, not on giving designers a flexible way to express new interactions. General‑purpose languages are still the most flexible—but require programming skill and slow iteration. Mek tries to fill that gap by:

- Abstracting away tedious implementation details  
- Enforcing a uniform structure (2D, turn‑based, tile‑based, deterministic)  
- Allowing designers to prototype mechanics quickly and succinctly  

---

### Future work 

- MekLang syntax  
- Mechanics vs games distinction  
- Comparison with GVGAI  
- Examples of mechanics implemented in Mek
