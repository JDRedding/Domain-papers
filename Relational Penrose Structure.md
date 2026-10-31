# **Relational Penrose Structure** 
## Relational/admissibility presentation

**RDG** (Relational Dynamics Geometry) is a formal framework that recasts geometric constructions such as Penrose tilings in terms of admissible relational configurations rather than concrete tiles. In this language the underlying space is a **SID** (Structural Interaction Dynamics) configuration space $M=\{\phi_i,\pi_i,r_{ij}\}$ of local structural states, interaction/decoration states and relational connectivities; an admissibility operator $\Gamma$ selects the subset $M_A$ of locally compatible configurations, so that the Penrose pattern itself appears as the composite $\mathcal{P}=O(\Gamma(M_H))$. Inflation becomes a coarse-graining operator $C_\phi$ that intertwines with admissibility, the golden ratio emerges as the square root of the dominant eigenvalue of the substitution matrix, and an optional **PED** $(P,E,D)$ layer describes dynamics supported on the resulting admissible geometry. The essential claim is that global aperiodic order can arise solely from a local compatibility constraint acting on a larger space of potential relations.

### Configuration space

$$
M = \{\phi_i,\pi_i,r_{ij}\}
$$

- $\phi_i$: local structural state (combinatorial type of site $i$),
- $\pi_i$: local interaction/decoration state on the incident edges,
- $r_{ij}$: relational adjacency between sites $i$ and $j$.

$M$ is the space of all potential relational configurations; the geometric Penrose tiling is one admissible realization of this space.

### Admissibility operator

$$
\Gamma:M\to M_A,\qquad M_A\subset M
$$

$\Gamma$ retains only those configurations that satisfy the local compatibility (matching) conditions. In classical language the arrow/arc decorations on edges must agree; in RDG notation this is simply membership in the admissible subset $M_A$.

The admissible Penrose structure is

$$
\mathcal{P}=\Gamma(M).
$$

### Inflation as relational coarse-graining
Let $C_\phi$ be the coarse-graining (inflation) operator that expands by the linear factor $\phi$ and subdivides according to the Penrose substitution rule. Then

$$
C_\phi(M_n)=M_{n+1}.
$$

Admissibility is preserved under scaling:

$$
\Gamma\circ C_\phi=C_\phi\circ\Gamma
$$

(or equivalently $\Gamma(C_\phi(M))=C_\phi(\Gamma(M))$). This intertwining is the essential self-similarity property.

### Golden ratio as fixed-point scaling
The substitution matrix acting on the two structural states is

$$
S=\begin{pmatrix}2&1\\1&1\end{pmatrix}.
$$

It satisfies the eigenvalue equation

$$
Sv=\phi^2 v,
$$

where $\phi=(1+\sqrt{5})/2$ is the golden ratio (Perron–Frobenius eigenvalue $\lambda_{\mathrm{PF}}=\phi^2$). In RDG notation one may write

$$
\phi=\lambda_{\mathrm{SID}}^{1/2}.
$$

Thus $\phi$ appears as the dominant scaling mode of the admissible dynamics rather than merely a geometric length ratio.

### Invariant densities
Let $A$ and $B$ denote the thick and thin structural states respectively, and let $\mu$ be the unique invariant probability measure on the admissible space (the natural measure induced by the substitution). Then

$$
\frac{\mu(A)}{\mu(B)}\to\phi.
$$

The ratio is the consequence of repeated application of the admissibility operator amplifying the dominant eigenmode.

### Cut-and-project realization

$$
\begin{align*}
M_H&\quad\text{(high-dimensional potential configuration space)},\\
\Gamma:M_H&\to M_A,\\
O:M_A&\to M_O\quad\text{(observation/projection map)}.
\end{align*}
$$

The observed Penrose geometry is the composite

$$
\mathcal{P}=O\bigl(\Gamma(M_H)\bigr).
$$

(The classical construction recovers this when $M_H$ is a subset of $\mathbb{Z}^5$ and $O$ is the orthogonal projection onto the physical plane, with $\Gamma$ selecting the acceptance-window condition.)

### Aperiodicity
There exists no nontrivial finite translational operator $T$ such that

$$
T(M_A)=M_A.
$$

Nevertheless local admissibility is translation-invariant in the weaker sense

$$
\Gamma(T(M))=\Gamma(M)
$$

(every finite admissible patch reappears). Hence local invariance does not imply global periodicity.

### Compact operator form
The entire construction is summarized by

$$
\mathcal{P}=O\bigl(\Gamma(M_H)\bigr)
$$

subject to the intertwining

$$
\Gamma\circ C_\phi=C_\phi\circ\Gamma
$$

and the spectral relation

$$
\lambda_{\mathrm{PF}}=\phi^2.
$$

### Optional PED layer
If a dynamical triple $\mathrm{PED}=(P,E,D)$ is defined on the admissible space, one writes

$$
\mathrm{PED}=\mathrm{PED}(M_A).
$$

SID supplies the static admissible relational geometry; PED supplies the evolution supported on that geometry.
