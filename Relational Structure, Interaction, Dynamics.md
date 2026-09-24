# **Structure–Interaction–Dynamics (SID)**  
## **One‑Page Core Summary**

SID is the **geometry‑side triad** of an RDG $G$.  
It is **not** the engine (MFE) and **not** the substrate (RDG primitives).  
SID is a **three‑layer relational decomposition**:

- **Structure**  
- **Interaction**  
- **Dynamics**

Each layer is itself an RDG, and they satisfy:

$$
{SID}(G)=\bigl(S(G),\,I(G),\,D(G)\bigr)
$$

with nesting:

$$
S(G)\subseteq I(G)\subseteq D(G)\subseteq G.
$$

SID is a **closure system** on the relations of $G$.

---

# **1. Core SID Object**

SID decomposes an RDG $G=(\mathrm{Obj},\mathrm{Rel})$ into:

$$
S(G)=(\mathrm{Obj}(G),\mathrm{Rel}_S),\qquad
I(G)=(\mathrm{Obj}(G),\mathrm{Rel}_I),\qquad
D(G)=(\mathrm{Obj}(G),\mathrm{Rel}_D)
$$

with:

$$
\mathrm{Rel}_S\subseteq\mathrm{Rel}_I\subseteq\mathrm{Rel}_D\subseteq\mathrm{Rel}(G).
$$

SID is a **three‑tier closure** of the ambient RDG.

---

# **2. SID Purpose**

SID provides:

- A **structural skeleton** of the RDG  
- A **functional interaction layer**  
- A **dynamic propagation layer**  
- A **canonical nesting** of relational complexity  
- A **geometry‑side classification** of relations  

SID ensures:

- structural coherence  
- interaction consistency  
- dynamic admissibility  
- monotone refinement  
- idempotent closure  

SID is the **geometric projection** of RDG.

---

# **3. SID Axioms**

### **(A) Nesting**

$$
S(G)\subseteq I(G)\subseteq D(G)\subseteq G
$$

### **(B) Idempotence**

$$
S(S(G))=S(G),\quad
I(I(G))=I(G),\quad
D(D(G))=D(G)
$$

### **(C) Monotonicity**

$$
G\subseteq H\Rightarrow
S(G)\subseteq S(H),\;
I(G)\subseteq I(H),\;
D(G)\subseteq D(H)
$$

### **(D) Compatibility**

$$
S\text{ constrains }I,\qquad
I\text{ constrains }D
$$

### **(E) Minimality**

Each layer is the **minimal** RDG satisfying its closure rules.

---

# **4. SID Mapping Algorithm**

Given a relation $r\in\mathrm{Rel}(G)$:

1. **Assign S(G)**  
   - invariant  
   - definitional  
   - geometric  
   - canonical  

2. **Assign I(G)**  
   - operational  
   - coupling  
   - mixing  
   - functional dependence  

3. **Assign D(G)**  
   - inferred transitions  
   - path completion  
   - propagation  
   - evolution/outcome  

4. **Enforce nesting**

$$
S\subseteq I\subseteq D
$$

5. **Close under rules**

$$
I(G)=\overline{S(G)}^{\mathrm{int}},\qquad
D(G)=\overline{I(G)}^{\mathrm{dyn}}.
$$

---

# **5. SID Interpretation**

SID is the **geometry‑side decomposition** of RDG:

- **S(G)** = invariant structure  
- **I(G)** = operational interaction  
- **D(G)** = dynamic propagation  

SID does **not** include:

- RDG substrate  
- RDGA algebra  
- carriers  
- Γ‑update  
- MFE engine  
- PED triad  

SID is purely the **three‑layer closure** of RDG’s relations.

---

# **6. SID in Practice**

SID is used to:

- classify RDG relations  
- define structural vs. operational vs. dynamic edges  
- analyze relational complexity  
- enforce closure rules  
- support external modules (MFE, PED)  
- provide geometric signals (curvature, tension, drift)  

SID is the **geometric backbone** for:

- conceptual frameworks  
- dynamical systems  
- relational models  
- field‑like engines (MFE)  
- RDG‑based simulations  

---

# **7. Appendix: Mathematical SID Definition**

### Layer objects

$$
\begin{aligned}
S(G)&=(\mathrm{Obj}(G),\mathrm{Rel}_S)\\
I(G)&=(\mathrm{Obj}(G),\mathrm{Rel}_I)\\
D(G)&=(\mathrm{Obj}(G),\mathrm{Rel}_D)
\end{aligned}
$$

with:

$$
\mathrm{Rel}_S\subseteq\mathrm{Rel}_I\subseteq\mathrm{Rel}_D\subseteq\mathrm{Rel}(G).
$$

### Closure rules

$$
I(G)=\overline{S(G)}^{\mathrm{int}},\qquad
D(G)=\overline{I(G)}^{\mathrm{dyn}}.
$$

### SID‑preserving morphisms

Weak:

$$
f(S(G))\subseteq S(H),\quad
f(I(G))\subseteq I(H),\quad
f(D(G))\subseteq D(H)
$$

Strong:

$$
f(S(G))=S(f(G)),\quad
f(I(G))=I(f(G)),\quad
f(D(G))=D(f(G))
$$

### Invariants

$$
|S|\le|I|\le|D|
$$

Optional geometric scalars:

$$
\mathrm{curvature}_S(G),\quad
\mathrm{tension}_I(G),\quad
\mathrm{drift}_D(G)
$$

### Classification rule

$$
r\mapsto
\begin{cases}
S & \text{invariant, geometric, canonical}\\
I & \text{operational, coupling, mixing}\\
D & \text{dynamic, outcome, propagation}
\end{cases}
$$

### Minimal examples

**A.**

$$
\mathrm{Obj}=\{a,b,c\},\quad
\mathrm{Rel}=\{a\to b,\,b\to c,\,a\to c\}
$$

$$
S=\{a\to b\},\quad
I=\{a\to b,\,b\to c\},\quad
D=\{a\to b,\,b\to c,\,a\to c\}
$$

**B.**

$$
\mathrm{Obj}=\{x,y\},\quad
\mathrm{Rel}=\{x\to y\}
$$

$$
S=I=D=\{x\to y\}
$$
