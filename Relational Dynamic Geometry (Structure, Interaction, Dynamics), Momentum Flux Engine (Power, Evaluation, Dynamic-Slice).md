# Relational Dynamic Geometry (Structure, Interaction, Dynamics), Momentum Flux Engine (Power, Evaluation, Dynamic-Slice)
**RDG → SID → MFE → PED**  
## **One‑Page Core Summary**

This is the **four‑layer architecture** of the system.  
Each layer is distinct, non‑overlapping, and connected only by **signals**, not shared objects.

- **RDG** — relational substrate  
- **SID** — geometric slice of RDG  
- **MFE** — bipolar engine on RDG carriers  
- **PED** — internal energetic slice of the engine  

Closed loop:

$$
G \;\xrightarrow{\;\mathrm{SID}\;}\; (S,I,D)
\;\xrightarrow{\;\sigma,\rho\;}\;
E \;\xrightarrow{\;\mathrm{PED}\;}\; (P,\mathrm{Eval},D_{\mathrm{slice}})
\;\xrightarrow{\;\omega,\kappa\;}\;
G
$$

No Q‑layer.  
No continuum limit.  
This is a **discrete closed loop**.

---

# **1. Core Four‑Layer Objects**

### **RDG — Relational Geometry**

$$
G=(\mathrm{Obj},\mathrm{Rel}),\qquad
\mathrm{Rel}\subseteq\mathrm{Obj}\times\mathrm{Obj}
$$

### **SID — Geometry Triad**

$$
{SID}(G)=(S(G),I(G),D(G))
$$

$$
S\subseteq I\subseteq D\subseteq G
$$

### **MFE — Bipolar Engine**

$$
E=(M,F,\bar M,\bar F)\in D_{\mathrm{MFE}}\subseteq\mathbb{R}^{4}
$$

### **PED — Engine Triad**

$$
{PED}(E)=(P(E),\mathrm{Eval}(E),D_{\mathrm{slice}}(E))
$$

SID is **outside** the engine.  
PED is **inside** the engine.  
RDG carries both.

---

# **2. Architecture Purpose**

The four layers provide:

- a **relational substrate** (RDG)  
- a **geometric decomposition** (SID)  
- a **bipolar dynamical engine** (MFE)  
- an **energetic decomposition** (PED)  
- a **signal‑based coupling loop**  

This ensures:

- geometric coherence  
- interaction consistency  
- dynamic admissibility  
- energetic stability  
- causal interpretability  

The architecture is the **core dynamical backbone** of the system.

---

# **3. Architecture Axioms**

### **(A) Separation of domains**

RDG objects and MFE objects never mix:

$$
\mathrm{Obj}(G)\cap\{M,F,\bar M,\bar F\}=\varnothing
$$

### **(B) Parallel nesting**

$$
S\subseteq I\subseteq D,\qquad
P\subseteq \mathrm{Eval}\subseteq D_{\mathrm{slice}}
$$

### **(C) Signal‑only coupling**

Only four signals cross the boundary:

$$
\sigma,\rho:G\to\mathbb{R},\qquad
\omega,\kappa:E\to\text{signals on }G
$$

### **(D) Compatibility**

SID re‑closes after engine updates:

$$
S\subseteq I\subseteq D
$$

### **(E) Closed loop**

$$
G\to SID\to MFE\to PED\to G
$$

---

# **4. Mapping Algorithm (Four‑Layer)**

Given a relation or engine variable:

1. **RDG** — relational structure  
2. **SID** — classify into S/I/D  
3. **SID → MFE** — compute \(\sigma,\rho\)  
4. **MFE** — update engine state  
5. **PED** — compute P/Eval/D_slice  
6. **PED → SID/RDG** — compute \(\omega,\kappa\)  
7. **RDG** — rewrite geometry  

This is the **full cycle**.

---

# **5. Interpretation of the Four Layers**

### **RDG**  
The **moving relational manifold**.

### **SID**  
The **geometric slice** of RDG:

- S = invariant skeleton  
- I = operational links  
- D = dynamic propagation  

### **MFE**  
The **bipolar engine**:

- M, F = primary channels  
- \(\bar M,\bar F\) = counter‑channels  
- thresholds = geometry‑modulated  

### **PED**  
The **energetic slice**:

- P = strength  
- Eval = landscape  
- D_slice = admissible flow  

### **Coupling**

SID → PED via:

- **σ(G)**  
- **ρ(G)**  

PED → SID via:

- **ω(E)**  
- **κ(E)**  

This is the **geometry ↔ engine feedback loop**.

---

# **6. Four‑Layer System in Practice**

Used to:

- evolve relational geometries  
- modulate engine thresholds from geometry  
- modulate geometry from engine signals  
- stabilize nonlinear oscillators  
- support survival‑trajectory filtering  
- unify geometry and dynamics  
- provide a discrete dynamical backbone  

Applications include:

- conceptual engines  
- RDG‑based simulations  
- bipolar field engines  
- relational dynamical systems  
- RME survival scoring  

---

# **7. Appendix: Mathematical Definition of the Four‑Layer Loop**

### **RDG**

$$
G=(\mathrm{Obj},\mathrm{Rel})
$$

Carrier:

$$
\Phi(R)=I_R,\qquad
\mathcal{S}(R)=V(I_R)
$$

### **SID**

$$
S(G),I(G),D(G)
$$

$$
I=\overline{S}^{\mathrm{int}},\qquad
D=\overline{I}^{\mathrm{dyn}}
$$

Signals:

$$
\sigma(G),\rho(G)
$$

### **MFE**

$$
E=(M,F,\bar M,\bar F)
$$

$$
E(t+1)=\Phi_{\mathrm{MFE}}(E(t))
$$

Thresholds/gains:

$$
\theta_M,\theta_F,\lambda_P,\lambda_E
$$

### **PED**

$$
P=\tfrac12(M^{2}+F^{2})
$$

$$
\mathrm{Eval}=V(M,F,\bar M,\bar F)
$$

$$
D_{\mathrm{slice}}=\nabla(P-\mathrm{Eval})
$$

### **Coupling**

SID → MFE:

$$
\theta_M=\theta_M^{0}+\alpha_{\sigma}\sigma(G),\qquad
\theta_F=\theta_F^{0}+\beta_{\rho}\rho(G)
$$

PED → SID:

$$
D(G)\leftarrow D(G)\text{ updated by }(\omega,\kappa)
$$

### **One full tick**

$$
\begin{aligned}
1.&\; G\\
2.&\; (S,I,D)=SID(G)\\
3.&\; \sigma,\rho\\
4.&\; \theta,\lambda\\
5.&\; (P,\mathrm{Eval},D_{\mathrm{slice}})=PED(E)\\
6.&\; E\leftarrow\Phi_{\mathrm{MFE}}(E;\theta,\lambda)\\
7.&\; \omega,\kappa\\
8.&\; G\leftarrow\Gamma(G;\omega,\kappa)
\end{aligned}
$$

This is the **four‑layer architecture**:  
RDG → SID → MFE → PED → RDG.
