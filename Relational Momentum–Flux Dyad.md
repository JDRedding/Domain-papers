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

## **Appendix: Isolated dyad core (lean)**

State, linear law, and energy:

$$
\mathbf{v}=(M,F)\in\mathbb{R}^{2},\qquad
\dot{\mathbf{v}}=(\alpha I+\omega J)\mathbf{v}+\mathbf{j},\qquad
P=\tfrac12\lvert\mathbf{v}\rvert^{2}
$$

with

$$
I=\begin{pmatrix}1&0\\0&1\end{pmatrix},\qquad
J=\begin{pmatrix}0&-1\\1&0\end{pmatrix},\qquad
\mathbf{j}=\begin{pmatrix}j_M\\j_F\end{pmatrix}.
$$

Equivalently, $z=M+iF$ satisfies $\dot z=(\alpha+i\omega)z+(j_M+ij_F)$.

Optional evaluation (for the gradient correction only):

$$
\mathrm{Eval}(\mathbf{v})=V(M,F)=\alpha_V e^{-|M|}+\beta\cos F.
$$

Continuous correction, if used:

$$
\dot{\mathbf{v}}=(\alpha I+\omega J)\mathbf{v}+\mathbf{j}-\lambda_E\nabla_{\mathbf{v}}V.
$$

Discrete map (separate from the ODE above):

$$
\mathbf{v}^+=\mathbf{v}+\begin{pmatrix}1\\-1\end{pmatrix}-\nabla_{\mathbf{v}}V(M,F).
$$

Standing restrictions for this appendix: $\bar M=\bar F=0$, no live geometry $\Gamma_t$, no bipolar regulators.

---

A Lean skeleton matching this appendix is:

```lean
def I : Matrix (Fin 2) (Fin 2) ℝ := 1
def J : Matrix (Fin 2) (Fin 2) ℝ := !![0, -1; 1, 0]

structure Params where
  α ω λE αV β : ℝ
  j : Fin 2 → ℝ

def V (p : Params) (v : Fin 2 → ℝ) : ℝ :=
  p.αV * Real.exp (-|v 0|) + p.β * Real.cos (v 1)

def P (v : Fin 2 → ℝ) : ℝ :=
  (1 / 2) * ∑ i, (v i) ^ 2

def A (p : Params) : Matrix (Fin 2) (Fin 2) ℝ :=
  p.α • I + p.ω • J

/-- ∇V = (−αV sign(M) e^{−|M|}, −β sin F) at M ≠ 0. -/
noncomputable def gradV (p : Params) (v : Fin 2 → ℝ) : Fin 2 → ℝ :=
  ![ -p.αV * Real.sign (v 0) * Real.exp (-|v 0|),
     -p.β * Real.sin (v 1) ]

/-- Continuous core: v̇ = (αI + ωJ)v + j − λE ∇V. -/
noncomputable def vdot (p : Params) (v : Fin 2 → ℝ) : Fin 2 → ℝ :=
  (A p) *ᵥ v + p.j - p.λE • gradV p v

/-- Separate discretization; not the ODE integrator. -/
noncomputable def vstep (p : Params) (v : Fin 2 → ℝ) : Fin 2 → ℝ :=
  v + ![1, -1] - gradV p v
```

Set `v 0 = M`, `v 1 = F`. Set `λE = 0` to recover the linear slice $\dot{\mathbf{v}}=(\alpha I+\omega J)\mathbf{v}+\mathbf{j}$. The `v 0 = M`, `v 1 = F`, and `λE = 0` in `vdot` recovers

$$
\dot{\mathbf{v}}=(\alpha I+\omega J)\mathbf{v}+\mathbf{j}.
$$

`vstep` is independent of `λE` by construction. This matches the appendix: the discrete map is not an Euler step of the ODE.

The gradient formula is the classical one for $M\neq 0$:

$$
\nabla V=\bigl(-\alpha_V\,\mathrm{sign}(M)\,e^{-|M|},\;-\beta\sin F\bigr).
$$

At $M=0$, `Real.sign 0 = 0`, so `gradV` extends by zero on that component. That is a convenient representative of the subgradient, not a classical derivative.

If want this to compile in Mathlib:

- Import matrix + real analysis (`Mathlib.LinearAlgebra.Matrix.Notation`, `Mathlib.Data.Matrix.Basic`, `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic`, `Mathlib.Analysis.SpecialFunctions.Exp`, `Mathlib.Analysis.SpecialFunctions.Abs`).
- `Fin 2 → ℝ` is the right type for `*ᵥ` and `![…]`.
- `I := 1` is the identity matrix via `One`.
- Keep `vdot` and `vstep` as separate defs; do not claim `vstep` approximates `vdot` unless you add an explicit Euler statement.

Linear slice as a lemma:

```lean
lemma vdot_linear (p : Params) (v : Fin 2 → ℝ) (h : p.λE = 0) :
    vdot p v = (A p) *ᵥ v + p.j := by
  simp [vdot, h]
```

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

## Appendix: **SID form of the isolated momentum–flux dyad**  
(weak MFE slice only: $\bar M=\bar F=0$, no live geometry)

**S** = structure (state, spectrum, invariants)  
**I** = interaction (operators, couplings, missing regulators)  
**D** = dynamics (update, oscillation, runaway/collapse)

---

**1. Dyad state (S)**

$$
\mathbf{v}(t)=(M(t),F(t))\in\mathbb{R}^{2},\qquad
z=M+iF
$$

Polar form:

$$
\mathbf{v}=r\begin{pmatrix}\cos\varphi\\\sin\varphi\end{pmatrix},\qquad
r=\sqrt{M^{2}+F^{2}},\quad
\varphi=\mathrm{atan2}(F,M)
$$

Layout of the isolated pair:

$$
\begin{pmatrix}M&F\end{pmatrix}
$$

- $M$: momentum / inertia axis  
- $F$: flux / transport axis  
- $\mathbf{v}$: dyad state vector  

Balance index (only invariant left after counters are removed):

$$
B=M-F
$$

No counter-sum $C$, no total energy $T$, no bipolar moderation.

---

**2. Restricted PED triad on the dyad (S + I)**

$$
\mathrm{PED}(\mathbf{v})=\bigl(P(\mathbf{v}),\,\mathrm{Eval}(\mathbf{v}),\,D_{\mathrm{slice}}(\mathbf{v})\bigr)
$$

Power:

$$
P(\mathbf{v})=\tfrac12(M^{2}+F^{2})=\tfrac12 r^{2}
$$

Evaluation (example restriction of the engine potential):

$$
\mathrm{Eval}(\mathbf{v})=V(M,F)=\alpha e^{-|M|}+\beta\cos F
$$

Gradient slice:

$$
D_{\mathrm{slice}}(\mathbf{v}) =
\bigl(\partial_M P-\partial_M\mathrm{Eval},\;
\partial_F P-\partial_F\mathrm{Eval}\bigr)
$$

Power-flux analogue:

$$
S\sim MF
$$

---

**Interaction: what the dyad has, and what it does not (I)**

Present couplings:

- internal gradient of $\mathrm{Eval}$
- linear gain / rotation operator $\alpha I+\omega J$
- optional external SID steering
- optional PED gain $\lambda_P\mathbf{v}-\lambda_E\nabla\mathrm{Eval}$

Deleted bipolar activation (not in the dyad):

$$
\bar M^+=\max(0,M-\theta_M),\qquad
\bar F^+=\max(0,\theta_F-F)
$$

Consequence of the missing regulators:

$$
r\to\infty\quad\text{or}\quad r\to 0
$$

unless $\mathrm{Eval}$ or $A$ is hand-tuned.

External SID signals act only as frozen medium parameters:

$$
\sigma(G)=\text{structural pressure},\qquad
\rho(G)=\text{relational tension}
$$

$$
\alpha=\alpha^{0}+a_{\sigma}\sigma(G),\qquad
\omega=\omega^{0}+b_{\rho}\rho(G)
$$

This is external steering, not internal stabilization.

---

**Dynamics (D)**

Discrete dyad update:

$$
\mathbf{v}(t+1)=\Phi_{\mathrm{dyad}}(\mathbf{v}(t))
$$

Uncoupled oscillator skeleton (counters removed):

$$
\begin{aligned}
M^+&=M+1-\partial_M\mathrm{Eval}(M,F)\\
F^+&=F-1-\partial_F\mathrm{Eval}(M,F)
\end{aligned}
$$

Vector form:

$$
\mathbf{v}^+=
\mathbf{v}+\begin{pmatrix}1\\-1\end{pmatrix}-\nabla_{\mathbf{v}}\mathrm{Eval}(M,F)
$$

PED-coupled discrete update:

$$
\mathbf{v}^+=
\mathbf{v}^{0}+\lambda_P\mathbf{v}-\lambda_E\nabla_{\mathbf{v}}\mathrm{Eval}
$$

since $\nabla_{\mathbf{v}}P=\mathbf{v}$.

Continuous normal form:

$$
\dot{\mathbf{v}}=A\mathbf{v}+\mathbf{j},\qquad
A=\alpha I+\omega J=
\begin{pmatrix}\alpha&-\omega\\\omega&\alpha\end{pmatrix}
$$

with

$$
J=\begin{pmatrix}0&-1\\1&0\end{pmatrix},\qquad
J\begin{pmatrix}M\\F\end{pmatrix}=\begin{pmatrix}-F\\M\end{pmatrix}
$$

Complex form:

$$
\dot z=(\alpha+i\omega)z
$$

- $\alpha>0$: runaway radius  
- $\alpha<0$: collapse  
- $\omega$: $M$–$F$ oscillation  

Optional energy shaping:

$$
H(\mathbf{v})=\mu\,\mathrm{Eval}(\mathbf{v})+\nu\,P(\mathbf{v}),\qquad
\mathbf{v}^+=\mathbf{v}-\eta\nabla H(\mathbf{v})
$$

Optional weak spatial chain (still weaker than full RDG–MFE):

$$
\partial_t M_i=-\nabla_\Gamma F_i-\alpha_M M_i,\qquad
\partial_t F_i=-\nabla_\Gamma M_i-\alpha_F F_i
$$

---

**Weak identification (S, restricted)**

Full MFE state is four-coordinate:

$$
E=(M,F,\bar M,\bar F)
$$

This slice keeps only

$$
\mathbf{v}=\begin{pmatrix}M\\F\end{pmatrix}\;\sim\;
\begin{pmatrix}\phi_1\\\phi_2\end{pmatrix}
$$

Formal dictionary:

| Dyad object | Weak image | Not present here |
|---|---|---|
| $M$ | $\phi_1$ | regulated momentum axis |
| $F$ | $\phi_2$ | regulated flux axis |
| $z=M+iF$ | complex 2-component field | full bipolar block |
| $P=\tfrac12 r^{2}$ | scalar energy | 4-coordinate PED |
| $B=M-F$ | imbalance $\phi_1-\phi_2$ | not a full-MFE invariant |
| $J$ | planar rotation | full RDG operators |
| $\alpha I+\omega J$ | gain + oscillation | 4×4 operator with regulators |
| $\sigma(G),\rho(G)$ | frozen parameters | live RDG geometry |
| $\bar M,\bar F$ | deleted | bipolar regulators |

**Weak proposition.**  
If $\bar M=\bar F=0$, geometry is frozen or absent, and the operator is restricted to $\alpha I+\omega J$, the isolated dyad behaves as a 2-component linear field with gain $\alpha$ and oscillation $\omega$.

**Not claimed.**  
The dyad does not reproduce full MFE, full PED, evolving RDG geometry, or any 4-component engine.

---

**Compact SID summary**

- **S:** planar state $\mathbf{v}=(M,F)$, radius $r$, phase $\varphi$, power $P=\tfrac12 r^{2}$, imbalance $B=M-F$.  
- **I:** Eval gradients, SID-modulated $(\alpha,\omega)$, PED gain $\lambda_P\mathbf{v}-\lambda_E\nabla\mathrm{Eval}$; regulators $\bar M,\bar F$ absent.  
- **D:** $\dot{\mathbf{v}}=(\alpha I+\omega J)\mathbf{v}+\mathbf{j}$. Oscillation if $\omega\neq0$; runaway or collapse unless $\alpha$ and Eval are tuned by hand.

**Minimal citation set**

$$
\mathbf{v}=\begin{pmatrix}M\\F\end{pmatrix},\qquad
\dot{\mathbf{v}}=(\alpha I+\omega J)\mathbf{v}+\mathbf{j}
$$

$$
P=\tfrac12\lvert\mathbf{v}\rvert^{2},\qquad S\sim MF
$$

$$
\bar M=\bar F=0,\qquad \Gamma_t\ \text{not used}
$$
