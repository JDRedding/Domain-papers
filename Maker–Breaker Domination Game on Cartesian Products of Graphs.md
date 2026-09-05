## 📄 **Maker–Breaker Domination Game on Cartesian Products of Graphs**  
- *(Pakanun Dokyeesun — arXiv:2310.04103)*
- **790.1 Game Design / Combinatorial Game Theory**

### **Concept Overview**  
This paper extends the Maker–Breaker domination game into the structural territory of **Cartesian product graphs**.  
The game remains the same:

- **Dominator** aims to claim a **dominating set**.  
- **Staller** aims to claim a **full closed neighborhood** of some vertex, isolating it.

The focus here is not complexity (as in the 2018 paper), but **structural outcomes** and **win‑speed metrics** on product graphs.

The paper defines four quantitative invariants:
- $gmb(G)$: Dominator’s minimum moves in the D‑game  
- $gmb'(G)$: Dominator’s minimum moves in the S‑game  
- $gsmb(G)$: Staller’s minimum moves in the D‑game  
- $gsmb'(G)$: Staller’s minimum moves in the S‑game  

These measure **how fast** the winner can force victory under optimal play.

---

### **Key Results**

#### **1. Dominator wins on grid graphs $P_m \square P_n$**  
For all positive integers $m,n$, Dominator wins **both** the D‑game and S‑game.  
The paper computes exact values of$\gmb$ and$\gmb'$ for:
- $m = 3$  
- $3 \le n \le 5$

These are the smallest nontrivial grids where move‑optimal play becomes intricate.

#### **2. Structural victory condition via path covers**  
If **both** graphs $G$ and $H$ admit **nontrivial path covers**, then Dominator wins on  

$$
G \square H
$$

in **both** starting variants.

This is a broad structural theorem: path covers give Dominator a “layer‑sweep” strategy across the product.

#### **3. Complete bipartite products $K_{m,n} \square K_{m',n'}$**  
The paper determines the winner in **both** D‑game and S‑game for **all** positive integers $m,n,m',n'$.  
This yields a full classification for a highly symmetric family.

#### **4. Exact formulas for products of stars**  
For graphs of the form $S_k \square S_\ell$, the paper provides **closed‑form expressions** for:

- $gmb(G)$  
- $gmb'(G)$  
- $gsmb(G)$  
- $gsmb'(G)$

This is the most explicit part of the paper, giving precise win‑speed formulas rather than bounds.

---

### **Significance**  
This work provides:
- structural criteria guaranteeing Dominator’s victory on product graphs,  
- explicit win‑speed calculations on grids and star products,  
- and a complete winner classification for bipartite products.

It complements the 2018 foundational paper by shifting from **complexity and strategy construction** to **structural graph classes and quantitative game outcomes**.

Together, the two papers form a coherent pair:
- **2018:** defines the game, proves PSPACE‑completeness, introduces pairing strategies.  
- **2023:** analyzes Cartesian products, computes exact move counts, and establishes broad structural win conditions.

---

### **Citation**  
Dokyeesun, P.  
*Maker–Breaker domination game on Cartesian products of graphs.*  
arXiv:2310.04103 (2023).  
DOI: 10.48550/arXiv.2310.04103.
