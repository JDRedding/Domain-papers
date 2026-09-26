# Tesseract Graph 
## $Q_4$ (4-Cube)

**Vertex set**

$$
V = \{0,1\}^4, \qquad |V| = 16
$$

Vertices may be represented as 4-bit binary strings

$$
(0000,\; 0001,\; \ldots,\; 1111)
$$

or equivalently as integers $0$ through $15$.

**Hamming distance**

$$
d_H(u,v) = \text{number of bit positions in which } u \text{ and } v \text{ differ}.
$$

**Edge set**

$$
E = \{ \{u,v\} \;|\; u,v \in V \text{ and } d_H(u,v)=1 \}
$$

**Graph properties**

- 4-regular (every vertex has degree 4)
- $|E| = 32$

**Adjacency matrix $A$**

$A$ is a $16 \times 16$ matrix with entries in $\{0,1\}$:

$$
A_{uv} =
\begin{cases}
1 & \text{if } d_H(u,v)=1 \\
0 & \text{otherwise}
\end{cases}
$$

---

# Quantum Layer

**Parameterized unitary**

$$
U(\theta) = \exp\bigl(-i\, H(\theta)\bigr)
$$

where $H(\theta)$ is a parameterized Hamiltonian and $\theta$ is a vector of trainable real parameters.

**Typical single-qubit rotation gates used inside the circuit**

$$
\begin{align*}
R_x(\theta) &= \exp\bigl(-i\,(\theta/2)\, X\bigr) \\
R_y(\theta) &= \exp\bigl(-i\,(\theta/2)\, Y\bigr) \\
R_z(\theta) &= \exp\bigl(-i\,(\theta/2)\, Z\bigr)
\end{align*}
$$

where $X$, $Y$, and $Z$ are the Pauli matrices.
