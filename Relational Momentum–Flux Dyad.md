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
