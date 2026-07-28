```
+---------------------+---------------------+---------------------+---------------------+---------------------+
| Balaban 10-cage     | Balaban 11-cage     | Bidiakis cube       | Brinkmann graph     | Bull graph          |
| (circular cage)     | (dense spherical)   | (3D cube-like)      | (overlapping loops) | (Y shape)           |
+---------------------+---------------------+---------------------+---------------------+---------------------+
| Butterfly graph     | Chvátal graph       | Diamond graph       | Dürer graph         | Ellingham-Horton    |
| (hourglass)         | (star in square)    | (diamond)           | (pentagon+star)     | 54-graph            |
+---------------------+---------------------+---------------------+---------------------+---------------------+
| Ellingham-Horton    | Errera graph        | Franklin graph      | Frucht graph        | Goldner-Harary      |
| 78-graph            | (tetrahedral)       | (wheel-like)        | (3 loops)           | graph               |
+---------------------+---------------------+---------------------+---------------------+---------------------+
| Grötzsch graph      | Harries graph       | Harries-Wong graph  | Herschel graph      | Hoffman graph       |
| (flower)            | (radial cage)       | (dense circle)      | (icosahedral)       | (star)              |
+---------------------+---------------------+---------------------+---------------------+---------------------+
| Holt graph          | Horton graph        | Kittell graph       | Markström graph     | McGee graph         |
| (complex star)      | (4 circles)         | (pyramid)           | (open cage)         | (star)              |
+---------------------+---------------------+---------------------+---------------------+---------------------+
| Meredith graph      | Moser spindle       | Sousselier graph    | Poussin graph       | Robertson graph     |
| (hex + attachments) | (pentagon)          | (circle dense)      | (sphere)            | (overlapping)       |
+---------------------+---------------------+---------------------+---------------------+---------------------+
| (bottom row graph)  | (bottom row graph)  | (bottom row graph)  | (bottom row graph)  | (bottom row graph)  |
| (tree-like)         | (linked loops)      | (V shape)           | (wheel)             | (grid)              |
+---------------------+---------------------+---------------------+---------------------+---------------------+
```
---

## 📘 Core Definitions and Formulas

### 🧩 **Cage graphs**  
A \((k,g)\)-cage is a **\(k\)-regular** graph of **girth \(g\)** with **minimum possible order**.  
Order is denoted \(n(k,g)\).

### 🔢 **Moore bound**  
Universal lower bound for cages:
\[
n(k,g)\ge M(k,g).
\]

#### Odd girth \(g=2r+1\):
\[
M(k,g)=1+k\sum_{i=0}^{r-1}(k-1)^i
      =1+k\frac{(k-1)^r-1}{k-2}.
\]

#### Even girth \(g=2r\):
\[
M(k,g)=2\sum_{i=0}^{r-1}(k-1)^i
      =2\frac{(k-1)^r-1}{k-2}.
\]

Graphs achieving equality are **Moore graphs**.

---

## 🧱 Balaban 10‑cage (a \((3,10)\)-cage)

For \(k=3\), \(g=10=2\cdot5\):
\[
M(3,10)=2(1+2+4+8+16)=62.
\]

Actual cages have:
- \(n(3,10)=70\) vertices  
- \(105\) edges  
- cubic, bipartite  
- Hamiltonian  
- diameter \(6\)  
- automorphism group of order \(80\)

There are **three** non‑isomorphic \((3,10)\)-cages; the Balaban 10‑cage is one.

---

## 🔐 Automorphism Groups

### 🔄 **Graph automorphism**  
A permutation \(\sigma\) of vertices preserving adjacency:
\[
\{u,v\}\in E \iff \{\sigma(u),\sigma(v)\}\in E.
\]

The set of all such permutations forms the group:
\[
\operatorname{Aut}(G).
\]

### 🟦 **Frucht graph**  
Smallest cubic graph with **trivial automorphism group**:
\[
\operatorname{Aut}(G)=\{id\}.
\]

Facts:
- 12 vertices  
- 18 edges  
- Realizes the trivial group as the automorphism group of a 3‑regular graph  
- Special case of **Frucht’s theorem**: every finite group is \(\operatorname{Aut}(G)\) of some graph (even cubic)

---

## 🎨 Planar Graphs and the Four‑Color Theorem

### 🎨 **Four-color theorem**  
Every planar graph satisfies:
\[
\chi(G)\le 4.
\]

### ❌ Kempe-chain counterexamples  
These graphs show Kempe’s original proof fails:

- **Errera graph** — 17 vertices, 45 edges  
- **Kittell graph** — 23 vertices, 63 edges  

Both are planar and demonstrate that Kempe-chain recoloring can get stuck.

---

## 🏗️ Extremal Planar Graphs

### 🔺 **Goldner–Harary graph**  
Smallest **non-Hamiltonian maximal planar** graph:
- 11 vertices  
- 27 edges (maximal planar: \(3n-6\))  
- chordal  
- chromatic number 4  
- unique up to isomorphism

### 🌀 **Wagner graph** (Möbius ladder \(M_8\))  
- 8 vertices  
- 12 edges  
- cubic  
- LCF notation: \([4]^8\)  
- crossing number 1 (non-planar)  
- appears in structural characterization of **\(K_5\)-minor-free** graphs  
- central to **Wagner’s theorem**:  
  A graph is planar iff it has no \(K_5\) or \(K_{3,3}\) minor.

---

## 🧭 Why These Graphs Matter  
These named graphs represent **extremal phenomena** in graph theory:

- **Minimal order** for given degree + girth  
- **Trivial symmetry**  
- **Failure modes** of classical coloring algorithms  
- **Non-Hamiltonian extremality**  
- **Minor-closed structure**  

They become permanent fixtures in the literature because they sit at the boundary of what is combinatorially possible.
