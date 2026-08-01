# **Nonsofic Rigidity Invariants** 

Analytic quantities that *measure*, *encode*, and *certify* the failure of finite approximation in a group. 
They are the “spectral fingerprints” of non‑soficity; the invariants that stay stable under all finite or matrix approximations, yet take values that **no approximable group can achieve**. They are the exact dual of modular invariant : instead of encoding hidden symmetry, they encode **hidden obstruction**.

---

## 🧩 **1. Rigidity invariant** 
Formal definition
  
Let $\(G\)$ be finitely generated. A **nonsofic rigidity invariant** is a quantity. These invariants are the analytic witnesses of non‑approximability.

$$\mathcal{I}(G)$$

satisfying:

1. **Stability under finite approximation:**  
   If $\(G\)$ were sofic, then every sofic approximation sequence would force $$\mathcal{I}(G) = \mathcal{I}_{\mathrm{finite}}.$$

2. **Rigidity under operator limits:**  
   $\(\mathcal{I}(G)\)$ is computed inside $\(L(G)\)$, the group von Neumann algebra, and remains unchanged under ultraproduct embeddings.

4. **Obstruction value:**  
   For a nonsofic group, $$\mathcal{I}(G) \neq \mathcal{I}_{\mathrm{finite}},$$ and the deviation is *detectable* in traces, spectral gaps, or expansion operators.

---

## 🧱 **2. Four canonical invariants**
Each corresponds to one component of the obstruction package.

### **(A) Spectral‑gap rigidity invariant**  
This is the cleanest “Property (T) obstruction” invariant.

$$\mathcal{R}(G) := \inf_{\pi} \lambda_1(\Delta_\pi)$$

where $\(\Delta_\pi\)$ is the Laplacian of a unitary representation $\(\pi\)$. For sofic groups, approximating representations force  $$\mathcal{R}(G) = 0.$$ For nonsofic groups, rigidity forces $$\mathcal{R}(G) > 0.$$

---

### **(B) Expander‑embedding invariant**  
This is the geometric obstruction.

$$\mathcal{E}(G) := \sup \{ h(X_n) : X_n \hookrightarrow \mathrm{Cay}(G) \}$$

where $\(h(X_n)\)$ is the Cheeger constant of an embedded expander family. Sofic groups cannot have uniformly embedded expanders in their Cayley graphs. Nonsofic groups can have $$\mathcal{E}(G) = \infty.$$

---

### **(C) Residual‑collapse invariant**  
This is the algebraic obstruction.

$$\mathcal{Q}(G) := \lim_{n\to\infty} |G/N_n|$$

for any chain of finite‑index normal subgroups \(N_n\).

Sofic groups require rich residual towers:  $$\mathcal{Q}(G) = \infty.$$
Nonsofic groups often satisfy $$\mathcal{Q}(G) = 1.$$

---

### **(D) Matrix‑model failure invariant**  
This is the operator‑algebraic obstruction.

$$\mathcal{M}(G) := \inf_{\pi_n} \|\lambda_G - \pi_n\|_{2}$$

where $\(\lambda_G\)$ is the left‑regular representation.

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
Let $\(G\)$ be a finitely generated group. The **Nonsofic Rigidity Index** is a composite invariant $\mathcal{N}(G)$ built from four obstruction components, each encoding a different facet of “forced approximation vs structural refusal”:

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

$\(\alpha_R,\alpha_E,\alpha_Q,\alpha_M > 0\)$ are fixed weights (normalization constants).

---

### Component invariants

- **Rigidity component**
  
  $$\mathcal{R}(G)
  :=
  \inf_{\pi} \lambda_1(\Delta_\pi) $$
  
  where $\(\pi\$) ranges over unitary representations of $\(G\)$, and $\(\Delta_\pi\)$ is the associated Laplacian.  
  For groups admitting good finite/matrix approximations, $\(\mathcal{R}(G)\)$ tends to $\(0\)$; strong Property ($T$) pushes $\(\mathcal{R}(G)\)$ away from $\(0\$).

- **Expansion component**
  
  $$\mathcal{E}(G)
  :=
  \sup \{ h(X_n) : X_n \hookrightarrow \mathrm{Cay}(G) \}$$
  
  where $\(h(X_n)\)$ is the Cheeger constant of an embedded expander family $\(X_n\)$ in a Cayley graph of $\(G\)$.  
  Sofic groups cannot support arbitrarily strong embedded expanders in a way compatible with finite permutation approximations; nonsofic candidates can have $\(\mathcal{E}(G)\)$ large or unbounded.

- **Residual‑collapse component**
  
  Fix any descending chain of finite‑index normal subgroups $\((N_n)\)$. Define
  
  $$\mathcal{Q}(G)
  :=
  \inf_{(N_n)} \limsup_{n\to\infty} \frac{1}{|G/N_n|}$$
  
  For residually finite groups with rich finite quotients, $\(|G/N_n|\to\infty\)$ and $\(\mathcal{Q}(G)=0\)$.  
  When residual chains collapse or stabilize (few/trivial finite quotients), $\(\mathcal{Q}(G)\)$ becomes positive.

- **Matrix‑approximation component**  

  $$\mathcal{M}(G)
  :=
  \inf_{\{\pi_n\}} \big\|\lambda_G - \pi_n\big\|_{2}$$

  where $\(\lambda_G\)$ is the left‑regular representation on $\(\ell^2(G)\)$, and $\(\pi_n : G \to U(d_n)\)$ ranges over all sequences of finite‑dimensional unitary representations, with $\(\|\cdot\|_2\)$ the normalized Hilbert–Schmidt distance on matrix coefficients.  

  Hyperlinear/sofic groups satisfy $\(\mathcal{M}(G)=0\)$; non‑hyperlinear/nonsofic groups force $\(\mathcal{M}(G)>0\)$.

---

### Normalization and threshold

To turn $\(\mathcal{N}(G)\)$ into a **nonsofic detector**, fix a reference class $\(\mathcal{F}\)$ of “fully approximable” groups (e.g. residually finite, hyperlinear, Connes‑embeddable). 
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

In practice, one tunes the weights $\(\alpha_R,\alpha_E,\alpha_Q,\alpha_M\)$ so that:

- approximable groups cluster with $\(\mathcal{N}(G)\)$ near or below $\(\mathcal{N}_{\mathrm{finite}}\)$,
- explicit nonsofic constructions push at least one component (often $\(\mathcal{E}\)$ or $\(\mathcal{M}\))$ far beyond that baseline.



