# 64‑glyph lattice symbol catalog

- **ID**  
- **Outer structure** \([n,m]\) and edges  
- **Inner structure** (if any)  
- **Glyph**  
- **Vertex sets / notes**

---

## **64‑Cell Generative Table**

| **ID** | **Outer** | **Inner** | **Glyph** | **Notes / Vertex Sets** |
|-------|-----------|-----------|-----------|--------------------------|
| **01 pent+dot** | n=5, E_cyc ∪ E_spk | [5,0] dots | circ | vₖ(5,R,a); inner dots at vₖ |
| **02 hex*x** | n=6, E_cyc ∪ E_star(6,2) | none | times | {6/2} = two triangles |
| **03 sq+tri** | n=4, E_cyc | n=3, E_cyc | tri | vₖ(4,R,a) + vₖ(3,r,a+π/6) |
| **04 circ-o** | n=8–12, E_cyc | none | circ | regular n‑gon approximating circle |
| **05 pent+plus** | n=5, E_cyc | none | plus | vₖ(5,R,a+π/10) |
| **06 tri-cluster** | n=3, E_cyc | n=3, E_cyc | none | two triangles, offset a |
| **07 star-tri** | n=3 | n=3 inverted | tri | vₖ(3,R,a) + vₖ(3,r,a+π) |
| **08 tri-circ** | n=3, E_cyc | none | circ | vₖ(3,R,a) |
| **09 pent-nest** | n=5, E_cyc | n=3, E_cyc | none | vₖ(5,R,a) + vₖ(3,r,a) |
| **10 hex-tri** | n=6, E_cyc | n=3, E_cyc | none | vₖ(6,R,a) + vₖ(3,r,a) |
| **11 sq-x** | n=4, E_cyc ∪ E_star(4,2) | none | times | diagonals = {4/2} |
| **12 diamond+** | n=4 rotated | none | plus | vₖ(4,R,a+π/4) |
| **13 flower-o** | n=12, E_cyc | none | circ | beaded ring |
| **14 sq-plus** | n=4, E_cyc | none | plus | vₖ(4,R,a) |
| **15 hex-star** | n=6, E_star(6,2) | none | none | two triangles: a, a+π/6 |
| **16 pent-o** | n=5, E_cyc | none | circ | vₖ(5,R,a) |
| **17 circ-plus** | n=8, E_cyc | none | plus | vₖ(8,R,a) |
| **18 tri-ring** | n=3, E_cyc | n=8–12 | circ | vₖ(3,R,a) + vₖ(N,r,a) |
| **19 pent-x** | n=5, E_cyc ∪ E_star(5,2) | none | times | pentagon + pentagram |
| **20 hex-o** | n=6, E_cyc | none | circ | vₖ(6,R,a) |
| **21 circ-plus** | n=10, E_cyc | none | plus | vₖ(10,R,a) |
| **22 pent-star** | n=5, E_star(5,2) | none | none | edges k→k+2 |
| **23 sq-tri** | n=4 | n=3 | tri | vₖ(4,R,a) + vₖ(3,r,a) |
| **24 hex-plus** | n=6, E_cyc | none | plus | vₖ(6,R,a) |
| **25 pent-star** | n=5, E_cyc ∪ E_star(5,2) | none | none | convex hull + pentagram |
| **26 hex-plus** | n=6, E_cyc ∪ E_spk | none | plus | spokes |
| **27 tri-dot** | n=3, E_cyc | [3,0] dots | none | vₖ(3,R,a) |
| **28 pent-o** | n=5, E_cyc | none | circ | vₖ(5,R,a) |
| **29 hex-x** | n=6, E_cyc ∪ E_star(6,2) | none | times | hex + long diameters |
| **30 tri-plus** | n=3, E_cyc | none | plus | vₖ(3,R,a) |
| **31 star-nest** | n=6, E_star(6,2) | n=6 | none | hexagram + inner hex |
| **32 circ-tri** | n=8, E_cyc | n=3 | none | vₖ(8,R,a) + vₖ(3,r,a) |
| **33 flower-hex** | n=12 | n=6 | none | vₖ(12,R,a) + vₖ(6,r,a) |
| **34 hex-star** | n=6, E_star(6,2) | none | none | {6/2} |
| **35 circ-x** | n=8, E_cyc | none | times | vₖ(8,R,a) |
| **36 pent-plus** | n=5, E_cyc | none | plus | vₖ(5,R,a) |
| **37 hex-o** | n=6, E_cyc | none | circ | vₖ(6,R,a) |
| **38 circ-tri** | n=10 | n=3 | none | vₖ(10,R,a) + vₖ(3,r,a) |
| **39 pent-x** | n=5, E_cyc | none | times | vₖ(5,R,a) |
| **40 tri-star** | n=3 | n=3 inverted | none | hexagram core |
| **41 hex-ring** | n=6 | n=12 | none | vₖ(6,R,a) + vₖ(12,r,a) |
| **42 pent-tri** | n=5 | n=3 | none | vₖ(5,R,a) + vₖ(3,r,a) |
| **43 hex-plus** | n=6, E_cyc | none | plus | vₖ(6,R,a) |
| **44 tri-o** | n=3, E_cyc | none | circ | vₖ(3,R,a) |
| **45 star-circ** | n=5, E_star(5,2) | none | circ | pentagram + circle |
| **46 hex-x** | n=6, E_star(6,3) | none | times | three long axes |
| **47 pent-star** | n=5, E_cyc ∪ E_star(5,2) | none | none | pentagon + pentagram |
| **48 circ-plus** | n=12, E_cyc | none | plus | vₖ(12,R,a) |
| **49 flower-o** | n=12, E_cyc | none | circ | beaded wreath |
| **50 pent+** | n=5, E_cyc ∪ E_spk | none | plus | pentagon + radii |
| **51 circ-tri** | n=8 | n=3 | none | vₖ(8,R,a) + vₖ(3,r,a) |
| **52 hex-star** | n=6, E_star(6,2) | none | none | {6/2} |
| **53 circ-o** | n=10, E_cyc | none | circ | vₖ(10,R,a) |
| **54 pent-x** | n=5, E_cyc | none | times | vₖ(5,R,a) |
| **55 hex-plus** | n=6, E_cyc | none | plus | vₖ(6,R,a) |
| **56 flower-circ** | n=12, E_cyc ∪ E_spk | none | circ | spokes + ring |
| **57 tri-circ** | n=3, E_cyc | none | circ | vₖ(3,R,a) |
| **58 circ-tri** | n=8 | n=3 | none | vₖ(8,R,a) + vₖ(3,r,a+π) |
| **59 diamond+** | n=4 rotated | none | plus | rhombus |
| **60 pent-plus** | n=5, E_cyc | none | plus | vₖ(5,R,a) |
| **61 flower-o** | n=12, E_cyc | none | circ | vₖ(12,R,a) |
| **62 tri-x** | n=3, E_cyc | none | times | vₖ(3,R,a) |
| **63 star-plus** | n=5 or 6, E_star(n,2) | none | plus | star + plus |
| **64 hex-ring** | n=6 | n=12 | circ | vₖ(6,R,a) + vₖ(12,r,a) |

## Generative grammar

These are the standard formulas that generate this family: concentric regular polygons / star polygons, vertex dots, and a center glyph. One shared notation, all 64 cells.

**Shared notation**

Cell center $\mathbf{c}$, scale $R$, rotation $\alpha$, time $t$ (cells slowly rotate / swap inner marks).

Regular $n$-gon vertices:

$$
\mathbf{v}_k(n,R,\alpha)=\mathbf{c}+R\begin{pmatrix}\cos\!\big(2\pi k/n+\alpha\big)\\ \sin\!\big(2\pi k/n+\alpha\big)\end{pmatrix},\quad k=0,\ldots,n-1.
$$

Edge sets:

- cycle (convex): $E_{\mathrm{cyc}}(n)=\{(k,\,k+1\bmod n)\}$
- star / skip: $E_{\mathrm{star}}(n,m)=\{(k,\,k+m\bmod n)\}$  (Schläfli $\{n/m\}$ if $\gcd(n,m)=1$)
- spokes: $E_{\mathrm{spk}}(n)=\{(\mathbf{c},\,\mathbf{v}_k)\}$

Center glyphs (drawn at radius $r<R$):

- circle $\circ$: $x^2+y^2=r^2$
- plus $+$: $\{|x|\le r,\,y=0\}\cup\{x=0,\,|y|\le r\}$
- times $\times$: $\{y=\pm x\}\cap\{|x|\le r/\sqrt{2}\}$
- triangle $\triangle$: $n=3$ cycle at radius $r$
- empty: $\emptyset$

A cell is $G=(\text{outer }n,m;\;\text{inner }n',m';\;\text{glyph})$.

**Useful closed forms**

Convex regular $n$-gon polar radius (support):

$$
\rho_n(\phi)=\frac{R\cos(\pi/n)}{\cos\!\big(\phi-\tfrac{2\pi}{n}\lfloor\tfrac{n\phi+\pi}{2\pi}\rfloor\big)}.
$$

Star $\{n/m\}$ vertices same as the $n$-gon; edges jump by $m$. Tip angle of $\{n/m\}$:

$$
\psi=\pi\,\frac{n-2m}{n}.
$$

Inner pentagram radius (for $\{5/2\}$ with outer $R$):

$$
r=R\cdot\frac{\cos(2\pi/5)}{\cos(\pi/5)}=R\cdot\frac{\sqrt{5}-1}{2}\cdot\frac{\cos(2\pi/5)}{\cos(\pi/5)/((\sqrt{5}-1)/2)}.
$$

Simpler golden-ratio form for the pentagram intersection radius:

$$
r=R/\varphi^2,\qquad \varphi=(1+\sqrt{5})/2.
$$

Hexagram $\{6/2\}$ is the union of two equilateral triangles:

$$
T_1=\{\mathbf{v}_k(3,R,\alpha)\},\quad T_2=\{\mathbf{v}_k(3,R,\alpha+\pi/3)\}.
$$

## **Universal generator**
Everything reduces to:

- **Outer polygon**: $[n,m]$ with edges from $E_{\mathrm{cyc}}(n)$ and/or $E_{\mathrm{star}}(n,m)$  
- **Inner polygon**: $[n',m']$ with its own cycle/star edges  
- **Center glyph**: one of $\{\emptyset,\circ,+,\times,\triangle\}$  
- **Placement**: radii $R$ and $r$, rotation $\alpha$, slow drift $\omega t$

This is exactly the minimal generative set for the entire 64‑glyph atlas.

---

## **The *canonical cell signature***  
Every glyph is:

$$
G = \big( [n,m],\; [n',m'],\; \text{glyph} \big)
$$

with the understanding:

- $[n,m]$ means “outer polygon with skip $m$”  
- $[n,1]$ is the convex cycle  
- $[n,2]$ is the standard star polygon (pentagram, hexagram, etc.)  
- $[n,3]$ is the long‑axis star (hex long diameters)  
- $[n',m']$ is optional inner structure  
- glyph is drawn at radius $r$

## 🧩 **Motif Families (Structural Clustering)**  
Each glyph belongs to one of eight structural families.

- **Pentagonal forms** — 01, 05, 09, 16, 19, 22, 25, 28, 36, 39, 42, 47, 50, 54, 60  
- **Hexagonal forms** — 02, 10, 15, 20, 24, 26, 29, 34, 37, 41, 43, 46, 52, 55, 64  
- **Triangular forms** — 06, 07, 08, 18, 27, 30, 40, 44, 57, 62  
- **Square forms** — 03, 11, 14, 23  
- **Circular forms** — 04, 17, 21, 32, 35, 38, 45, 48, 51, 53, 58  
- **Flower/star composites** — 13, 31, 33, 40, 45, 49, 52, 56, 61, 63  
- **Diamond forms** — 12, 59  
- **Ring forms** — 18, 41, 64  

---

### **Cells 01–08**
- **01 pent+dot** → $([5,1],[5,0],\circ)$
- **02 hex*x** → $([6,1],[6,2],\times)$
- **03 sq+tri** → $([4,1],[3,1],\triangle)$
- **04 circ-o** → $([N,1],[0,0],\circ)$
- **05 pent+plus** → $([5,1],[0,0],+)$
- **06 tri-cluster** → $([3,1],[3,1],\emptyset)$
- **07 star-tri** → $([3,1],[3,1],\triangle)$
- **08 tri-circ** → $([3,1],[0,0],\circ)$

---

### **Cells 09–16**
- **09 pent-nest** → $([5,1],[3,1],\emptyset)$
- **10 hex-tri** → $([6,1],[3,1],\emptyset)$
- **11 sq-x** → $([4,1],[4,2],\times)$
- **12 diamond+** → $([4,1],[0,0],+)$
- **13 flower-o** → $([12,1],[0,0],\circ)$
- **14 sq-plus** → $([4,1],[0,0],+)$
- **15 hex-star** → $([6,2],[0,0],\emptyset)$
- **16 pent-o** → $([5,1],[0,0],\circ)$

---

### **Cells 17–24**
- **17 circ-plus** → $([8,1],[0,0],+)$
- **18 tri-ring** → $([3,1],[N,1],\circ)$
- **19 pent-x** → $([5,1],[5,2],\times)$
- **20 hex-o** → $([6,1],[0,0],\circ)$
- **21 circ-plus** → $([10,1],[0,0],+)$
- **22 pent-star** → $([5,2],[0,0],\emptyset)$
- **23 sq-tri** → $([4,1],[3,1],\triangle)$
- **24 hex-plus** → $([6,1],[0,0],+)$

---

### **Cells 25–32**
- **25 pent-star** → $([5,1],[5,2],\emptyset)$
- **26 hex-plus** → $([6,1],[6,0],+)$
- **27 tri-dot** → $([3,1],[3,0],\emptyset)$
- **28 pent-o** → $([5,1],[0,0],\circ)$
- **29 hex-x** → $([6,1],[6,2],\times)$
- **30 tri-plus** → $([3,1],[0,0],+)$
- **31 star-nest** → $([6,2],[6,1],\emptyset)$
- **32 circ-tri** → $([8,1],[3,1],\emptyset)$

---

### **Cells 33–40**
- **33 flower-hex** → $([12,1],[6,1],\emptyset)$
- **34 hex-star** → $([6,2],[0,0],\emptyset)$
- **35 circ-x** → $([8,1],[0,0],\times)$
- **36 pent-plus** → $([5,1],[0,0],+)$
- **37 hex-o** → $([6,1],[0,0],\circ)$
- **38 circ-tri** → $([10,1],[3,1],\emptyset)$
- **39 pent-x** → $([5,1],[0,0],\times)$
- **40 tri-star** → $([3,1],[3,1],\emptyset)$

---

### **Cells 41–48**
- **41 hex-ring** → $([6,1],[12,1],\emptyset)$
- **42 pent-tri** → $([5,1],[3,1],\emptyset)$
- **43 hex-plus** → $([6,1],[0,0],+)$
- **44 tri-o** → $([3,1],[0,0],\circ)$
- **45 star-circ** → $([5,2],[0,0],\circ)$
- **46 hex-x** → $([6,3],[0,0],\times)$
- **47 pent-star** → $([5,1],[5,2],\emptyset)$
- **48 circ-plus** → $([12,1],[0,0],+)$

---

### **Cells 49–56**
- **49 flower-o** → $([12,1],[0,0],\circ)$
- **50 pent+** → $([5,1],[5,0],+)$
- **51 circ-tri** → $([8,1],[3,1],\emptyset)$
- **52 hex-star** → $([6,2],[0,0],\emptyset)$
- **53 circ-o** → $([10,1],[0,0],\circ)$
- **54 pent-x** → $([5,1],[0,0],\times)$
- **55 hex-plus** → $([6,1],[0,0],+)$
- **56 flower-circ** → $([12,1],[12,0],\circ)$

---

### **Cells 57–64**
- **57 tri-circ** → $([3,1],[0,0],\circ)$
- **58 circ-tri** → $([8,1],[3,1],\emptyset)$
- **59 diamond+** → $([4,1],[0,0],+)$
- **60 pent-plus** → $([5,1],[0,0],+)$
- **61 flower-o** → $([12,1],[0,0],\circ)$
- **62 tri-x** → $([3,1],[0,0],\times)$
- **63 star-plus** → $([n,2],[0,0],+)$
- **64 hex-ring** → $([6,1],[12,1],\circ)$

---

### 🔧 **Operator‑Type Signatures (RDG‑Compatible)**  
These signatures are **SID/PED operator‑glyph alignment**.

Glyphs fall into recognizable operator signatures:

- **Plus‑operators** — 04, 17, 21, 24, 26, 30, 36, 43, 48, 55, 60  
- **X‑operators** — 11, 19, 29, 35, 39, 46, 54, 62  
- **Dot‑operators** — 01, 27  
- **O‑operators** — 04, 16, 20, 21, 28, 32, 37, 45, 48, 53  
- **Star‑operators** — 07, 15, 22, 25, 31, 34, 40, 45, 47, 52, 63  

---

### 🧱 **Structural Depth (0–3 Layers)** 
Only two glyphs reach depth‑3 — **SID‑nest or PED‑nest** operators.

Representational depth:

- **Single‑layer primitives** — 02, 03, 07, 11, 14, 18, 23, 27, 30, 35, 40, 44, 57, 62  
- **Two‑layer composites** — 01, 04, 05, 06, 08, 10, 12, 15, 16, 17, 19, 20, 21, 22, 24, 25, 26, 28, 29, 32, 33, 34, 36, 37, 38, 39, 41, 42, 43, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 58, 59, 60, 61, 63, 64  
- **Three‑layer nests** — 09, 31  

---

### 🔗 **Symmetry Class** 
**Q‑slice modes**

Symbols fall into symmetry buckets:

- **Axial symmetry** — 03, 11, 14, 23, 35, 39, 43, 54, 62  
- **Radial symmetry** — 04, 13, 15, 17, 20, 21, 24, 32, 33, 34, 37, 41, 45, 48, 49, 52, 56, 61, 64  
- **Mixed symmetry** — 01, 05, 06, 07, 08, 09, 10, 12, 16, 18, 19, 22, 25, 26, 27, 28, 29, 30, 31, 36, 38, 40, 42, 44, 47, 50, 51, 53, 55, 57, 58, 59, 60, 63  


