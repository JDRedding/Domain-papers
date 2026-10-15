# **Relational d’Alembert Quotient (Q□ → Q)**  
## **One‑Page Core Summary**

The **d’Alembert quotient** is **not a PDE**.  
It is an **operator‑class identification**:

- same *job* as the classical wave operator $\square$  
- same *shape*: many‑to‑one, geometry‑hiding, invariant‑emitting  
- same *seal*: interior inaccessible, only admissible invariants exposed  

The stack defines:

$$
Q = \square_{\mathrm{class}} \circ q_{\sim_Q}
$$

where:

- $q_{\sim_Q}$ collapses generator states by admissible observables  
- $\square_{\mathrm{class}}$ assigns the sealed invariant associated to each equivalence class 

This is the **pre‑geometric box** that makes RDG possible.

---

# **1. Classical d’Alembert Operator (Structural Role)**

$$
\square = \partial_t^{2}-\partial_x^{2}-\partial_y^{2}-\partial_z^{2}
$$

On a scalar field:

$$
\square\phi = 0
$$

Structural properties:

- **second‑order hyperbolic operator**  
- **contracts the metric** (time minus space)  
- **many interior fields share the same on‑shell invariants**  
- **interior geometry is hidden**  
- **emits only propagation‑law invariants**  

This is the **operator class** the stack borrows.

---

# **2. Quotient Map (Same Operator Shape)**

$$
q:X\twoheadrightarrow X/{\sim},\qquad q(x)=[x]
$$

Properties:

- many raw states collapse to one class  
- interior of the class is not part of the quotient theory  
- only the **invariant class** is used downstream  

Same shape as $\square$:  
**many‑to‑one, interior‑hidden, invariant‑emitting**.

---

# **3. Stack Definition: d’Alembert Quotient**

$$
Q_d^r(g)\,\square
:= \square_{\mathrm{class}}\!\bigl(Q_{\mathrm{substrate}}^{\mathrm{irrational}}\bigr)
= \square_{\mathrm{class}} \circ q_{\sim_Q}
$$

Equivalence relation:

$$
X\sim_Q Y
\iff
\forall O\in\mathcal{O}:\;O(X)=O(Y)
$$

$\mathcal{O}$ = Structure – Interaction – Dynamics / Power – Evaluation – Dynamic‑slice‑stable, $\Gamma$-respecting observables.

Thus:

$$
Q:\mathcal{S}\twoheadrightarrow\mathcal{S}/{\sim_Q}\cong\mathcal{A}
$$

Meaning:

- **first** collapse generator states by admissible observables  
- **then** apply the operator‑class seal to the quotient  

This is the **d’Alembert quotient**.

---

# **4. Shared Algebraic Properties (Wave □ vs. Quotient Q)**

### **Variables**
- $\phi$: classical scalar field  
- $\square$: classical wave operator  
- $\square^2$: biwave operator  
- $S$: generator substrate  
- $\sim_Q$: admissible‑observable equivalence relation  
- $q_{\sim_Q}$: quotient map $S \to S/{\sim_Q}$  
- $A$: admissible invariant space  
- $Q = \square_{\mathrm{class}} \circ q_{\sim_Q}$: operator‑class quotient  

### **Fundamentals**
- Classical $\square$ is **not** idempotent.  
- Quotient map $q_{\sim_Q}$ **is** idempotent.  
- Idempotence of $q_{\sim_Q}$ **does not transfer** to $Q$.  
- “Seal” is an **operator‑class behavior**, not an algebraic projection.  
- $\square_{\mathrm{class}}$ acts **only** on equivalence classes.  
- Domain/codomain must be explicit for $Q$ to be well‑defined.

### **Structural Comparison**

| Property | Wave $\square$ | Quotient $Q$ |
|---|---|---|
| many‑to‑one | many $\phi$ share on‑shell invariants | many $i\in I$ share $Q(i)$ |
| hides geometry | metric contracted, interior unused | generator interior unused |
| emits invariants | causal propagation law | admissible $q\in\mathcal{A}$ |
| not invertible | cannot recover $\phi$ | cannot recover $i$ or $g$ |
| idempotence | **not applicable** | only $q_{\sim_Q}$ is idempotent |
| observable agreement | $\mathrm{Obs}(\square\phi)$ | $\mathrm{Obs}(Q(X))$ |

### **Idempotence Correction**

The classical wave operator does **not** satisfy:

$$
\square(\square\phi)=\square\phi
$$

Instead:

$$
\square^2\phi = \square(\square\phi)
$$

and:

- $\ker(\square^2)$ is strictly larger than $\ker(\square)$  
- $\square$ is **not** a projection  
- the on‑shell condition $\square\phi=0$ is **not** preserved by $\square^2$

### **Meaning of “Seal”**

“Seal” is **not** algebraic idempotence.  
It is the operator‑class behavior:

- interior inaccessible  
- many‑to‑one collapse  
- invariant‑emitting  
- geometry‑hiding  
- non‑invertible  

These are **structural parallels**, not PDE identities.

### **Domain and Codomain**

$$
\begin{aligned}
q_{\sim_Q} &: S \to S/{\sim_Q} \\
\square_{\mathrm{class}} &: S/{\sim_Q} \to A \\
Q &: S \to A
\end{aligned}
$$

Thus:

$$
Q = \square_{\mathrm{class}} \circ q_{\sim_Q}
$$

is a well‑defined operator‑class map.

### **Action on Equivalence Classes**

$\square_{\mathrm{class}}$ does **not** act on raw generator states.

For $[X] \in S/{\sim_Q}$:

$$
\square_{\mathrm{class}}([X]) := \text{sealed admissible invariant associated to } [X]
$$

This is an **operator‑class assignment**, not a differential operator.

### **Recognizable Limits**

When:

- the generator is frozen to a lattice  
- RDG is given a metric  
- $\Gamma$ reduces to classical coarse‑graining  

the construction recovers:

- solution space modulo gauge  
- reduced phase space of constrained systems  
- quotient‑by‑observables familiar from symplectic reduction  

---

# **5. Where the d’Alembert Quotient Sits**

$$
Q^\square
\xrightarrow{\text{coarse grain}}
G
\xrightarrow{\;R\;}
I
\xrightarrow{\;Q=\square\circ q\;}
Q
\xrightarrow{\mathrm{RDG}}
C_{\mathrm{rel}}
$$

Roles:

- **R**: makes generator *visible* (lossy)  
- **Q**: makes visibility *rational and sealed*  
- **RDG**: allowed only after Q  

If Q is skipped, SID/PED would be forced to act on $G$, which has:

- no partitions  
- no adjacency  
- no roles  

Q is the **type‑check** that prevents that.

---

# **6. What the d’Alembert Quotient Is Not**

- **Not** $\square\phi=0$ on spacetime  
- **Not** part of Momentum Flux Engine or Power–Evaluation–Dynamic‑slice  
- **Not** a division by Q  
- **Not** a PDE unless RDG is frozen to a lattice and a continuum limit is taken  

It is an **operator class**, not the classical PDE.

---

# **7. One‑Line Picture**

Classical $\square$:  
**Do not look at the medium; keep the wave law.**

Stack’s d’Alembert quotient:  
**Do not look in the generator box; keep the admissible class.**

Same operator class:  
**geometry‑hiding, many‑to‑one, invariant‑emitting, sealed.**

# **8. Future Work**

- Explicit rule or isomorphism defining $\square$ on equivalence classes.
- $Q=\square\circ q$ well-defined and universal for quotient.
- Standard object (gauge-reduced solutions or reduced phase space) via explicit isomorphism.
- Spaces and regularity conditions.
