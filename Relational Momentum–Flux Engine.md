## Momentum–Flux Engine (MFE) 
— Summary

### 1. Engine state

$$
E(t)=(M(t),\,F(t),\,\bar M(t),\,\bar F(t))\in D_{\mathrm{MFE}}\subseteq\mathbb{R}^{4}
$$

Bipolar layout:

$$
\begin{pmatrix} M & F \\ \bar M & \bar F \end{pmatrix}
$$

- $M$: momentum  
- $F$: flux  
- $\bar M$: counter‑momentum  
- $\bar F$: counter‑flux  

### 2. Update operator

$$
E(t+1)=\Phi\bigl(E(t)\bigr)
$$

Component form:

$$
\begin{aligned}
M(t+1)&=f_M(M,F,\bar M,\bar F)\\
F(t+1)&=f_F(M,F,\bar M,\bar F)\\
\bar M(t+1)&=f_{\bar M}(M,F,\bar M,\bar F)\\
\bar F(t+1)&=f_{\bar F}(M,F,\bar M,\bar F)
\end{aligned}
$$

With PED coupling:

$$
E(t+1)=\Phi\bigl(E(t),\,P(E),\,\mathrm{Eval}(E),\,D_{\mathrm{slice}}(E)\bigr)
$$

---

### 3. Internal PED triad

$$
\mathrm{PED}(E)=\bigl(P(E),\,\mathrm{Eval}(E),\,D_{\mathrm{slice}}(E)\bigr)
$$

**Power**

$$
P(E)=\tfrac12\bigl(M^{2}+F^{2}\bigr)\ge 0
$$

**Evaluation**

$$
\mathrm{Eval}(E)=V(M,F,\bar M,\bar F)
$$

e.g.

$$
V=\alpha\,e^{-|M|}+\beta\cos F+\gamma\sin^{2}\bar M+\delta\,\bar F
$$

**Dynamic slice (gradient form)**

$$
D_{\mathrm{slice}}(E) =
\Bigl(
\partial_{M}P-\partial_{M}\mathrm{Eval},\;
\partial_{F}P-\partial_{F}\mathrm{Eval},\;
\partial_{\bar M}P-\partial_{\bar M}\mathrm{Eval},\;
\partial_{\bar F}P-\partial_{\bar F}\mathrm{Eval}
\Bigr)
$$

---

### 4. Bipolar activation

Hard activation:

$$
\bar M(t+1)=\max(0,\,M-\theta_{M}),\qquad
\bar F(t+1)=\max(0,\,\theta_{F}-F)
$$

Soft activation via $S(x)$ (sigmoid or smooth ReLU):

$$
\bar M(t+1)=S_{M}(M-\theta_{M}),\qquad
\bar F(t+1)=S_{F}(\theta_{F}-F)
$$

---

### 5. Invariants

$$
\begin{aligned}
B(t)&=M-F && \text{balance}\\
C(t)&=\bar M+\bar F && \text{counter}\\
T(t)&=M+F+\bar M+\bar F && \text{total engine energy}
\end{aligned}
$$

Axioms: $T$ bounded; $C$ responds when $|B|$ large; $P$ and $\mathrm{Eval}$ regulate $T$.

---

### 6. SID → MFE coupling

SID signals:

$$
\sigma(G)=\text{structural pressure},\qquad
\rho(G)=\text{relational tension}
$$

Thresholds / gains:

$$
\begin{aligned}
\theta_{M}&=\theta_{M}^{0}+\alpha_{\sigma}\,\sigma(G)\\
\theta_{F}&=\theta_{F}^{0}+\beta_{\rho}\,\rho(G)\\
\lambda_{P}&=\lambda_{P}^{0}+\kappa_{P\sigma}\,\sigma(G)\\
\lambda_{E}&=\lambda_{E}^{0}+\kappa_{E\rho}\,\rho(G)
\end{aligned}
$$

MFE outputs back to SID: wave state $\omega(t)$, collapse/recovery indicator $\kappa(t)$.

---

### 7. Explicit PED → MFE coupling

Let $M^{0},F^{0},\bar M^{0},\bar F^{0}$ be uncoupled updates. Then

$$
\begin{aligned}
M(t+1)&=M^{0}(t+1)+\lambda_{P}\,\partial_{M}P-\lambda_{E}\,\partial_{M}\mathrm{Eval}\\
F(t+1)&=F^{0}(t+1)+\lambda_{P}\,\partial_{F}P-\lambda_{E}\,\partial_{F}\mathrm{Eval}\\
\bar M(t+1)&=\bar M^{0}(t+1)+\lambda_{\bar P}\,\partial_{\bar M}P-\lambda_{\bar E}\,\partial_{\bar M}\mathrm{Eval}\\
\bar F(t+1)&=\bar F^{0}(t+1)+\lambda_{\bar P}\,\partial_{\bar F}P-\lambda_{\bar E}\,\partial_{\bar F}\mathrm{Eval}
\end{aligned}
$$

---

### 8. Minimal oscillator normal form

$$
\begin{aligned}
P(E)&=\tfrac12(M^{2}+F^{2})\\
\mathrm{Eval}(E)&=\cos F+\sin^{2}\bar M\\
M(t+1)&=M+1-\bar M-\partial_{M}\mathrm{Eval}\\
F(t+1)&=F-1+\bar F-\partial_{F}\mathrm{Eval}\\
\bar M(t+1)&=\max(0,\,M-\theta_{M})\\
\bar F(t+1)&=\max(0,\,\theta_{F}-F)
\end{aligned}
$$

Optional energy shaping:

$$
H(E)=T(E)+\mu\,\mathrm{Eval}(E)+\nu\,P(E)
$$

$$
E(t+1)=E(t)-\eta\nabla H\bigl(E(t)\bigr)
$$

or compactly:

$$
\dot X=AX+B\tanh(CX),\qquad X=(M,F,\bar M,\bar F)
$$

---
