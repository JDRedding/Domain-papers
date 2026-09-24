# **Relational Dynamic Geometry (RDG)**  
## **One‑Page Core Summary**

RDG is the **base relational geometry** underlying the system.  
It is **not** SID, **not** PED, and **not** MFE.  
SID and PED are **projections** of RDG;  
MFE is an **engine attached to RDG’s solution sets**.

RDG itself consists of:

- **Objects**  
- **Relations**  
- **Substrate modes**  
- **Primitive signatures**  
- **Operator algebra (RDGA)**  
- **Geometric carriers**  
- **Dynamic recomputation (Γ)**  

SID and PED are *views* of RDG;  
MFE is *external* and acts on RDG’s carrier geometry.

---

# **1. Core RDG Object**

RDG is a directed relational geometry:

\[
G=(\mathrm{Obj},\mathrm{Rel})
\]

with:

\[
\mathrm{Rel}\subseteq\mathrm{Obj}\times\mathrm{Obj}
\]

and directed edges:

\[
a\to b \;\iff\; (a,b)\in\mathrm{Rel}.
\]

RDG is **not** a six‑layer decomposition.  
SID and PED are **derived** from RDG but do **not** define it.

---

# **2. RDG Purpose**

RDG provides:

- A **geometry of relations**  
- A **substrate of primitive modes**  
- A **canonical operator algebra (RDGA)**  
- A **carrier‑based geometric interpretation**  
- A **dynamic recomputation law (Γ)**  

RDG ensures:

- relational coherence  
- algebraic closure  
- geometric consistency  
- morphism‑preserving transformations  
- compatibility with external engines (MFE)  

RDG is the **foundation** on which SID, PED, and MFE operate.

---

# **3. RDG Axioms**

### **(A) Directedness**

\[
(a,b)\in\mathrm{Rel} \;\Rightarrow\; a\to b
\]

### **(B) Sub-RDG Inclusion**

\[
G\subseteq H
\iff
\mathrm{Obj}(G)\subseteq\mathrm{Obj}(H)
\;\text{and}\;
\mathrm{Rel}(G)\subseteq\mathrm{Rel}(H)
\]

### **(C) Morphisms**

A map \(f:G\to H\) is an RDG morphism if:

\[
\begin{aligned}
(\mathrm{M1})&\quad a\to b\text{ in }G \Rightarrow f(a)\to f(b)\text{ in }H\\
(\mathrm{M2})&\quad f\text{ creates no extra edges}
\end{aligned}
\]

### **(D) Substrate Automorphisms**

\[
\mathrm{Aut}(M,R)\cong S_3\times D_4
\]

### **(E) Lawful Cardinalities**

\[
K_{\mathrm{lawful}}=\{3,4\}
\]

\(|K|=3\) → RDG geometry  
\(|K|=4\) → MFE engine

---

# **4. RDG Mapping Algorithm**

Given any symbol \(X\):

1. If \(X\) is a node or primitive → belongs to **Obj**  
2. If \(X\) is a directed relation → belongs to **Rel**  
3. If \(X\) is a higher‑arity relation → belongs to **RDGA**  
4. If \(X\) is a carrier polynomial → belongs to **\Phi(R)**  
5. If \(X\) is a solution set → belongs to **\mathcal{S}(R)**  
6. If \(X\) is a recomputation → belongs to **Γ**

SID and PED classification rules apply **after** RDG is defined.

---

# **5. RDG Interpretation**

RDG is the **meta‑geometry**:

- RDG describes **what exists** (Obj) and **how it relates** (Rel).  
- RDGA describes **how relations combine**.  
- Carriers describe **geometric meaning**.  
- Γ describes **geometric evolution**.  
- SID is a **projection** of RDG.  
- PED is an **internal triad** of MFE.  
- MFE is an **engine attached to RDG’s solution sets**.

RDG = foundational geometry  
SID = structural slice  
PED = energetic slice  
MFE = dynamical engine

---

# **6. RDG in Practice**

RDG is used to:

- define relational structures  
- classify morphisms  
- compute geometric carriers  
- perform algebraic elimination  
- generate solution sets  
- support external engines (MFE)  
- provide a stable backbone for:
  - Casimir/DCE  
  - field theory  
  - conceptual frameworks  
  - game engines  
  - dynamical systems  
  - RME (via MFE attachment)

---

# **7. Appendix: Mathematical RDG Definition**

### RDG object

\[
G=(\mathrm{Obj},\,\mathrm{Rel})
\]

\[
\mathrm{Rel}\subseteq\mathrm{Obj}\times\mathrm{Obj}
\]

\[
a\to b \iff (a,b)\in\mathrm{Rel}
\]

### Sub-RDG

\[
G\subseteq H
\iff
\mathrm{Obj}(G)\subseteq\mathrm{Obj}(H)
\;\text{and}\;
\mathrm{Rel}(G)\subseteq\mathrm{Rel}(H)
\]

### Morphisms

\[
\begin{aligned}
(\mathrm{M1})&\; a\to b\Rightarrow f(a)\to f(b)\\
(\mathrm{M2})&\; f\text{ creates no extra edges}
\end{aligned}
\]

### Substrate (7 DOFs)

\[
M=\{1,2,3,4,5,6,7\}=A\cup B
\]

Primitive signature:

\[
R=\{T(x),C(x),E(x,y),\mathrm{Tri}(x,y,z)\}
\]

Automorphism group:

\[
\mathrm{Aut}(M,R)\cong S_3\times D_4
\]

### RDGA (algebra)

\[
R\subseteq\mathrm{Obj}^n
\]

Operators:

\[
\begin{aligned}
R\cup S,\; R\cap S,\; \neg R,\; \pi_i(R),\; R\circ S
\end{aligned}
\]

Carrier algebra:

\[
\Phi(R)\subseteq\mathbb{R}[x_1,\dots,x_n]
\]

Solution sets:

\[
\mathcal{S}(R)=\{x\mid f(x)=0\;\forall f\in I_R\}
\]

### RDG dynamics

\[
\Gamma:\mathrm{State}_t\to\mathrm{State}_{t+1}
\]

Γ recomputes:

- dependent objects  
- carriers  
- solution sets  

### RDG decomposition (SID/PED projections)

\[
\mathrm{RDG}(G)=\bigl(S(G),I(G),D(G)\bigr)\oplus\bigl(P(G),E(G),D(G)\bigr)
\]

These are **projections**, not part of RDG itself.
