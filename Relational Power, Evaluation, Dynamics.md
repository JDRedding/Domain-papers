# **Power–Evaluation–Dynamic‑Slice (PED)**  
## **One‑Page Core Summary**

PED is the **internal triad** of an MFE engine state $E$.  
It is **not** RDG, **not** SID, and **not** part of the RDG substrate.  
SID operates **outside** the engine; PED operates **inside** it.

PED decomposes an engine state into:

- **Power**  
- **Evaluation**  
- **Dynamic‑slice**  

$$
\mathrm{PED}(E)=\bigl(P(E),\,\mathrm{Eval}(E),\,D_{\mathrm{slice}}(E)\bigr)
$$

with engine state:

$$
E=(M,F,\bar M,\bar F).
$$

PED is the **energetic triad** that shapes the MFE update.

---

# **1. Core PED Object**

PED acts on the bipolar engine state:

$$
E=(M,F,\bar M,\bar F)
$$

and produces three internal functionals:

$$
P(E),\qquad \mathrm{Eval}(E),\qquad D_{\mathrm{slice}}(E).
$$

| Symbol | Meaning |
|---|---|
| $P(E)$ | **Power** — radial engine strength |
| $\mathrm{Eval}(E)$ | **Evaluation** — potential landscape |
| $D_{\mathrm{slice}}(E)$ | **Dynamic‑slice** — admissible local flow |
| $\lambda_P,\lambda_E$ | coupling gains into the MFE update |
| $\theta_M,\theta_F$ | bipolar thresholds (engine‑side, not PED primitives) |

PED is **internal** to the MFE and shapes its update law.

---

# **2. PED Purpose**

PED provides:

- an **intensity measure** (Power)  
- a **potential landscape** (Evaluation)  
- a **local admissible flow** (Dynamic‑slice)  
- a **gradient‑based modulation** of the MFE update  
- a **bipolar‑aware internal geometry**  

PED ensures:

- energetic coherence  
- stability/instability marking  
- admissible directional flow  
- modulation of engine dynamics  

PED is the **energetic projection** of the MFE.

---

# **3. PED Axioms**

### **(A) Power axioms**

$$
P(E)=\tfrac12(M^{2}+F^{2})
$$

$$
\begin{aligned}
(\mathrm{P1})&\; P(E)\ge 0\\
(\mathrm{P2})&\; P\text{ increases with }|M|\text{ or }|F|\\
(\mathrm{P3})&\; P\text{ decreases when }\bar M\text{ or }\bar F\text{ activate}
\end{aligned}
$$

### **(B) Evaluation axioms**

$$
\mathrm{Eval}(E)=V(M,F,\bar M,\bar F)
$$

Typical form:

$$
V=\alpha e^{-|M|}+\beta\cos F+\gamma\sin^{2}\bar M+\delta\bar F
$$

$$
\begin{aligned}
(\mathrm{E1})&\; \mathrm{Eval}\text{ bounded below}\\
(\mathrm{E2})&\; \mathrm{Eval}\text{ marks stable/unstable regions}\\
(\mathrm{E3})&\; \mathrm{Eval}\text{ modulates the MFE update}
\end{aligned}
$$

### **(C) Dynamic‑slice axioms**

$$
D_{\mathrm{slice}}(E)=\Phi(E)
$$

or gradient form:

$$
D_{\mathrm{slice}}(E)=
\begin{pmatrix}
\partial_M P-\partial_M\mathrm{Eval}\\
\partial_F P-\partial_F\mathrm{Eval}\\
\partial_{\bar M} P-\partial_{\bar M}\mathrm{Eval}\\
\partial_{\bar F} P-\partial_{\bar F}\mathrm{Eval}
\end{pmatrix}
$$

$$
\begin{aligned}
(\mathrm{D1})&\; D_{\mathrm{slice}}(E)\in D_{\mathrm{MFE}}\\
(\mathrm{D2})&\; D_{\mathrm{slice}}\text{ respects bipolar pairs}\\
(\mathrm{D3})&\; D_{\mathrm{slice}}\text{ modulated by }P\text{ and }\mathrm{Eval}
\end{aligned}
$$

---

# **4. PED Mapping Algorithm**

Given an engine state $E=(M,F,\bar M,\bar F)$:

1. **Assign Power**  
   - intensity  
   - radial strength  
   - drive magnitude  

2. **Assign Evaluation**  
   - potential  
   - wells/barriers  
   - damping/activation  

3. **Assign Dynamic‑slice**  
   - gradient direction  
   - admissible flow  
   - bipolar‑aware update  

4. **Apply gains**  
   $\lambda_P,\lambda_E$ modulate contributions.

5. **Feed into MFE update**  
   PED shapes the next engine state.

---

# **5. PED Interpretation**

PED is the **internal energetic geometry** of the MFE:

- **P(E)** = how strong the engine is  
- **Eval(E)** = where the engine sits in its landscape  
- **D_slice(E)** = how the engine is allowed to move  

PED does **not** include:

- RDG geometry  
- SID layers  
- RDGA algebra  
- substrate primitives  

PED is purely **engine‑internal**.

---

# **6. PED in Practice**

PED is used to:

- compute internal engine strength  
- mark stable/unstable regions  
- generate gradient‑slice updates  
- modulate MFE transitions  
- support RME survival‑trajectory shaping  

PED is the **energetic backbone** of:

- bipolar oscillators  
- nonlinear engines  
- survival‑score filters  
- dynamic moderation systems  

---

# **7. Appendix: Mathematical PED Definition**

### Engine state

$$
E=(M,F,\bar M,\bar F)
$$

### Power

$$
P(E)=\tfrac12(M^{2}+F^{2})
$$

### Evaluation

$$
\mathrm{Eval}(E)=V(M,F,\bar M,\bar F)
$$

### Dynamic‑slice

$$
D_{\mathrm{slice}}(E)=\Phi(E)
$$

or:

$$
D_{\mathrm{slice}}(E)=\nabla(P-\mathrm{Eval})
$$

### Coupling into MFE

$$
\begin{aligned}
M(t+1)&=M^{0}+\lambda_P\,\partial_M P-\lambda_E\,\partial_M\mathrm{Eval}\\
F(t+1)&=F^{0}+\lambda_P\,\partial_F P-\lambda_E\,\partial_F\mathrm{Eval}\\
\bar M(t+1)&=\bar M^{0}+\lambda_{\bar P}\,\partial_{\bar M}P-\lambda_{\bar E}\,\partial_{\bar M}\mathrm{Eval}\\
\bar F(t+1)&=\bar F^{0}+\lambda_{\bar P}\,\partial_{\bar F}P-\lambda_{\bar E}\,\partial_{\bar F}\mathrm{Eval}
\end{aligned}
$$

### Minimal example

$$
P=\tfrac12(M^{2}+F^{2}),\quad
\mathrm{Eval}=\cos F+\sin^{2}\bar M,\quad
D_{\mathrm{slice}}=\Phi(E)
$$

### Optional energy functional

$$
H(E)=T(E)+\mu\,\mathrm{Eval}(E)+\nu\,P(E)
$$

PED is **three functionals of $E$**, nested inside MFE the way **S, I, D** are nested inside RDG.
