
# Bott Periodicity (Cliffordian)

Real Clifford algebras $C_k$ (often written $\mathrm{Cl}_{k,0}$) exhibit a strict 8‑fold periodicity. Concretely,

$$
C_{k+8} \;\cong\; C_k \otimes_{\mathbb{R}} R(16),
$$

where $R(16)$ denotes the algebra of $16\times16$ real matrices. As emphasized in the Harvard reference, real Clifford algebras are “full matrix algebras or direct sums of two full matrix algebras,” and the classification “exhibits clearly a periodic pattern of period 8.” The same periodicity appears in the Bott periodicity notes (kylersiegel.xyz) and in the University of Chicago exposition.

Below is the standard Bott table for real Clifford algebras $C_k$, matching the structure computed in these sources (especially Table 1 in the Chicago paper and general classification).

---

## Real Bott Table for $C_k$ (mod 8)

This table lists the algebra $C_k$ for $k = 0,\dots,7$.

**Notation**

- $R(n)$: $n\times n$ real matrices  
- $C(n)$: $n\times n$ complex matrices  
- $H(n)$: $n\times n$ quaternionic matrices  
- $A \oplus A$: direct sum of two identical simple algebras  

| $k \bmod 8$ | Real Clifford algebra $C_k$ | Description |
|--------------|-------------------------------|-------------|
| **0** | $R$ | Real numbers |
| **1** | $C$ | Complex numbers (via $e_1^2 = -1$) |
| **2** | $H$ | Quaternions |
| **3** | $H \oplus H$ | Two copies of $H$ |
| **4** | $H(2)$ | $2\times2$ quaternionic matrices |
| **5** | $C(4)$ | $4\times4$ complex matrices |
| **6** | $R(8)$ | $8\times8$ real matrices |
| **7** | $R(8) \oplus R(8)$ | Two copies of $R(8)$ |

This matches the periodic tables appearing in the Harvard page, the Bott periodicity notes, and the detailed computation in the Chicago paper.

---

## Why the Table Is 8‑Periodic

The sources explain two key structural facts:

1. **Two‑step relation**

$$
C_{k+2} \;\cong\; C_k \otimes C_2,
\qquad\text{and}\qquad
C_2 \cong H.
$$

   Thus each increment by 2 introduces a quaternionic factor.

2. **Four iterations give an 8‑step cycle**

   Since

$$
H \otimes H \otimes H \otimes H \;\cong\; R(16),
$$

   we obtain

$$
C_{k+8} \;\cong\; C_k \otimes R(16).
$$

   Because $R(16)$ is a full matrix algebra, it is Morita‑equivalent to $R$. Therefore the *module categories* of $C_{k+8}$ and $C_k$ are equivalent, giving the 8‑periodicity.

This algebraic periodicity mirrors the 8‑fold Bott periodicity in KO‑theory and in the stable homotopy groups of $O$.

---

## Relation to KO‑Theory and the Atiyah–Bott–Shapiro Construction

The Atiyah–Bott–Shapiro (ABS) map identifies the Grothendieck groups of Clifford modules $A_k$ with the KO‑groups:

$$
A_k \;\cong\; KO^{-k}(\mathrm{pt}),
$$

and these groups are also 8‑periodic. Thus the Bott table above is the algebraic shadow of the topological periodicity.

---

# Bott Class Trajectory

The 8‑periodicity of **real Clifford algebras** and the 2‑periodicity of **complex K‑theory** arise from the same structural mechanism: the propagation of the **Bott class** through suspension, external product, and stabilization. The Clifford‑algebra Bott table is the *algebraic shadow* of the spectral Bott trajectory.

This section explains how the real Bott table

$$
C_{k+8} \;\cong\; C_k \otimes R(16)
$$

fits into the general framework of the **Bott operator trajectory**:

$$
K_i(A)\xrightarrow{B}K_{i+2}(A)\xrightarrow{B}K_{i+4}(A)\cdots.
$$

---

## 1. Bott class trajectory (KU‑theory)

In complex K‑theory, the Bott element

$$
\beta\in K_0(S^2)\cong\mathbb Z
$$

generates a degree‑2 shift. For any C\*-algebra $A$,

$$
\beta_A(x)=x\otimes\beta
$$

defines the forward motion

$$
K_i(A)\xrightarrow{\beta_A}K_{i+2}(A).
$$

The inverse Bott element $\alpha\in K_0(S^{-2})$ satisfies

$$
\alpha_A(\beta_A(x))=x,
$$

closing the 2‑step cycle. In spectrum language:

$$
\Sigma^2 KU \simeq KU,
\qquad
\beta\in\pi_2(KU),
\qquad
\gamma\mapsto\gamma\cdot\beta.
$$

Thus the Bott trajectory is a **2‑periodic orbit** in KU.

---

## 2. Clifford algebras

Real Clifford algebras satisfy the structural recursion

$$
C_{k+2}\;\cong\;C_k\otimes C_2,
\qquad
C_2\cong H.
$$

Iterating four times gives

$$
C_{k+8}\;\cong\;C_k\otimes H^{\otimes 4}
\;\cong\;C_k\otimes R(16).
$$

Since $R(16)$ is Morita‑equivalent to $R$, the *module categories* of $C_{k+8}$ and $C_k$ are equivalent. This is the algebraic manifestation of Bott periodicity in **real** K‑theory:

$$
KO^{-k}(\mathrm{pt})\;\cong\;KO^{-(k+8)}(\mathrm{pt}).
$$

The Atiyah–Bott–Shapiro construction identifies

$$
A_k \;\cong\; KO^{-k}(\mathrm{pt}),
$$

where $A_k$ is the Grothendieck group of $C_k$ -modules.  
Thus the **8‑periodic Clifford table** is the **KO‑theoretic Bott trajectory** expressed in algebraic form.

---

## 3. Complex periodicity vs real periodicity

The Bott operator $B$ has degree 2 in KU:

$$
B:K_i(A)\to K_{i+2}(A).
$$

But real K‑theory (KO) has an 8‑step periodicity because the real Bott element lives in degree 8:

$$
\beta_{\mathbb R}\in KO^{-8}(\mathrm{pt})\cong\mathbb Z.
$$

The Clifford algebra recursion encodes this:

- **Complex case:**  
  $\mathrm{Cl}_n(\mathbb C)$ collapses to a 2‑periodic pattern.

- **Real case:**  
  $\mathrm{Cl}_{k,0}$ cycles through  
  $R, C, H, H\oplus H, H(2), C(4), R(8), R(8)\oplus R(8)$  
  before returning.

Thus:

- **Bott trajectory in KU:** 2‑periodic  
- **Bott trajectory in KO:** 8‑periodic  
- **Clifford algebras:** algebraic encoding of KO periodicity

---

## 4. Relational object

Triadic relational geometry (SID / PED / Q‑mode) fits Bott periodicity perfectly. The Bott operator $B$ is a **triadic object** whose trajectory is the periodic orbit across the three modes:

### SID‑face (structural)

$$
B:K_i(A)\overset{\cong}{\longrightarrow}K_{i+2}(A)
$$

A degree‑2 natural automorphism of the graded K‑functor.

### PED‑face (event‑level)

$$
B_A(x)=x\otimes\beta,
\qquad
\alpha_A\circ B_A=\mathrm{id}.
$$

Concrete external product with the Bott class.

### Q‑face (spectral)

$$
B(\gamma)=\gamma\cdot\beta,
\qquad
\gamma\in\pi_n(KU).
$$

Spectral shift generated by $\beta\in\pi_2(KU)$.

The **Bott trajectory** is the orbit of the K‑theory object under this triadic operator.

---

## 5. Clifford trajectory

The real Bott table

| $k$ mod 8 | $C_k$ |
|-------------|---------|
| 0 | $R$ |
| 1 | $C$ |
| 2 | $H$ |
| 3 | $H\oplus H$ |
| 4 | $H(2)$ |
| 5 | $C(4)$ |
| 6 | $R(8)$ |
| 7 | $R(8)\oplus R(8)$ |

is the **KO‑mode projection** of the Bott trajectory.  
Each step corresponds to applying the real Bott operator once.  
Eight steps return to the same Morita class.

Thus:

- **KU trajectory:** 2‑step orbit  
- **KO trajectory:** 8‑step orbit  
- **Clifford table:** KO‑trajectory written as algebras  
- **ABS map:** identifies the two trajectories

---




