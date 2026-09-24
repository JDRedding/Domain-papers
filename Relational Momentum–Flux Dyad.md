## Relational Momentum–Flux Dyad 
Isolated MFE Slice — Summary

### 1. Dyad state

$$
\mathbf{v}(t)=(M(t),\,F(t))\in\mathbb{R}^{2}
$$

Isolated layout (top row of the bipolar engine):

$$
\begin{pmatrix} M & F \end{pmatrix}
$$

- **Momentum**: drive / inertia axis  
- **Flux**: transport / flow axis  
- **$\mathbf{v}$**: dyad state vector  

Polar coordinates:

$$
\mathbf{v} =
r
\begin{pmatrix}
\cos\varphi\\
\sin\varphi
\end{pmatrix},
\qquad
r=\sqrt{M^{2}+F^{2}},\quad
\varphi=\mathrm{atan2}(F,M)
$$

Complex form:

$$
z=M+iF
$$

---

### 2. Dyad update operator

$$
\mathbf{v}(t+1)=\Phi_{\mathrm{dyad}}\bigl(\mathbf{v}(t)\bigr)
$$

Component form:

$$
\begin{aligned}
M(t+1)&=f_M(M,F)\\
F(t+1)&=f_F(M,F)
\end{aligned}
$$

Uncoupled oscillator skeleton (counters removed):

$$
\begin{aligned}
M^+ &= M+1-\partial_M\mathrm{Eval}(M,F)\\
F^+ &= F-1-\partial_F\mathrm{Eval}(M,F)
\end{aligned}
$$

Vector form:

$$
\mathbf{v}^+ =
\mathbf{v} +
\begin{pmatrix}1\\-1\end{pmatrix} -
\nabla_{\mathbf{v}}\mathrm{Eval}(M,F)
$$

---

### 3. Internal PED triad (restricted to dyad)

$$
\mathrm{PED}(\mathbf{v})=\bigl(P(\mathbf{v}),\,\mathrm{Eval}(\mathbf{v}),\,D_{\mathrm{slice}}(\mathbf{v})\bigr)
$$

**Power**

$$
P(\mathbf{v})=\tfrac12(M^{2}+F^{2})=\tfrac12 r^{2}
$$

**Evaluation**

$$
\mathrm{Eval}(\mathbf{v})=V(M,F)
$$

Example form (restricting the full engine potential):

$$
V=\alpha e^{-|M|}+\beta\cos F
$$

**Dynamic slice (gradient form)**

$$
D_{\mathrm{slice}}(\mathbf{v}) =
(
\partial_{M}P-\partial_{M}\mathrm{Eval},\;
\partial_{F}P-\partial_{F}\mathrm{Eval}
)
$$

---

### 4. Missing bipolar activation (what the dyad *does not* have)

Full MFE activation:

$$
\bar M^+=\max(0,\,M-\theta_M),\qquad
\bar F^+=\max(0,\,\theta_F-F)
$$

These terms **do not exist** in the dyad.  
Thus the dyad has **no internal counter‑momentum** and **no counter‑flux**.

Consequences:

$$
r\to\infty \quad\text{or}\quad r\to 0
$$

unless Eval or the linear operator is hand‑tuned.

---

### 5. Dyad invariants

With counters removed:

$$
B=M-F
$$

(balance index of the isolated pair)

No counter‑sum $C$, no total energy $T$, no bipolar moderation.

---

### 6. SID → dyad coupling

External SID signals:

$$
\sigma(G)=\text{structural pressure},\qquad
\rho(G)=\text{relational tension}
$$

These modulate the dyad’s linear operator:

$$
\alpha=\alpha^{0}+a_{\sigma}\sigma(G),\qquad
\omega=\omega^{0}+b_{\rho}\rho(G)
$$

This is **external steering**, not internal stabilization.

---

### 7. PED → dyad coupling

PED‑coupled update:

$$
\mathbf{v}^+ =
\mathbf{v}^{0} +
\lambda_P\nabla_{\mathbf{v}}P -
\lambda_E\nabla_{\mathbf{v}}\mathrm{Eval}
$$

Since

$$
\nabla_{\mathbf{v}}P=\mathbf{v},
$$

the update becomes:

$$
\mathbf{v}^+ =
\mathbf{v}^{0} +
\lambda_P\mathbf{v} -
\lambda_E\nabla_{\mathbf{v}}\mathrm{Eval}
$$

This is the dyad‑restricted version of the full PED→MFE coupling.

---

### 8. Minimal dyad oscillator normal form

Linear RDG/PED normal form:

$$
\dot{\mathbf{v}}=A\mathbf{v},
\qquad
A=
\begin{pmatrix}
\alpha & -\omega\\
\omega & \alpha
\end{pmatrix} =
\alpha I+\omega J
$$

with $J$ the dyad’s almost‑complex structure:

$$
J\begin{pmatrix}M\\F\end{pmatrix} =
\begin{pmatrix}-F\\M\end{pmatrix}
$$

Complex form:

$$
\dot z=(\alpha+i\omega)z
$$

- $\alpha>0$: runaway radius  
- $\alpha<0$: collapse  
- $\omega$: momentum–flux oscillation  

Optional energy shaping:

$$
H(\mathbf{v})=\mu\,\mathrm{Eval}(\mathbf{v})+\nu\,P(\mathbf{v})
$$

$$
\mathbf{v}^+=\mathbf{v}-\eta\nabla H(\mathbf{v})
$$

---

## Appendix: Weak Identification  
This appendix splits the MFE block into the dyad $(M,F)$ and treats that pair as a 2‑component linear field. It is a vectorization gesture, not the full engine.

$\mathbf{v}=(M,F)\;\longleftrightarrow\;\text{(two‑component field)}$

**Status.**  
This appendix defines a *weaker* theory. It is not full MFE, not the 4‑coordinate bipolar engine, and not the RDG field system. It is the **vectorization gesture** applied to the isolated **momentum–flux dyad**: one algebraic block is split into two named components and written as a planar vector law.

---

### What is being identified

Full MFE state:

$$
E=\bigl(M,F,\bar M,\bar F\bigr),
\qquad
\begin{pmatrix} M & F \\ \bar M & \bar F \end{pmatrix}
$$

Isolated dyad (this appendix):

$$
\mathbf{v} =
\begin{pmatrix} M \\ F \end{pmatrix}
\in\mathbb{R}^{2},
\qquad
z=M+iF\in\mathbb{C}
$$

**Weak identification (purely formal):**

$$
M \;\sim\; \phi_1,
\qquad
F \;\sim\; \phi_2
$$

$$
\mathbf{v} =
\begin{pmatrix} M \\ F \end{pmatrix}
\;\sim\;
\begin{pmatrix} \phi_1 \\ \phi_2 \end{pmatrix}
$$

Here $\phi_1,\phi_2$ are simply **two scalar field components**.  
No spatial dimension, no continuum, no external geometry.

---

### Dictionary

| Isolated MFE dyad | Weak image | Full object *not* in this appendix |
|---|---|---|
| $M$ | first component $\phi_1$ | full momentum axis with regulator coupling |
| $F$ | second component $\phi_2$ | full flux axis with regulator coupling |
| $z=M+iF$ | complex 2‑component field | full bipolar quaternion‑like block |
| $P=\tfrac12(M^{2}+F^{2})$ | scalar energy density | full **PED** over all four coordinates |
| $B_{\mathrm{bal}}=M-F$ | imbalance $\phi_1-\phi_2$ | not an invariant of full MFE |
| $J$ | planar rotation operator | full RDG differential operators |
| $\alpha I+\omega J$ | linear gain + oscillation | full 4×4 MFE operator with regulators |
| $\sigma(G),\rho(G)$ | frozen medium parameters | live **RDG geometry** |
| $\bar M,\bar F$ | *deleted* | full bipolar **regulators** |

Note: $j$ $=$ $`\begin{pmatrix} 0 & -1 \\ 1 & 0 \end{pmatrix}`$

Units are normalized; no physical constants appear.

---

### Weak dyad law (planar 2‑component dynamics)

Start with the isolated dyad:

$$
\mathbf{v}=\begin{pmatrix}M\\F\end{pmatrix}.
$$

Introduce a linear operator:

$$
A=\alpha I+\omega J,
\qquad
J=\begin{pmatrix}0&-1\\1&0\end{pmatrix}.
$$

Weak evolution law:

$$
\dot{\mathbf{v}}=A\,\mathbf{v} =
\begin{pmatrix}
\alpha & -\omega \\
\omega & \alpha
\end{pmatrix}
\begin{pmatrix}M\\F\end{pmatrix}.
$$

Complex form:

$$
\dot z=(\alpha+i\omega)z.
$$

Interpretation:

- $\omega$: oscillation between $M$ and $F$  
- $\alpha$: radial growth/decay  
- $J$: planar rotation coupling the two components  

This is the **weak vectorization** of the dyad: a 2‑component linear field with no regulators and no geometry.

If a discrete spatial chain $\Gamma$ is optionally added:

$$
\partial_t M_i=-\nabla_\Gamma F_i-\alpha_M M_i,
\qquad
\partial_t F_i=-\nabla_\Gamma M_i-\alpha_F F_i,
$$

but this is still weaker than full RDG–MFE.

---

### Reduced PED layer (dyad only)

Energy:

$$
P(\mathbf{v})=\tfrac12(M^{2}+F^{2}).
$$

Power flux analogue (scalar):

$$
S\sim MF.
$$

Reduced PED update:

$$
\mathbf{v}^{+} =
\mathbf{v}^{0}
+\lambda_P\mathbf{v}
-\lambda_E\nabla_{\mathbf{v}}\mathrm{Eval}(M,F).
$$

Here:

- $\lambda_P\mathbf{v}$: linear medium gain  
- $\nabla\mathrm{Eval}$: nonlinear correction  
- No counters, no 4‑coordinate PED, no bipolar moderation  

---

### What was deleted (why this is weaker)

1. **Regulators removed.**  
   $\bar M,\bar F$ are absent. No internal brake.  
   Radius $r=\lvert\mathbf{v}\rvert$ can run or collapse.

2. **No 4‑coordinate PED.**  
   Only $M,F$ contribute to power and evaluation.

3. **No RDG geometry.**  
   $\Gamma_t$ does not evolve; no geometric feedback.

4. **No source terms.**  
   No external forcing unless added manually as $\mathbf{j}$.

5. **No bipolar coupling.**  
   The dyad is not the full MFE engine; it is a projection.

This appendix is therefore weaker than:

- full MFE  
- full PED triad  
- RDG–MFE on evolving geometry  
- any 4‑component dynamical law  

It is intentionally the same strength as a **2‑component linear field**.

---

### Optional medium parameters (still weak)

If SID signals are frozen:

$$
\alpha=\alpha^{0}+a_\sigma\sigma(G),
\qquad
\omega=\omega^{0}+b_\rho\rho(G),
$$

they act as constant medium parameters.  
They do **not** evolve geometry or restore bipolar moderation.

Inhomogeneous weak law:

$$
\dot{\mathbf{v}}=(\alpha I+\omega J)\mathbf{v}+\mathbf{j},
\qquad
\mathbf{j}=\begin{pmatrix}j_M\\j_F\end{pmatrix}.
$$

---

### Recovery statement 

**Proposition (weak).**  
If $\bar M=\bar F=0$, geometry is frozen or absent, and the operator is restricted to $\alpha I+\omega J$, then the isolated dyad behaves like a **2‑component linear field** with gain $\alpha$ and oscillation $\omega$.

**Not claimed.**  
The dyad does **not** reproduce full MFE, full PED, full RDG geometry, or any higher‑dimensional field theory.

---

### Minimal equations to cite

$$
\mathbf{v}=\begin{pmatrix}M\\F\end{pmatrix}
$$

$$
\dot{\mathbf{v}}=(\alpha I+\omega J)\mathbf{v}+\mathbf{j}
$$

$$
P=\tfrac12\lvert\mathbf{v}\rvert^{2},
\qquad
S\sim MF
$$

$$
\bar M=\bar F=0,
\qquad
\Gamma_t\ \text{not used},
\qquad
\text{no regulators}
$$

---
