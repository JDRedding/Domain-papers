# ✦ Spectral theorem 
Spectral projector expansion
- spectral theorem, real symmetric
- Geometric interpretation of spectral theorem

## ✦ The geometric operator identity
For any symmetric $A$, the image of the unit sphere is the ellipsoid:

$$
A(S^{n-1}) = \{ \sum_i \lambda_i\, \alpha_i\, q_i : \sum_i \alpha_i^2 = 1 \}.
$$

Principal axes = eigenvectors.  
Semi‑axis lengths = $|\lambda_i|$.

The essential identity is:

$$
A = Q\,\Lambda\,Q^T
$$

with  

- **orthogonal basis** $Q = [q_1\;\cdots\;q_n]$,  
- **real eigenvalues** $\Lambda = {diag}(\lambda_1,\dots,\lambda_n)$,  
- **outer‑product expansion** 

$$
A = \sum_i \lambda_i\, q_i q_i^T.
$$

This is the unique decomposition (up to ordering) of a real symmetric operator into **orthogonal modes**.

---

## ✦ Relational Dynamic Geometry‑mode 

- **Structure** → projector family $\{P_i\}$  
- **Interaction** → eigenvalue weighting $\lambda_i$  
- **Dynamics** → mode evolution under repeated application $A^k$

---

## ✦ Structural meaning
A symmetric operator is exactly one whose action can be written as:

$$
A = \sum_i \lambda_i\, P_i,
\qquad
P_i := q_i q_i^T,
$$

where each $P_i$ is a **rank‑1 orthogonal projector**.  
This is the cleanest structural identity:

- **Projectors commute**: $P_i P_j = \delta_{ij} P_i$.  
- **Modes decouple**: the operator is a weighted sum of mutually orthogonal directions.  
- **Geometry**: each mode is a principal axis of the ellipsoid $A(S^{n-1})$.

This is why symmetric matrices behave like “energy‑aligned” operators in physics, “principal‑axis” operators in graphics, and “covariance‑aligned” operators in statistics.

---

## ✦ $2\times2$ example, but expressed in pure mode form

$$
A = \begin{bmatrix}2 & 1 \\ 
1 & 2\end{bmatrix}
$$

Eigenpairs:

$$
\lambda_1 = 3,\quad q_1 = \tfrac{1}{\sqrt{2}}(1,1)^T,
\qquad
\lambda_2 = 1,\quad q_2 = \tfrac{1}{\sqrt{2}}(1,-1)^T.
$$

Mode expansion:

$$
A = 3\, q_1 q_1^T + 1\, q_2 q_2^T.
$$

Geometrically:  
- $q_1$ is the “sum” axis, stretched by factor $3$.  
- $q_2$ is the “difference” axis, stretched by factor $1$.

---

## ✦ Extension to normal matrices 
The clean generalization

Normality:

$$
A A^\dagger = A^\dagger A
$$

is exactly the condition that ensures **unitary diagonalizability**:

$$
A = U \Lambda U^\dagger.
$$

The structural upgrade:

- Orthogonal projectors $P_i = q_i q_i^T$ become **unitary projectors**  

  $P_i = u_i u_i^\dagger$.

- Eigenvalues may be complex, but the modes remain orthogonal in the Hermitian sense.

Real symmetric matrices are the special case where  
- $U$ can be chosen real,  
- eigenvalues are real,  
- projectors are orthogonal in the Euclidean sense.

---

## ✦ Real eigenvalues and orthogonal eigenspaces
Two identities give everything:

1. **Rayleigh quotient is real**  

$$
\lambda = \frac{x^T A x}{x^T x} \in \mathbb{R}.
$$

2. **Orthogonality of distinct eigenvectors**  
   If $Aq_i = \lambda_i q_i$ and $Aq_j = \lambda_j q_j$ with $\lambda_i\neq\lambda_j$, then  

$$
q_i^T q_j = 0.
$$

Together they force the decomposition into orthogonal modes.

---

