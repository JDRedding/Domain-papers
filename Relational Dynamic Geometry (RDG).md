# **Relational Dynamic Geometry (RDG)**  
## **One‑Page Core Summary**

RDG is the **tri‑mode relational engine** that organizes any system into three complementary layers:

- **Structure**  
- **Interaction**  
- **Dynamics**  

and simultaneously into the **dual triad**:

- **Power**  
- **Evaluation**  
- **Dynamics**  

SID and PED are **two projections** of the same RDG object.

---

# **1. Core RDG Object**

$$
\mathrm{RDG}(G)=(S(G),I(G),D(G))\;\oplus\;(P(G),E(G),D(G))
$$

RDG is a **six‑layer relational decomposition** with a shared Dynamics layer.

---

# **2. RDG Purpose**

RDG provides:

- A **geometry of relations**  
- A **canonical decomposition** of any system  
- A **closure‑preserving operator framework**  
- A **dual view**: structural vs. energetic  
- A **single dynamic layer** that integrates both

RDG ensures that any system remains:

- structurally coherent  
- interaction‑consistent  
- dynamically admissible  
- evaluatively stable  
- causally interpretable  

---

# **3. RDG Axioms**

### **(A) Nesting**

$$
S\subseteq I\subseteq D,\qquad P\subseteq E\subseteq D
$$

### **(B) Idempotence**

$$
S(S(G))=S(G),\quad I(I(G))=I(G),\quad D(D(G))=D(G)
$$

$$
P(P(G))=P(G),\quad E(E(G))=E(G)
$$

### **(C) Monotonicity**

$$
G\subseteq H\Rightarrow
S(G)\subseteq S(H),\;
I(G)\subseteq I(H),\;
D(G)\subseteq D(H)
$$

$$
P(G)\subseteq P(H),\;
E(G)\subseteq E(H)
$$

### **(D) Compatibility**

$$
S\text{ constrains }I,\qquad I\text{ constrains }D
$$

$$
P\text{ constrains }E,\qquad E\text{ constrains }D
$$

### **(E) Dual Consistency**
SID and PED must agree on the dynamic layer:

$$
D_{\mathrm{SID}}(G)=D_{\mathrm{PED}}(G)
$$

---

# **4. RDG Mapping Algorithm**

Given any symbol $X$:

1. **Assign SID layer**  

   - If geometric/spectral/canonical → **S**  
   - If coupling/mixing → **I**  
   - If evolution/outcome → **D**  

2. **Assign PED layer**  

   - If capacity/intensity → **P**  
   - If assessment/moderation → **E**  
   - If evolution/outcome → **D**  

3. **Enforce dual nesting**  

   $$
   S\subseteq I\subseteq D,\qquad P\subseteq E\subseteq D
   $$

4. **Check compatibility**  
   SID‑D and PED‑D must match.

---

# **5. RDG Interpretation**

RDG is the **meta‑geometry**:

- SID describes **what the system is and how it behaves**.  
- PED describes **what the system can exert and how it is judged**.  
- RDG binds them through a **shared dynamic evolution**.

SID = structural geometry  
PED = energetic geometry  
RDG = relational geometry binding both

---

# **6. RDG in Practice**

RDG is used to:

- classify equations  
- organize operators  
- define admissible transformations  
- ensure dynamic consistency  
- unify structural and energetic views  
- provide a stable relational backbone for systems like:
  - Casimir effect  
  - DCE  
  - field theory  
  - game engines  
  - conceptual frameworks  
  - dynamical systems  

---

# **7. Appendix: Mathematical RDG Definition**

**RDG** (Relational Directed / Dynamic Geometry) is the base object. SID and MFE act *on* it; they are not part of the RDG definition itself.

### RDG object
That is RDG alone: a directed relational geometry $G=(\mathrm{Obj},\mathrm{Rel})$ with morphisms, a 7-mode substrate, and an operator algebra $\Phi$ on relations. SID is the slice of $G$; MFE is the engine attached to $\mathcal{S}(R)$.

$$
G=(\mathrm{Obj},\,\mathrm{Rel})
$$

$$
\mathrm{Rel}\subseteq\mathrm{Obj}\times\mathrm{Obj}
$$

$$
a\to b \;\iff\; (a,b)\in\mathrm{Rel}
$$

| Symbol | Meaning |
|---|---|
| $G$ | an RDG |
| $\mathrm{Obj}(G)$ | nodes |
| $\mathrm{Rel}(G)$ | directed edges |
| $a\to b$ | a relation |

### Sub-RDG

$$
G\subseteq H
\quad\iff\quad
\mathrm{Obj}(G)\subseteq\mathrm{Obj}(H)
\;\text{and}\;
\mathrm{Rel}(G)\subseteq\mathrm{Rel}(H)
$$

### Morphisms

A map $f:G\to H$ is an RDG morphism if

$$
\begin{aligned}
(\mathrm{M1})&\quad a\to b\text{ in }G \;\Longrightarrow\; f(a)\to f(b)\text{ in }H\\
(\mathrm{M2})&\quad f\text{ creates no extra edges}
\end{aligned}
$$

### Minimal example

$$
\mathrm{Obj}=\{a,b,c\},\qquad
\mathrm{Rel}=\{a\to b,\;b\to c,\;a\to c\}
$$

---

### Substrate (7 DOFs), RDG-only

The generating mode set is

$$
M=\{1,2,3,4,5,6,7\}
=A\cup B,\qquad
A=\{1,2,3\},\; B=\{4,5,6,7\},\; A\cap B=\varnothing
$$

Primitive signature

$$
R=\{T(x),\;C(x),\;E(x,y),\;\mathrm{Tri}(x,y,z)\}
$$

| Symbol | Meaning |
|---|---|
| $T(x)$ | triadic primitive |
| $C(x)$ | complement-block marker |
| $E(x,y)$ | symmetric irreflexive adjacency |
| $\mathrm{Tri}(x,y,z)$ | primitive triad |

Automorphism group of the substrate:

$$
\mathcal{G}=\mathrm{Aut}(M,R)\cong S_3\times D_4
$$

Lawful treatment cardinalities claimed by the substrate:

$$
K_{\mathrm{lawful}}=\{3,4\}
$$

$$
|K|=3 \;\to\; \text{RDG (geometry)},\qquad
|K|=4 \;\to\; \text{MFE (field/engine)}
$$

Seven named degrees of freedom: Unity, Duality, Relational Extension, Dynamical Variation, Meso-Complexity, Constraint/Closure, Completeness.

---

### RDGA (algebra of an RDG)

A relation of arity $n$:

$$
R\subseteq\mathrm{Obj}^n
$$

Operators:

$$
\begin{aligned}
R\cup S&=\{x\mid x\in R\lor x\in S\}\\
R\cap S&=\{x\mid x\in R\land x\in S\}\\
\neg R&=\{x\mid x\notin R\}\\
\pi_i(R)&=\{x_i\mid (x_1,\dots,x_n)\in R\}\\
R\circ S&=\{(x,z)\mid \exists y:\,(x,y)\in R\land(y,z)\in S\}
\end{aligned}
$$

Algebraic carrier

$$
\Phi:R\mapsto I_R\subseteq\mathbb{R}[x_1,\dots,x_n]
$$

$$
\mathcal{S}(R)=\{x\mid f(x)=0\;\forall f\in I_R\}
$$

Operator lift:

$$
\begin{aligned}
\Phi(R\cap S)&=I_R+I_S\\
\Phi(R\cup S)&=I_R\cap I_S\\
\Phi(R\circ S)&=\mathrm{Elim}_y(I_R+I_S)\\
\Phi(\pi_i(R))&=\mathrm{Elim}_{\text{all but }i}(I_R)
\end{aligned}
$$

Closure as an operator algebra:

$$
\Phi(R\,\mathrm{op}\,S)=\Phi(R)\,\widehat{\mathrm{op}}\,\Phi(S)
$$

Standard geometric carriers:

$$
\begin{aligned}
I_{\mathrm{Inc}}&=\{(y_P-y_A)(x_B-x_A)-(y_B-y_A)(x_P-x_A)\}\\
I_{\mathrm{Circ}}&=\{(x_P-x_O)^2+(y_P-y_O)^2-r^2\}
\end{aligned}
$$

Dynamic update on the RDG state (still geometry, not MFE):

$$
\Gamma:\mathrm{State}_t\to\mathrm{State}_{t+1}
$$

$\Gamma$ recomputes dependent objects, then carriers $I_R$, then solution sets $\mathcal{S}(R)$.


### **RDG decomposition**

$$
\mathrm{RDG}(G)=\left(S(G),I(G),D(G)\right)\oplus\left(P(G),E(G),D(G)\right)
$$

### **Dual closure**

$$
I(G)=\overline{S(G)}^{\mathrm{int}},\qquad
E(G)=\overline{P(G)}^{\mathrm{eval}}
$$

$$
D(G)=\overline{I(G)}^{\mathrm{dyn}}
=\overline{E(G)}^{\mathrm{dyn}}
$$

### **Classification rule**

$$
X\mapsto
\begin{cases}
S & X\text{ geometric/spectral/canonical}\\
I & X\text{ coupling/mixing}\\
D & X\text{ evolution/outcome}\\
P & X\text{ capacity/intensity}\\
E & X\text{ assessment/moderation}
\end{cases}
$$

subject to:

$$
S\subseteq I\subseteq D,\qquad
P\subseteq E\subseteq D.
$$
