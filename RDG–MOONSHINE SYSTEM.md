# RDG–MOONSHINE SYSTEM
*(EXPLICIT, FORMAL, COMPLETE — RECOMMENDED VERSION)*

## TYPES AND SPACES

| Symbol | Description |
|--------|-------------|
| $X$ | computational state space |
| $\mathbb{H}$ | upper half-plane $\{ \tau \in \mathbb{C} : {Im}(\tau) > 0 \}$ |
| ${SL}_2(\mathbb{Z})$ | ${SL}_2(\mathbb{Z})$ |
| $M$ | Monster group |
| ${Conj}(M)$ | conjugacy classes of $M$ |
| $\Pi$ | certificate / Q-mode slice space |
| ${Bool}$ | $\{{true}, {false}\}$ |
| $\Phi$ | computational field |
| $V^\natural$ | Moonshine module |
| ${Griess}$ | weight-2 subspace of $V^\natural$, $\dim 196884$ |
| ${MT}$ | $\mathbb{C}$-span of McKay–Thompson series |
| $\Gamma_0(N)$ | $\{ \begin{pmatrix} a & b \\ c & d \end{pmatrix} \in {SL}_2(\mathbb{Z}) : c \equiv 0 \pmod{N} \}$ |

## PARTICLE AND POPULATION

$$
p_t = (x_t, \tau_t, \pi_t)
$$

- $x_t \in X$
- $\tau_t \in \mathbb{H}$
- $\pi_t \in \Pi$

$$
P_t = \{ p_{1,t}, \dots, p_{n,t} \}
$$

## FOUNDATIONAL IDENTIFICATION

The computational coordinate space is identified with the Griess algebra so that it carries the natural nontrivial Monster action.

The maps below are intrinsic only after this identification is fixed.

### 1. EMBEDDING $F : X \to {Griess}$

Local jet coefficients:

$$
c(x) = (c_{-1}(x), c_0(x), \dots, c_K(x)) \in \mathbb{C}^{K+2}
$$

Constraint residuals:

$$
r(x) = (r_1(x), \dots, r_m(x)) \in \mathbb{R}^m
$$

$$
r(x) = 0 \iff C(x, \Phi)\ \text{holds}
$$

Linear isomorphism:

$$
\iota : \mathbb{C}^{K+2} \oplus \mathbb{R}^m \to \mathbb{R}^{196884}
$$

Embedding:

$$
F(x) = \iota\bigl(c(x),\ r(x)\bigr) \in {Griess}
$$

Dynamics compatibility:

$$
F\bigl(F_X(x, \Phi)\bigr) = \iota\bigl(c'(x, \Phi),\ r'(x, \Phi)\bigr)
$$

Thus $F$ is recomputed from the updated jet and residuals after $x \mapsto F_X(x, \Phi)$, and is compatible with the computational dynamics by construction.

### 2. CANONICAL STABILIZER AND CLASS MAP

For $y \in {Griess}$:

$$
{Orb}(y) = \{ m \cdot y : m \in M \}
$$

$$
{Stab}_M(y) = \{ m \in M : m \cdot y = y \}
$$

**Canonical stabilizer element.**  
Choose $s(y) \in {Stab}_M(y)$ by a fixed deterministic rule:

1. first minimize $|m|$ (group-element order),
2. then minimize word length in a fixed generating set,
3. then choose the lexicographically least word in a fixed ordered generating set.

This rule gives a unique $s(y)$ for every $y$.

**Class assignment:**

$$
\Sigma(y) = {conjugacy\_{class}}\bigl(s(y)\bigr)
$$

**Equivariance:**

$$
\Sigma(h \cdot y) = h \cdot \Sigma(y) \cdot h^{-1} \qquad \text{for all } h \in M.
$$

**State-to-class map:**

$$
g : X \to {Conj}(M),\qquad g(x) = \Sigma\bigl(F(x)\bigr)
$$

### 3. McKAY–THOMPSON SERIES

For $g \in M$:

$$
T_g(\tau) = {Tr}_{V^\natural}\bigl( g\, q^{L_0 - 1} \bigr) = \sum_{n \ge -1} a_n(g)\, q^n
$$

$$
q = \exp(2\pi i \tau)
$$

**Untwisted identity:**

$$
T_1(\tau) = j(\tau) - 744 = q^{-1} + 196884\, q + 21493760\, q^2 + \cdots
$$

### 4. LEVEL MAP

Let $\Gamma_g$ be the Conway–Norton group associated with $T_g$: the genus-zero subgroup of ${SL}_2(\mathbb{Z})$, up to the standard Conway–Norton normalization, for which $T_g$ is a Hauptmodul.

Define:

$$
N(g) = \min \{ N > 0 : \Gamma_0(N) \subseteq \Gamma_g \}
$$

**RDG level:**

$$
N_t = N\bigl(g(x_t)\bigr)
$$

**Allowed modular subgroup:**

$$
G_{{allowed}}(t) = \Gamma_0(N_t)
$$

### 5. MODULAR UPDATE

Choose:

$$
\gamma_t \in \Gamma_0(N_t)
$$

Update:

$$
\tau_{t+1} = \gamma_t \cdot \tau_t
$$

**Invariants:**

$$
j(\gamma_t \cdot \tau_t) = j(\tau_t)
$$

$$
T_{g(x_t)}(\gamma_t \cdot \tau_t) = T_{g(x_t)}(\tau_t)
$$

Thus the modular update preserves the $j$-function and all McKay–Thompson series associated with the current Monster class.

### 6. COEFFICIENT EXTRACTION

Coefficient functionals:

$$
\varphi_n : {MT} \to \mathbb{C},\qquad \varphi_n\Bigl(\sum_m a_m q^m\Bigr) = a_n
$$

For a fixed ordered list of powers $(n_1, \dots, n_k)$:

$$
E_k : {MT} \to \mathbb{C}^k,\qquad E_k(f) = \bigl(\varphi_{n_1}(f),\ \dots,\ \varphi_{n_k}(f)\bigr)
$$

In particular:

$$
E_k\bigl(T_{g(x)}(q)\bigr) = \bigl(a_{n_1}(g(x)),\ \dots,\ a_{n_k}(g(x))\bigr)
$$

### 7. PREDICTED VECTOR

Let

$$
H_{{pred}} : {Griess} \to \mathbb{C}^k
$$

be a fixed Monster-equivariant linear map.

Define:

$$
h(x) = H_{{pred}}\bigl(F(x)\bigr)
$$

The map $H_{{pred}}$ must be specified concretely, for example by fixing a Monster-equivariant decomposition of Griess and choosing linear functionals on its isotypic components.

### 8. CERTIFICATE PREDICATE

$$
Q : X \to {Bool}
$$

$$
Q(x) = {true}
\iff
C(x, \Phi)\ \text{holds}
\quad\text{AND}\quad
\bigl\| E_k\bigl(T_{g(x)}(q)\bigr) - h(x) \bigr\| \le \varepsilon
$$

**Certificate validity:**

$$
{ValidCert}(p_t, \pi_t) \iff Q(x_t)
$$

### 9. STRESS FUNCTIONS

**Geometric stress:**

$$
f_{{geom}}(\tau) = {Im}(\tau)
\quad\text{or}\quad
f_{{geom}}(\tau) = -\log|q| = 2\pi {Im}(\tau)
$$

**Q-mode stress:**

$$
f_Q(Q) = \mathbf{1}_{Q={false}}
$$

or, in the graded formulation,

$$
f_Q(Q, x) \ge 0,
\quad\text{with}\quad
f_Q(Q, x) = 0 \iff Q(x) = {true}.
$$

**Field stress:**

$$
f_{{field}}(\Phi, x)=
\text{local gradient norm, curvature, or coefficient-deviation measure associated with $\Phi$ at $x$}.
$$

### 10. LOCAL HEALTH

$$
B_{{inst}} : \text{particle state} \to \mathbb{R}_{\ge 0}
$$

$$
B_{{inst}}(p_t) =
\alpha\, f_{{geom}}(\tau_t) +
\beta\, f_Q\bigl(Q(x_t)\bigr) +
\gamma\, f_{{field}}(\Phi, x_t)
$$

**Parameters:**

- $\alpha > 0$
- $\beta \ge 0$
- $\gamma \ge 0$

Because $\alpha > 0$ and the other terms are nonnegative, $B_{{inst}}$ is bounded only if ${Im}(\tau_t)$ is bounded.

### 11. POPULATION HEALTH

**Instantaneous population health:**

$$
B_{{long}}(P_t) =
\frac{1}{n} \sum_{i=1}^n B_{{inst}}(p_{i,t})
$$

**Accumulated population health:**

$$
B_{{long}}(P_{0:T}) =
\sum_{t=0}^T B_{{long}}(P_t)
$$

### 12. CUSP BEHAVIOR

If

$$
{Im}(\tau_t) \to +\infty
$$

then:

- $q_t = \exp(2\pi i \tau_t) \to 0$
- $j(\tau_t) \sim q_t^{-1}$
- $B_{{inst}}(p_t) \to +\infty$
- $B_{{long}}(P_t) \to +\infty$ if any particle undergoes cusp escape.

Thus cusp approach is detected by divergence of the health functional.

### 13. FORMALIZABILITY

**Instantaneous formalizability:**

$$
K_{{inst}}(x) = {true}
\iff
\text{there exists an admissible evolution beginning at $x$ such that $B_{{inst}}$ remains bounded}.
$$

**Long-run formalizability:**

$$
K_{{long}}(x) = {true}
\iff
\text{there exists an admissible evolution beginning at $x$ such that $B_{{long}}$ remains bounded}.
$$

**Global formalizability:**

$$
K(x) = {false}
\iff
\text{every admissible evolution beginning at $x$ is cusp-driven}.
$$

**Equivalences:**

- bounded $B_{{inst}} \iff \sup_t {Im}(\tau_t) < \infty$
- cusp-driven evolution $\implies K(x) = {false}$
- every admissible evolution cusp-driven $\iff K(x) = {false}$

### 14. ARITHMETIC CORE

$$
71 \times 59 \times 47 = 196883
$$

$$
196884 = 196883 + 1
$$

$$
196883 = \text{dimension of the smallest nontrivial irreducible representation of $M$}
$$

$$
T_1(\tau) = j(\tau) - 744 = q^{-1} + 196884\, q + \cdots
$$

### 15. COMPOSITE MAPS

- $F : X \to {Griess}$
- $\Sigma : {Griess} \to {Conj}(M)$
- $g = \Sigma \circ F : X \to {Conj}(M)$
- $N_t = N\bigl(g(x_t)\bigr)$
- $\gamma_t \in \Gamma_0(N_t)$
- $\tau_{t+1} = \gamma_t \cdot \tau_t$
- $E_k : {MT} \to \mathbb{C}^k$
- $h(x) = H_{{pred}}\bigl(F(x)\bigr)$
- $Q(x) = C(x,\Phi)\ {AND}\ \bigl\| E_k(T_{g(x)}(q)) - h(x) \bigr\| \le \varepsilon$
- $B_{{inst}} = \alpha f_{{geom}} + \beta f_Q + \gamma f_{{field}}$
- $B_{{long}} =$ population average or accumulated population health
- $K(x) = {false} \iff$ all admissible evolutions are cusp-driven

## SYSTEM STATUS

The RDG–Moonshine system is fully specified as an explicit algebraic-modular pipeline:

$$
\begin{align*}
&\text{computational state} \\
&\to \text{Griess embedding} \\
&\to \text{Monster conjugacy class} \\
&\to \text{Conway–Norton level} \\
&\to \Gamma_0(N)\text{-modular evolution} \\
&\to \text{McKay–Thompson coefficient extraction} \\
&\to \text{equivariant prediction} \\
&\to \text{hybrid algebraic certificate} \\
&\to \text{stress / health functional} \\
&\to \text{cusp-driven formalizability criterion}.
\end{align*}
$$

## APPPENDIX: DIAGRAMMATIC VERSION

**Pipeline:**

$$
\text{State Space} \to \text{Griess} \to \text{Monster} \to \text{Modular Group} \to \tau\text{-Dynamics} \to \text{Certificate} \to \text{Health}
$$

---

### 1. Computational State

```
x ∈ X
   |
   |  (local jet + residual extraction)
   v
c(x), r(x) ∈ ℂ^{K+2} ⊕ ℝ^m
```

---

### 2. Embedding into Griess

```
c(x), r(x)
   |
   |  (linear isomorphism ι)
   v
F(x) ∈ Griess  (dim 196884)
```

$$
F(x) = \iota\bigl(c(x),\ r(x)\bigr)
$$

---

### 3. Monster Action & Class Assignment

```
F(x)
   |
   |  (Monster action on Griess)
   v
Orb(F(x)) = { m · F(x) : m ∈ M }
Stab_M(F(x)) = { m ∈ M : m · F(x) = F(x) }

   |
   |  (canonical stabilizer element)
   v
s(F(x)) ∈ Stab_M(F(x))

   |
   |  (take conjugacy class)
   v
g(x) = Σ(F(x)) ∈ Conj(M)
```

---

### 4. Moonshine Series

```
g(x)
   |
   |  (graded trace on V♮)
   v
T_{g(x)}(τ) = Tr_{V♮}( g(x) q^{L_0 − 1} )
q = exp(2πi τ)
```

---

### 5. Conway–Norton Level

```
g(x)
   |
   |  (find Γ_g, the genus-zero group of T_g)
   v
Γ_g ⊂ SL₂(ℝ)

   |
   |  (minimal congruence level)
   v
N(g(x)) = min{ N > 0 : Γ₀(N) ⊆ Γ_g }

   |
   v
N_t = N(g(x_t))
```

---

### 6. Modular Update

```
τ_t ∈ ℍ
   |
   |  (choose γ_t ∈ Γ₀(N_t))
   v
τ_{t+1} = γ_t · τ_t
```

**Invariants:**

$$
j(\tau_{t+1}) = j(\tau_t)
$$

$$
T_{g(x_t)}(\tau_{t+1}) = T_{g(x_t)}(\tau_t)
$$

---

### 7. Extraction Operator

```
T_{g(x)}(τ)
   |
   |  (coefficient functionals φ_n)
   v
E_k(T_{g(x)}(τ)) = (a_{n₁}(g(x)), …, a_{n_k}(g(x))) ∈ ℂ^k
```

---

### 8. Predicted Vector

```
F(x)
   |
   |  (Monster-equivariant linear map H_pred)
   v
h(x) = H_pred(F(x)) ∈ ℂ^k
```

---

### 9. Certificate

```
E_k(T_{g(x)}(τ)),  h(x)
   |
   |  (comparison)
   v
Q(x) = true  ⇔  C(x, Φ) ∧ ‖E_k(T_{g(x)}(τ)) − h(x)‖ ≤ ε
```

---

### 10. Stress & Health

```
τ_t, Q(x_t), Φ
   |
   |  (stress functions)
   v
B_inst(p_t) = α f_geom(τ_t)
            + β f_Q(Q(x_t))
            + γ f_field(Φ, x_t)
```

**Population:**

$$
B_{\text{long}}(P_t) = \frac{1}{n} \sum_{i=1}^n B_{\text{inst}}(p_{i,t})
$$

---

### 11. Formalizability

```
{ τ_t }
   |
   |  (cusp detection)
   v
Im(τ_t) → ∞  ⇒  B_inst → ∞

   |
   v
K(x) = false  ⇔  all admissible evolutions are cusp-driven
```

---

### Full Pipeline Summary

```
X
 → F
 → Griess
 → Σ
 → Conj(M)
 → N
 → Γ₀(N)
 → τ-update
 → T_g
 → E_k
 → h(x)
 → Q(x)
 → B_inst
 → B_long
 → K(x)
```

---

### Composite Flow (Compact)

$$
\begin{align*}
x &\mapsto F(x) \in {Griess} \\
&\mapsto g(x) = \Sigma(F(x)) \in {Conj}(M) \\
&\mapsto N_t = N(g(x_t)) \\
&\mapsto \tau_{t+1} = \gamma_t \cdot \tau_t \quad (\gamma_t \in \Gamma_0(N_t)) \\
&\mapsto E_k(T_{g(x)}) \quad\text{vs}\quad h(x) \\
&\mapsto Q(x) \\
&\mapsto B_{{inst}}(p_t) \\
&\mapsto B_{{long}}(P_t) \\
&\mapsto K(x)
\end{align*}
$$











## APPENDIX: Graph-Theoretic Diagram

## Vertices (Nodes)

| Symbol | Description |
|--------|-------------|
| $X$ | computational state space |
| $G$ | Griess algebra ($\dim 196884$) |
| ${Conj}(M)$ | Monster conjugacy classes |
| ${MT}$ | McKay–Thompson series space |
| $N$ | positive integers (Moonshine levels) |
| $\Gamma_0(N)$ | congruence subgroups |
| $\mathbb{H}$ | upper half-plane |
| $\mathbb{C}^k$ | $k$-dimensional coefficient space |
| ${Bool}$ | $\{{true}, {false}\}$ |
| $\mathbb{R}_{\ge 0}$ | nonnegative reals (health values) |
| $\Pi$ | certificate slice space |

---

## Edges (Directed Maps)

1. **State → Griess**  
   $X \xrightarrow{F} G$

2. **Griess → Monster class**  
   $G \xrightarrow{\Sigma} {Conj}(M)$

3. **Monster class → McKay–Thompson series**  
   ${Conj}(M) \xrightarrow{T} {MT}$

4. **Monster class → Moonshine level**  
   ${Conj}(M) \xrightarrow{N} N$

5. **Level → congruence subgroup**  
   $N \xrightarrow{\Gamma_0} \Gamma_0(N)$

6. **Modular update**  
   $(\Gamma_0(N),\ \mathbb{H}) \xrightarrow{{action}} \mathbb{H}$  
   $(\gamma,\ \tau) \mapsto \gamma \cdot \tau$

7. **MT → extracted coefficients**  
   ${MT} \xrightarrow{E_k} \mathbb{C}^k$

8. **Griess → predicted coefficients**  
   $G \xrightarrow{H_{{pred}}} \mathbb{C}^k$

9. **Coefficient comparison → certificate**  
   $(\mathbb{C}^k,\ \mathbb{C}^k) \xrightarrow{{compare}} {Bool}$  
   $\bigl(E_k(T_g),\ h(x)\bigr) \mapsto Q(x)$

10. **Certificate + $\tau$ + $\Phi$ → stress**  
    $({Bool},\ \mathbb{H},\ \Phi) \xrightarrow{{stress}} \mathbb{R}_{\ge 0}$

11. **Stress → health**  
    $\mathbb{R}_{\ge 0} \xrightarrow{{aggregate}} \mathbb{R}_{\ge 0}$

12. **Health → formalizability**  
    $\mathbb{R}_{\ge 0} \xrightarrow{{boundedness}} {Bool}$  
    $B_{{inst}}$ or $B_{{long}}$ bounded? $\to K(x)$

---

## Graph Structure (Full Pipeline)

```
 X
 ↓ F
 G
 ↓ Σ
Conj(M)
 ↓ N
 N
 ↓ Γ_0
Γ_0(N)
 ↓ action
ℍ  (τ-dynamics)
 ↓ T_g
MT
 ↓ E_k
ℂ^k   ← H_pred ← G
   \           /
    \         /
      compare
        ↓
      Bool (Q)
        ↓
   stress functions
        ↓
     ℝ_{\ge0} (B_inst)
        ↓
   population aggregate
        ↓
     ℝ_{\ge0} (B_long)
        ↓
   boundedness test
        ↓
     Bool (K)
```

---

## Multigraph View (All Edges)

```
X --F--> G --Σ--> Conj(M) --N--> N --Γ_0--> Γ_0(N)
Γ_0(N) × ℍ --action--> ℍ --T_g--> MT --E_k--> ℂ^k
G --H_pred--> ℂ^k
(ℂ^k × ℂ^k) --compare--> Bool (Q)
(Q × τ × Φ) --stress--> ℝ_{\ge0} --aggregate--> ℝ_{\ge0} --bounded--> Bool (K)
```

---

## Paths

### Main forward path

$$
X \to G \to {Conj}(M) \to N \to \Gamma_0(N) \to \tau\text{-update} \to {MT} \to \mathbb{C}^k \to Q \to B_{{inst}} \to B_{{long}} \to K
$$

### Feedback path
$$
G \to \mathbb{C}^k \to Q \to \text{stress} \to \text{health} \to \text{formalizability}
$$

### Certificate subgraph
$$
\begin{align*}
G &\to {Conj}(M) \to {MT} \to \mathbb{C}^k \\
G &\to \mathbb{C}^k \\
(\mathbb{C}^k \times \mathbb{C}^k) &\to {Bool}
\end{align*}
$$

### Modular subgraph
$$
{Conj}(M) \to N \to \Gamma_0(N) \to \mathbb{H} \to {MT}
$$

### Health subgraph
$$
(Q,\ \tau,\ \Phi) \to \text{stress} \to B_{{inst}} \to B_{{long}} \to K
$$

---

This is the complete graph-theoretic representation of the RDG–Moonshine system.

## APPENDIX: Continuum-Limit Derivation 
Continuum-Limit Derivation of the Modular Update

Start from the discrete modular update

$$
\tau_{t+1} = \gamma_t \cdot \tau_t, \qquad \gamma_t \in \Gamma_0(N_t),
$$

and pass to a continuous-time evolution $\tau(t)$ on the upper half-plane $\mathbb{H}$, driven by a vector field coming from the Lie algebra of $\mathrm{SL}_2(\mathbb{R})$.

---

### 1. Discrete modular update as group action

At each step $t$:

- **State:** $\tau_t \in \mathbb{H}$
- **Group element:** $\gamma_t \in \Gamma_0(N_t) \subset \mathrm{SL}_2(\mathbb{Z}) \subset \mathrm{SL}_2(\mathbb{R})$
- **Update:**

$$
\tau_{t+1}  = \gamma_t \cdot \tau_t  = \frac{a_t \tau_t + b_t}{c_t \tau_t + d_t},
\qquad
\gamma_t = \begin{pmatrix} a_t & b_t \\ c_t & d_t \end{pmatrix}.
$$

This is a **discrete orbit** of $\tau_t$ under the modular group.

---

### 2. Embedding into continuous time

Introduce a continuous time parameter $s \in \mathbb{R}$ and a curve $\tau(s) \in \mathbb{H}$.  
The discrete update is to arise as a **time-$\Delta s$** map of a continuous flow:

$$
\tau_{t+1} \approx \tau(t + \Delta s), \qquad \tau_t \approx \tau(t).
$$

Assume each $\gamma_t$ is close to the identity in $\mathrm{SL}_2(\mathbb{R})$:

$$
\gamma_t = \exp(\Delta s \, X_t),
$$

for some $X_t \in \mathfrak{sl}_2(\mathbb{R})$, the Lie algebra of $\mathrm{SL}_2(\mathbb{R})$.

Then

$$
\tau_{t+1}= \gamma_t \cdot \tau_t= \exp(\Delta s \, X_t) \cdot \tau_t
\approx \tau_t + \Delta s \, V_t(\tau_t),
$$

where $V_t$ is the vector field on $\mathbb{H}$ induced by $X_t$.

---

### 3. Lie algebra and induced vector field

The Lie algebra $\mathfrak{sl}_2(\mathbb{R})$ has basis elements corresponding to infinitesimal transformations:

- **Translation:** $T : \tau \mapsto \tau + \varepsilon$
- **Dilation:** $D : \tau \mapsto (1+\varepsilon)\tau$
- **Inversion-type:** $I : \tau \mapsto \tau / (1 + \varepsilon \tau)$

Each $X \in \mathfrak{sl}_2(\mathbb{R})$ induces a vector field $V_X(\tau)$ on $\mathbb{H}$ of the form

$$
V_X(\tau) = A + B\tau + C\tau^2, \qquad A,B,C \in \mathbb{R},
$$

corresponding to the infinitesimal Möbius transformation.

Thus the **continuous evolution** is

$$
\frac{d\tau}{ds} = V(\tau,s) = A(s) + B(s)\tau(s) + C(s)\tau(s)^2,
$$

with $A,B,C$ determined by the chosen $X_s \in \mathfrak{sl}_2(\mathbb{R})$.

---

### 4. Continuum limit of the discrete update

Given

$$
\tau_{t+1} = \gamma_t \cdot \tau_t, \qquad \gamma_t = \exp(\Delta s \, X_t),
$$

have

$$
\frac{\tau_{t+1} - \tau_t}{\Delta s} \approx V_{X_t}(\tau_t).
$$

In the limit $\Delta s \to 0$:

$$
\frac{d\tau}{ds} = V_{X_s}(\tau(s)).
$$

So the discrete modular update is the **time- $\Delta s$ ** map of the continuous flow generated by $X_s \in \mathfrak{sl}_2(\mathbb{R})$.

---

### 5. Constraint to $\Gamma_0(N_t)$

In RDG–Moonshine, $\gamma_t$ is restricted to $\Gamma_0(N_t)$.  
In the continuum limit this means:

- $X_t$ must lie in the **Lie algebra of the real closure** of $\Gamma_0(N_t)$,
- the flow $\tau(s)$ stays on the modular curve associated to $\Gamma_0(N_t)$.

The continuous evolution is therefore

$$
\frac{d\tau}{ds} = V_{N(s)}(\tau(s)),
$$

where $V_{N(s)}$ is a vector field compatible with the congruence subgroup $\Gamma_0(N(s))$.

---

### 6. Summary

- **Discrete update:**  
  $\tau_{t+1} = \gamma_t \cdot \tau_t$, $\gamma_t \in \Gamma_0(N_t)$.

- **Continuum limit:**  
  $\gamma_t = \exp(\Delta s \, X_t) \implies \dfrac{d\tau}{ds} = V_{X_s}(\tau(s))$.

- The modular update is the **discrete sampling** of a continuous flow on $\mathbb{H}$ generated by $\mathfrak{sl}_2(\mathbb{R})$, constrained by the Moonshine level $N_t$.
