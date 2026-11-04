### Consistency Metrics
Mathematical Formulation - Relational Coherence Functional

Let $\{X_i\}_{i=1}^{K}$ be a family of states (frames, snapshots, configurations, records, $\ldots$).  
RDG extracts a scalar coherence measure from this family by the following operators and equations. 

$$
\{X_i\}
\;\xrightarrow{\;\Gamma\;}\;
\{\Phi_i\}
\;\xrightarrow{\;\langle\cdot\rangle\;}\; A
\;\xrightarrow{\;d\;}\;
\{D_i\}
\;\xrightarrow{\;\langle\cdot\rangle\;}\;
\overline{D}
\;\xrightarrow{\;F\;}\; C
$$

This is a  domain-independent form. Instantiating $\Gamma$, $\Sigma$, $d$ and $F$ recovers the original IHC metric (and any analogous consistency measure on other relational state spaces).

#### Notation Summary

| Symbol | Meaning |
|--------|---------|
| $X_i$ | $i$-th observed state |
| $\Gamma$ | relational decomposition operator |
| $\Phi_i=\Sigma(\Gamma(X_i))$ | relational signature of state $i$ |
| $A$ | ensemble archetype (mean signature) |
| $d$ | relational metric / divergence on signature space |
| $D_i=d(\Phi_i,A)$ | deviation of the $i$-th signature |
| $\overline{D}$ | mean relational dispersion |
| $F$ | monotone decreasing coherence map |
| $C=F(\overline{D})$ | RDG coherence score |



#### 1. Relational Decomposition

$$
\Gamma : \mathcal{X} \to \mathcal{C}
$$

$$
X_i \;\longmapsto\; \Gamma(X_i) = \bigl(X_i^{(1)}, X_i^{(2)}, \dots, X_i^{(n)}\bigr)
$$

where $\mathcal{X}$ is the space of observed states and $\mathcal{C}$ is a product of component spaces.  
(The classical Retinex split $S = R\cdot I$ is the special case $n=2$.)

#### 2. Relational Signature

$$
\Sigma : \mathcal{C} \to \mathcal{S}
$$

$$
\Phi_i = \Sigma\bigl(\Gamma(X_i)\bigr)
$$

where $\Phi_i\in\mathcal{S}$ is the signature of state $i$ and $\mathcal{S}$ is a metric (or divergence) space.  
Examples of $\Sigma$: histogram, degree distribution, spectral density, topological invariant, feature embedding, probability measure, $\ldots$.

#### 3. Ensemble Archetype

$$
A = \langle\Phi\rangle_K := \frac{1}{K}\sum_{i=1}^{K}\Phi_i \;\in\;\mathcal{S}
$$

(the barycenter, consensus relation, or reference geometry of the ensemble).

#### 4. Relational Deviation

$$
d : \mathcal{S}\times\mathcal{S} \to [0,\infty)
$$

$$
D_i = d(\Phi_i, A)
$$

where $d$ is any metric or divergence on the signature space  
(L¹, L², Wasserstein, graph-edit, spectral, topological, $\ldots$).

#### 5. Mean Relational Dispersion

$$
\overline{D} = \langle D\rangle_K := \frac{1}{K}\sum_{i=1}^{K} D_i = \frac{1}{K}\sum_{i=1}^{K} d(\Phi_i, A)
$$

#### 6. Coherence Functional

$$
C = F(\overline{D})
$$

where $F:[0,\infty)\to\mathbb{R}$ is any monotone non-increasing map.  
(The classical IHC uses the affine choice $F(x)=2-x$.)

#### Master Equation

$$
C_{\mathrm{RDG}} =
F\!\left(
\frac{1}{K}
\sum_{i=1}^{K}
d\!\Bigl(
\Phi_i,\;
\frac{1}{K}\sum_{m=1}^{K}\Phi_m
\Bigr)
\right)
$$

with

$$
\Phi_i = \Sigma\bigl(\Gamma(X_i)\bigr).
$$

