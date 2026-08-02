# **Nonsofic Rigidity Invariants** 
This note proposes a formal framework of analytic invariants that detect and quantify non‑soficity in finitely generated groups by packaging several complementary obstructions into a single scalar, the Nonsofic Rigidity Index ${𝒩(G)}$. Analytic quantities that *measure*, *encode*, and *certify* the failure of finite approximation in a group. They are the “spectral fingerprints” of non‑soficity; the invariants that stay stable under all finite or matrix approximations, yet take values that **no approximable group can achieve**. They are the exact dual of modular invariant: instead of encoding hidden symmetry, they encode **hidden obstruction**.

---

## 🧩 **1. Rigidity invariant** 
Formal definition
  
Let $G$ be finitely generated. A **nonsofic rigidity invariant** is a quantity. These invariants are the analytic witnesses of non‑approximability.

$$\mathcal{I}(G)$$

satisfying:

1. **Stability under finite approximation:**  
   If $G$ were sofic, then every sofic approximation sequence would force $$\mathcal{I}(G) = \mathcal{I}_{\mathrm{finite}}.$$

2. **Rigidity under operator limits:**  
   $\mathcal{I}(G)$ is computed inside $L(G)$, the group von Neumann algebra, and remains unchanged under ultraproduct embeddings.

4. **Obstruction value:**  
   For a nonsofic group, $$\mathcal{I}(G) \neq \mathcal{I}_{\mathrm{finite}},$$ and the deviation is *detectable* in traces, spectral gaps, or expansion operators.

---

## 🧱 **2. Four canonical invariants**
Each corresponds to one component of the obstruction package.

### **(A) Spectral‑gap rigidity invariant**  
This is the cleanest “Property (T) obstruction” invariant.

$$\mathcal{R}(G) := \inf_{\pi} \lambda_1(\Delta_\pi)$$

where $\Delta_\pi$ is the Laplacian of a unitary representation $\pi$. For sofic groups, approximating representations force  $$\mathcal{R}(G) = 0.$$ For nonsofic groups, rigidity forces $$\mathcal{R}(G) > 0.$$

---

### **(B) Expander‑embedding invariant**  
This is the geometric obstruction.

$$\mathcal{E}(G) := \sup \{ h(X_n) : X_n \hookrightarrow \mathrm{Cay}(G) \}$$

where $h(X_n)$ is the Cheeger constant of an embedded expander family. Sofic groups cannot have uniformly embedded expanders in their Cayley graphs. Nonsofic groups can have $$\mathcal{E}(G) = \infty.$$

---

### **(C) Residual‑collapse invariant**  
This is the algebraic obstruction.

$$\mathcal{Q}(G) := \lim_{n\to\infty} |G/N_n|$$

for any chain of finite‑index normal subgroups $N_n$.

Sofic groups require rich residual towers:  $$\mathcal{Q}(G) = \infty.$$
Nonsofic groups often satisfy $$\mathcal{Q}(G) = 1.$$

---

### **(D) Matrix‑model failure invariant**  
This is the operator‑algebraic obstruction.

$$\mathcal{M}(G) := \inf_{\pi_n} \|\lambda_G - \pi_n\|_{2}$$

where $\lambda_G$ is the left‑regular representation.

Sofic/hyperlinear groups satisfy $$\mathcal{M}(G) = 0.$$
Nonsofic groups satisfy $$\mathcal{M}(G) > 0.$$

---

## 🧬 **3. The unified invariant**
The obstruction package naturally defines the **Nonsofic Rigidity Index**:

$$
\boxed{
\mathcal{N}(G) := 
\mathcal{R}(G) + \mathcal{E}(G) + \mathcal{Q}(G) + \mathcal{M}(G)
}
$$

A group is nonsofic **iff** $$\mathcal{N}(G) > \mathcal{N}_{\mathrm{finite}}.$$

This is the operator‑clean, compatible invariant that captures the entire obstruction package in one scalar.

---

## 🌑 **4. Nonsofic Rigidity Index**
They are the analytics of:

- non‑soficity  
- non‑hyperlinearity  
- non‑Connes‑embeddability  
- $exotic II\(_1\)$ factor behavior  
- failure of ultraproduct embeddings  
- breakdown of graph/hyperfinite limits

### Definition 
Let $G$ be a finitely generated group. The **Nonsofic Rigidity Index** is a composite invariant $\mathcal{N}(G)$ built from four obstruction components, each encoding a different facet of “forced approximation vs structural refusal”:

$$\boxed{
\mathcal{N}(G)
:= 
\alpha_R\,\mathcal{R}(G)
\;+\;
\alpha_E\,\mathcal{E}(G)
\;+\;
\alpha_Q\,\mathcal{Q}(G)
\;+\;
\alpha_M\,\mathcal{M}(G)
}$$

where 

$\alpha_R,\alpha_E,\alpha_Q,\alpha_M > 0$ are fixed weights (normalization constants).

---

### Component invariants

- **Rigidity component**
  
  $$\mathcal{R}(G)
  :=
  \inf_{\pi} \lambda_1(\Delta_\pi) $$
  
  where $\pi$ ranges over unitary representations of $G$, and $\Delta_\pi$ is the associated Laplacian.  
  For groups admitting good finite/matrix approximations, $\mathcal{R}(G)$ tends to $0$; strong Property ($T$) pushes $\mathcal{R}(G)$ away from $0$.

- **Expansion component**
  
  $$\mathcal{E}(G)
  :=
  \sup \{ h(X_n) : X_n \hookrightarrow \mathrm{Cay}(G) \}$$
  
  where $h(X_n)$ is the Cheeger constant of an embedded expander family $X_n$ in a Cayley graph of $G$.  
  Sofic groups cannot support arbitrarily strong embedded expanders in a way compatible with finite permutation approximations; nonsofic candidates can have $\mathcal{E}(G)$ large or unbounded.

- **Residual‑collapse component**
  
  Fix any descending chain of finite‑index normal subgroups $N_n$. Define
  
  $$\mathcal{Q}(G)
  :=
  \inf_{(N_n)} \limsup_{n\to\infty} \frac{1}{|G/N_n|}$$
  
  For residually finite groups with rich finite quotients, $|G/N_n|\to\infty$ and $\mathcal{Q}(G)=0$.  
  When residual chains collapse or stabilize (few/trivial finite quotients), $\mathcal{Q}(G)$ becomes positive.

- **Matrix‑approximation component**  

  $$\mathcal{M}(G)
  :=
  \inf_{\{\pi_n\}} \big\|\lambda_G - \pi_n\big\|_{2}$$

  where $\lambda_G$ is the left‑regular representation on $\ell^2(G)$, and $\pi_n : G \to U(d_n)$ ranges over all sequences of finite‑dimensional unitary representations, with $\|\cdot\|_2$ the normalized Hilbert–Schmidt distance on matrix coefficients.  

  Hyperlinear/sofic groups satisfy $\mathcal{M}(G)=0$; non‑hyperlinear/nonsofic groups force $\mathcal{M}(G)>0$.

---

### Normalization and threshold

To turn $\mathcal{N}(G)$ into a **nonsofic detector**, fix a reference class $\mathcal{F}$ of “fully approximable” groups (e.g. residually finite, hyperlinear, Connes‑embeddable). 
Define the **finite‑approximation baseline**:

$$\mathcal{N}_{\mathrm{finite}}
:=
\sup_{H\in\mathcal{F}} \mathcal{N}(H).$$

Then the **Nonsofic Rigidity Criterion** is:

$$\boxed{
\mathcal{N}(G) > \mathcal{N}_{\mathrm{finite}}
\quad\Longrightarrow\quad
G \text{ is nonsofic, non‑hyperlinear, and non‑Connes‑embeddable.}
}$$

In practice, one tunes the weights $\alpha_R,\alpha_E,\alpha_Q,\alpha_M$ so that:

- approximable groups cluster with $\mathcal{N}(G)$ near or below $\mathcal{N}_{\mathrm{finite}}$,
- explicit nonsofic constructions push at least one component (often $\mathcal{E}$ or $\mathcal{M}$) far beyond that baseline.

### 1. Setup

Let $G$ be a finitely generated group, with:

- **Group von Neumann algebra:** $L(G)$  
- **Left-regular representation:** $\lambda_G : G \to \mathcal{U}(\ell^2(G))$  
- **Cayley graph:** $\mathrm{Cay}(G,S)$ for a fixed finite generating set $S$.

The **Nonsofic Rigidity Index** is a scalar invariant

$$
\mathcal{N}(G) \in [0,\infty]
$$

built from four obstruction components, each measuring a different mode of forced approximation vs structural refusal. This packages the rigidity–expansion approximation failure into a single, operator-clean invariant.

#### Baseline and criterion

Let $\mathcal{F}$ be a reference class of fully approximable groups (e.g. residually finite, hyperlinear, Connes-embeddable). Define the **finite-approximation baseline**:

$$
\mathcal{N}_{\mathrm{finite}}
:=
\sup_{H\in\mathcal{F}} \mathcal{N}(H).
$$

Then the **Nonsofic Rigidity Criterion** is:

$$
\boxed{
\mathcal{N}(G) > \mathcal{N}_{\mathrm{finite}}
\quad\Longrightarrow\quad
G \text{ is nonsofic, non-hyperlinear, and non-Connes-embeddable.}
}
$$

---

### 2. Component invariants

#### (a) Rigidity component $\mathcal{R}(G)$

For each unitary representation $\pi : {G} \to \{U}(\{H}_\pi$), let $\Delta\pi$ be the associated Laplacian:

$$
\Delta_\pi
:= 
\frac{1}{|S|}\sum_{s\in S} (I - \pi(s)).
$$

Define

$$
\mathcal{R}(G)
:=
\inf_{\pi} \lambda_1(\Delta_\pi),
$$

where $\lambda_1(\Delta_\pi)$ is the bottom of the nonzero spectrum of $\Delta_\pi$.

- For groups admitting good finite/matrix approximations, $\mathcal{R}(G)$ tends to $0$.
- Strong Property ($T$) or spectral gap pushes $\mathcal{R}(G)$ away from $0$.

#### (b) Expansion component $\mathcal{E}(G)$

Let $\{X_n\}$ range over all families of finite graphs that embed (coarsely or isometrically) into $\mathrm{Cay}(G,S)$. For each $X_n$, let $h(X_n)$ be its Cheeger constant.

Define

$$
\mathcal{E}(G)
:=
\sup_{\{X_n\hookrightarrow \mathrm{Cay}(G,S)\}} 
\limsup_{n\to\infty} h(X_n).
$$

- Sofic groups cannot support arbitrarily strong embedded expanders compatible with finite permutation approximations.
- Nonsofic candidates can have $\mathcal{E}(G)$ large or unbounded.

#### (c) Residual-collapse component \mathcal{Q}(G)

Let (N_n) range over all descending chains of finite-index normal subgroups of $G$:

$$
G \ge N_1 \ge N_2 \ge \cdots,\quad [G:N_n] < \infty.
$$


$$
\mathcal{Q}(G)
:=
\inf_{(N_n)}
\left(
\limsup_{n\to\infty} \frac{1}{[G:N_n]}
\right).
$$

- For residually finite groups with rich finite quotients, $[G:N_n]\to\infty$ and $\mathcal{Q}(G)=0$.
- When residual chains stabilize or collapse (few/trivial finite quotients), $\mathcal{Q}(G) > 0$.

#### (d) Matrix-approximation component $\mathcal{M}(G)$

Let $\{\pi_n\}$ range over all sequences of finite-dimensional unitary representations

$\pi_n : {G} \to \{U}(\{d}_{n}$)

For each $\pi_n\$, compare $\pi_n\$ to $\lambda_G\$ via normalized Hilbert–Schmidt distance on matrix coefficients (viewing $\lambda_G$ through finite truncations or appropriate finite subsets $F_n \subset G$:

$$
\|\lambda_G - \pi_n\|_2
:= 
\left(
\frac{1}{|F_n|}
\sum_{g\in F_n}
\|\lambda_G(g) - \pi_n(g)\|_{\mathrm{HS}}^2
\right)^{1/2}.
$$

Define

$$
\mathcal{M}(G)
:=
\inf_{\{\pi_n\}}
\limsup_{n\to\infty}
\|\lambda_G - \pi_n\|_2.
$$

- Hyperlinear/sofic groups satisfy $\mathcal{M}(G)=0$.
- Non-hyperlinear/nonsofic groups force $\mathcal{M}(G)>0$.

---

### 3. The Nonsofic Rigidity Index

Fix positive weights $\alpha_R,\alpha_E,\alpha_Q,\alpha_M > 0$. Define:

$$
\boxed{
\mathcal{N}(G)
:=
\alpha_R\,\mathcal{R}(G)
\;+\;
\alpha_E\,\mathcal{E}(G)
\;+\;
\alpha_Q\,\mathcal{Q}(G)
\;+\;
\alpha_M\,\mathcal{M}(G)
}
$$

This is the **full Nonsofic Rigidity Index**: a single scalar measuring how strongly $G$ exhibits rigidity–expansion approximation failure.

