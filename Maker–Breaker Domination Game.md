## 📄 **Maker–Breaker Domination Game**  
- *(Duchêne, Gledel, Parreau, Renault — arXiv:1807.09479)*
- **790.1 Game Design / Combinatorial Game Theory**

### **Concept Overview**  
The **Maker–Breaker domination game** is a two‑player positional game played on a graph \(G\).  
Players alternate selecting **unplayed vertices**:

- **Dominator (Maker)** attempts to build a **dominating set**.  
- **Staller (Breaker)** attempts to **block domination** by occupying vertices so that some vertex’s **entire closed neighborhood** is claimed by her, making it unreachable for Dominator.

The game is asymmetric:  
- Dominator’s goal is **global** (dominate all vertices).  
- Staller’s goal is **local** (isolate one vertex).

This makes the game structurally different from classical Maker–Breaker games on uniform hypergraphs.

---

### **Key Results (from the paper)**

#### **1. Complexity**
Determining the winner of the Maker–Breaker domination game is **PSPACE‑complete**, even on:
- **bipartite graphs**,  
- **split graphs**.

This places the game among the hardest alternating‑move graph decision problems.

#### **2. Polynomial‑time solvable classes**
The winner can be computed in polynomial time for:
- **cographs** (graphs with no induced \(P_4\)),  
- **trees**.

These classes admit recursive decompositions enabling dynamic programming.

#### **3. Pairing Dominating Sets**
The authors introduce the **pairing dominating set**, a structural tool giving Dominator a constructive strategy.

A pairing dominating set is a collection of **vertex pairs** \(\{x_i, y_i\}\) such that every vertex \(v\) is adjacent to **both** vertices of at least one pair.

This yields a **paired response strategy**:
- If Staller plays in one vertex of a pair, Dominator plays the other.  
- This guarantees domination of all vertices.

This concept is now foundational in later Maker–Breaker domination research.

---

### **Significance**
This paper establishes:
- the **formal definition** of the game,  
- the **complexity landscape**,  
- the first **algorithmic strategies**,  
- and the structural framework used in later work (e.g., Cartesian products, star products, bipartite products).

It is the canonical starting point for the Maker–Breaker domination game literature.

---

### **Citation**
Duchêne, E.; Gledel, V.; Parreau, A.; Renault, G.  
*Maker–Breaker domination game.*  
arXiv:1807.09479 (2018).  
MSC: 05C57, 05C69, 91A43.
