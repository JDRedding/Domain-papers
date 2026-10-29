# $A_n$, $B_n$, $C_n$, and $D_n$
**The four classical Lie families $A_n$, $B_n$, $C_n$, and $D_n$** are the infinite series of simple complex Lie algebras arising from the special linear, odd orthogonal, symplectic, and even orthogonal groups. They are distinguished by their root systems and Dynkin diagrams, and their representation theory is governed by highest-weight theory, with the fundamental representations corresponding to the natural matrix actions and (for the orthogonal series) spinor representations.

| Family | Vector rep dim | Spinor-type reps | Simply-laced? | Notes |
|--------|----------------|------------------|---------------|-------|
| $A_n$ | $n+1$ | none | yes | dual also fundamental |
| $B_n$ | $2n+1$ | one of dim $2^n$ | no | short roots |
| $C_n$ | $2n$ | none | no | long roots |
| $D_n$ | $2n$ | two of dim $2^{n-1}$ | yes | triality at $n=4$ |

These structures—root systems determining the Dynkin diagrams, and highest-weight theory controlling the representations—completely characterize the classical families and underpin their appearance throughout algebra, geometry, and mathematical physics.

### Matrix realizations and basic invariants
- **$A_n = \mathfrak{sl}(n+1,\mathbb{C})$**: trace-zero $(n+1)\times(n+1)$ matrices. Dimension $n(n+2)$. Rank $n$.
- **$B_n = \mathfrak{so}(2n+1,\mathbb{C})$**: skew-symmetric matrices of size $2n+1$. Dimension $n(2n+1)$. Rank $n$.
- **$C_n = \mathfrak{sp}(2n,\mathbb{C})$**: matrices preserving the standard symplectic form $J_n$. Dimension $n(2n+1)$. Rank $n$.
- **$D_n = \mathfrak{so}(2n,\mathbb{C})$**: skew-symmetric matrices of size $2n$. Dimension $n(2n-1)$. Rank $n$.

These are simple for $n\geq 1$ ($A$), $n\geq 2$ ($B$), $n\geq 3$ ($C$), and $n\geq 4$ ($D$), up to the low-rank isomorphisms $A_1\cong B_1\cong C_1$, $B_2\cong C_2$, and $D_3\cong A_3$.

### Root systems
Each algebra admits a Cartan subalgebra $\mathfrak{h}$ of dimension equal to the rank, and the roots are the nonzero weights of the adjoint representation. The root systems live in a Euclidean space of dimension equal to the rank (or a hyperplane therein).

- **$A_n$**: Embed in the hyperplane $\sum_{i=1}^{n+1}\varepsilon_i=0\subset\mathbb{R}^{n+1}$. The roots are all differences $\varepsilon_i-\varepsilon_j$ for $i\neq j$. All roots have the same length (simply-laced). The positive roots may be taken as $\varepsilon_i-\varepsilon_j$ for $i<j$.

- **$B_n$**: Roots in $\mathbb{R}^n$:  

$$
\{\pm\varepsilon_i\pm\varepsilon_j\mid i\neq j\}\cup\{\pm\varepsilon_i\}.
$$

  There are $2n(n-1)$ long roots (squared length 2) and $2n$ short roots (squared length 1). The short roots are the $\pm\varepsilon_i$.

- **$C_n$**: Roots in $\mathbb{R}^n$:  

$$
\{\pm\varepsilon_i\pm\varepsilon_j\mid i\neq j\}\cup\{\pm 2\varepsilon_i\}.
$$

  There are $2n(n-1)$ short roots (squared length 2) and $2n$ long roots (squared length 4). This is dual to the $B_n$ root system.

- **$D_n$**: Roots in $\mathbb{R}^n$:  

$$
\{\pm\varepsilon_i\pm\varepsilon_j\mid i\neq j\}.
$$
  
  All $2n(n-1)$ roots have the same length (simply-laced).

In each case the Weyl group is the group of signed permutations (with appropriate parity restrictions for $D_n$) that preserve the root system.

### Dynkin diagrams
The Dynkin diagram encodes the Cartan matrix (angles and relative lengths of simple roots). Nodes correspond to simple roots; edges indicate the Cartan integers.

- **$A_n$**: A linear chain of $n$ nodes joined by single bonds. All simple roots have equal length.
- **$B_n$**: A linear chain of $n$ nodes in which the last bond is a double bond with the arrow pointing toward the short simple root (the end node corresponding to a short root).
- **$C_n$**: The same diagram as $B_n$ but with the arrow reversed (pointing toward the long simple root).
- **$D_n$**: A linear chain of $n-2$ single bonds ending in a fork: two single bonds branching from the penultimate node to two terminal nodes. All roots are of equal length.

Simply-laced diagrams ($A_n$, $D_n$) have symmetric Cartan matrices; the non-simply-laced diagrams ($B_n$, $C_n$) encode two root lengths whose squared-length ratio is 2.

### Representation theory
Finite-dimensional irreducible representations are highest-weight modules $L(\lambda)$ parametrized by dominant integral weights $\lambda\in\mathfrak{h}^*$. The dimension is given by the Weyl dimension formula. The fundamental representations correspond to the fundamental weights $\omega_1,\dots,\omega_n$ (dual basis to the simple coroots).

- **$A_n=\mathfrak{sl}(n+1)$**  
  The two fundamental representations are the standard representation $V=\mathbb{C}^{n+1}$ (highest weight $\omega_1$) and its dual $V^*$ (highest weight $\omega_n$). All other irreducibles appear in tensor products of these; they are realized concretely by Young diagrams with at most $n$ rows (or columns). The adjoint representation is the traceless endomorphisms, of highest weight $\omega_1+\omega_n$ and dimension $n(n+2)$.

- **$B_n=\mathfrak{so}(2n+1)$**  
  There is a vector representation of dimension $2n+1$ (highest weight $\omega_1$) and a spinor representation of dimension $2^n$ (highest weight $\omega_n$). The spinor is the unique irreducible module for the Clifford algebra of the quadratic form; it is not realizable by tensors of the vector representation. The adjoint has highest weight $\omega_2$.

- **$C_n=\mathfrak{sp}(2n)$**  
  The fundamental representation is the standard symplectic module of dimension $2n$ (highest weight $\omega_1$). Higher fundamentals are exterior powers of this module (with symplectic contractions removed). There are no independent spinorial representations. The adjoint has highest weight $2\omega_1$.

- **$D_n=\mathfrak{so}(2n)$**  
  There is a vector representation of dimension $2n$ (highest weight $\omega_1$) and two half-spinor representations, each of dimension $2^{n-1}$ (highest weights $\omega_{n-1}$ and $\omega_n$). The two half-spinors are interchanged by the outer automorphism that swaps the two terminal nodes of the Dynkin diagram (for $n\geq 4$). For $n=4$ the outer automorphism group is $S_3$ (triality), which cyclically permutes the vector representation and the two half-spinors, all three of which are 8-dimensional.

In all cases the weights of an irreducible representation are the Weyl-group orbit of the highest weight, shifted by the root lattice, and the character is given by the Weyl character formula. The classical series admit concrete realizations via tensors (with symmetry and trace/contraction conditions) together with spinors for the orthogonal algebras; these models make the branching rules under natural embeddings (e.g., $A_{n-1}\subset A_n$, $D_n\subset B_n$, $C_n\subset A_{2n-1}$) transparent.

