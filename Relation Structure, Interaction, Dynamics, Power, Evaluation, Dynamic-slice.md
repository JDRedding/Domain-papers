# **Structure, Interaction, Dynamics, Power, Evaluation, Dynamic-slice**  
## **One‑Page Core Summary**

**SID + PED** is the **two‑triad interface** between geometry and engine.  
SID slices the **RDG geometry** $G$.  
PED slices the **MFE engine state** $E$.  
They never share objects.  
They couple **only through signals**.

$$
{SID}(G)=\bigl(S(G),I(G),D(G)\bigr),\qquad
{PED}(E)=\bigl(P(E),\mathrm{Eval}(E),D_{\mathrm{slice}}(E)\bigr)
$$

SID is **outside** the engine.  
PED is **inside** the engine.

---

# **1. Core SID + PED Objects**

### **SID (geometry‑side triad)**

$$
S\subseteq I\subseteq D\subseteq G
$$

- **S(G)** — invariant, definitional, geometric  
- **I(G)** — operational, coupling, mixing  
- **D(G)** — propagation, inferred transitions  

### **PED (engine‑side triad)**

$$
E=(M,F,\bar M,\bar F)
$$

- **P(E)** — radial strength  
- **Eval(E)** — potential landscape  
- **D_{\mathrm{slice}}(E)** — admissible local flow  

SID acts on **relations** of $G$.  
PED acts on **coordinates** of $E$.

They are parallel triads, not shared objects.

---

# **2. SID + PED Purpose**

The pair provides:

- a **geometric triad** (SID)  
- an **energetic triad** (PED)  
- a **signal‑based coupling** between them  
- a **clean separation** of geometry vs. engine  
- a **bidirectional influence** without object mixing  

SID ensures geometric coherence.  
PED ensures energetic coherence.  
Together they form the **interface** between RDG and MFE.

---

# **3. SID + PED Axioms**

### **(A) Separation**

$$
\mathrm{Obj}(G)\cap\{M,F,\bar M,\bar F\}=\varnothing
$$

SID and PED never share objects.

### **(B) Parallel nesting**

$$
S\subseteq I\subseteq D,\qquad
P\subseteq \mathrm{Eval}\subseteq D_{\mathrm{slice}}
$$

Each triad is extensive and nested **within its own domain**.

### **(C) Signal‑only coupling**

The only maps are:

$$
\sigma,\rho:G\to\mathbb{R},\qquad
\omega,\kappa:E\to\text{signals on }G
$$

No map $S\mapsto P$.  
No map $D\mapsto D_{\mathrm{slice}}$.  
Only **signals** cross the boundary.

---

# **4. SID + PED Mapping Algorithm**

Given a geometric relation $r\in G$:

- classify into **S**, **I**, or **D**  
- compute geometric scalars  
  $$
  \sigma(G),\rho(G)
  $$

Given an engine state $E$:

- compute **P**, **Eval**, **D_slice**  
- compute engine signals  
  $$
  \omega(E),\kappa(E)
  $$

Coupling:

- SID → PED via $\sigma,\rho$  
- PED → SID via $\omega,\kappa$

---

# **5. SID + PED Interpretation**

SID describes **what the geometry is doing**.  
PED describes **what the engine is doing**.

They interact only through:

- **σ(G)** — structural pressure  
- **ρ(G)** — relational tension  
- **ω(E)** — wave/phase state  
- **κ(E)** — collapse/recovery indicator  

SID → PED: geometry stiffens thresholds and gains.  
PED → SID: engine outputs rewrite dynamic edges.

SID never touches $M,F,\bar M,\bar F$.  
PED never touches $\mathrm{Obj},\mathrm{Rel}$.

---

# **6. SID + PED in Practice**

The pair is used to:

- modulate engine thresholds from geometry  
- modulate geometry evolution from engine signals  
- maintain clean separation of domains  
- support RDG+MFE coupling  
- stabilize nonlinear oscillators  
- filter collapse/recovery events  
- propagate geometric constraints into engine dynamics  

SID + PED is the **interface layer** between RDG and MFE.

---

# **7. Appendix: Mathematical SID + PED Definition**

### SID triad

$$
{SID}(G)=\bigl(S(G),I(G),D(G)\bigr)
$$

$$
S\subseteq I\subseteq D\subseteq G
$$

### PED triad

$$
{PED}(E)=\bigl(P(E),\mathrm{Eval}(E),D_{\mathrm{slice}}(E)\bigr)
$$

$$
E=(M,F,\bar M,\bar F)
$$

### SID → PED signals

$$
\sigma(G)\sim\mathrm{curvature}_S(G),\qquad
\rho(G)\sim\mathrm{tension}_I(G)
$$

Threshold/gain modulation:

$$
\begin{aligned}
\theta_M&=\theta_M^{0}+\alpha_{\sigma}\sigma(G)\\
\theta_F&=\theta_F^{0}+\beta_{\rho}\rho(G)\\
\lambda_P&=\lambda_P^{0}+\kappa_{P\sigma}\sigma(G)\\
\lambda_E&=\lambda_E^{0}+\kappa_{E\rho}\rho(G)
\end{aligned}
$$

### PED → SID signals

$$
\omega(t)=\omega(E;P,\mathrm{Eval},D_{\mathrm{slice}}),\qquad
\kappa(t)=\kappa(E;P,\mathrm{Eval},D_{\mathrm{slice}})
$$

Dynamic rewrite:

$$
D(G)\leftarrow D(G)\text{ updated by }(\omega,\kappa)
$$

Compatibility re‑closes:

$$
S\subseteq I\subseteq D
$$

### One coupled step

$$
\begin{aligned}
&(S,I,D) &&\text{from }G\\
&\sigma,\rho &&\text{from }S,I\\
&\theta_M,\theta_F,\lambda_P,\lambda_E &&\text{SID-modulated}\\
&P=\tfrac12(M^{2}+F^{2})\\
&\mathrm{Eval}=V(M,F,\bar M,\bar F)\\
&D_{\mathrm{slice}}=\nabla P-\nabla\mathrm{Eval}\\
&E\leftarrow\Phi(E;P,\mathrm{Eval},D_{\mathrm{slice}},\theta)\\
&\omega,\kappa &&\text{from }E\\
&D\leftarrow\text{dynamic closure under }(\omega,\kappa)\\
&I,S &&\text{re-closed by compatibility}
\end{aligned}
$$

### Separation rule

- SID acts on **relations** of $G$.  
- PED acts on **coordinates** of $E$.  
- Only $\sigma,\rho,\omega,\kappa$ cross the boundary.
