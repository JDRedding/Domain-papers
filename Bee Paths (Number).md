# Bee Number Paths
## Basic objects and types

- **Honeycomb lattice:**  
  Let $H$ be the infinite hexagonal (honeycomb) lattice graph.
  - **Vertices:** $V(H)$
  - **Edges:** $E(H)\subseteq V(H)\times V(H)$, each vertex has degree $3$.

- **Directions / orientations:**  
  Fix an initial directed edge $(v_0,v_1)\in E(H)$.  
  The bee’s **state** at step $t$ is:

$$
S_t = (v_t, d_t)
$$

  where:
  - $v_t \in V(H)$ is the current vertex,
  - $d_t$ is the current direction (one of the 3 edge directions incident to $v_t$).

- **Binary sequence (integer):**  
  Let $n\in\mathbb{N}$ be a positive integer with binary expansion

$$
n = \sum_{i=0}^{k-1} b_i 2^i,\quad b_i\in\{0,1\},\quad b_{k-1}=1.
$$

 write this as a bit string

$$
\mathbf{b} = b_{k-1}b_{k-2}\dots b_1 b_0,
$$

  of **length** $k$.  

  - **Type:** $\mathbf{b}\in\{0,1\}^k$.
  - The **leading bit** $b_{k-1}=1$ starts the walk along the first edge.

---

### Turn rule: mapping bits to motion

At each step after the first edge, the bee uses the next bit to decide a left/right turn relative to its current direction.

- **Turn function:**

$$
T:\{0,1\}\times D \to D,
$$

  where $D$ is the set of directions (three possible edge directions at a vertex).

  - **Convention:**
    - Bit $1$: turn **left** by $+60^\circ$,
    - Bit $0$: turn **right** by $-60^\circ$.

  If encode directions as angles $\theta\in\{0, \pm 60^\circ, \pm 120^\circ, 180^\circ\}$ modulo $360^\circ$, then:

$$
T(b,\theta) = \begin{cases} \theta + 60^\circ & \text{if } b=1, \theta - 60^\circ & \text{if } b=0, \end{cases} \quad (\text{mod } 360^\circ).
$$

- **Step update:**
  Given state $S_t=(v_t,\theta_t)$ and bit $b_{k-1-t}$ (reading bits from left to right after the leading $1$):
  1. **Turn:** $\theta_{t+1} = T(b_{k-1-t},\theta_t)$.
  2. **Move:** $v_{t+1}$ is the unique neighbor of $v_t$ in direction $\theta_{t+1}$.

Thus the walk is a sequence of vertices

$$
(v_0,v_1,\dots,v_k)
$$

determined by $\mathbf{b}$ and the fixed initial edge.

---

### Self-avoidance constraint (no revisiting vertices)

A **self-avoiding walk** on $H$ is a vertex sequence $(v_0,v_1,\dots,v_k)$ such that:

$$
v_i \neq v_j \quad \text{for all } 0 \le i < j \le k.
$$

For bee numbers, require:

- **No vertex is visited twice**, including the starting vertex:

$$
\{v_0,v_1,\dots,v_k\} \text{ has cardinality } k+1.
$$

Equivalently, the map

$$
f_{\mathbf{b}} : \{0,1,\dots,k\} \to V(H),\quad f_{\mathbf{b}}(t)=v_t
$$

is **injective**.

---

### Definition of a bee number

Let $n\in\mathbb{N}$ with binary length $k$ and bit string $\mathbf{b}\in\{0,1\}^k$, $b_{k-1}=1$.

- **Associated walk:**  
  Fix an initial directed edge $(v_0,v_1)$.  
  Use the leading bit $b_{k-1}=1$ to traverse $(v_0,v_1)$.  
  Then for each remaining bit $b_{k-2},\dots,b_0$, apply the turn rule and move one edge.

- **Bee number condition:**  
  $n$ is a **bee number** iff the resulting walk is self-avoiding:

$$
n \text{ is a bee number} \quad \Longleftrightarrow \quad
v_i \neq v_j \ \forall\, 0\le i<j\le k.
$$

Let:

- **Set of $k$-bit bee numbers:**

$$
B_k = \{\, n \in \mathbb{N} : \text{binary length}(n)=k,\ n \text{ is a bee number}\,\}.
$$

- **Counting function:**

$$
b_k = |B_k|.
$$

---

### Relation to self-avoiding walks on the honeycomb lattice

For a fixed initial direction, each $k$-bit bee number corresponds to a self-avoiding walk of length $k$ on the honeycomb lattice with a specific local turning rule (left/right at each step).

Let:

- $\mathrm{SAW}_k(H)$: set of all self-avoiding walks of length $k$ on $H$ (starting from a fixed vertex, all directions allowed).
- $c_k = |\mathrm{SAW}_k(H)|$.

Up to the choice of initial direction (3 possible directions at the starting vertex), the bee-number walks form a subset that is asymptotically proportional to $c_k$. In particular, one can write:

$$
b_k \sim \frac{1}{3} c_k \quad \text{as } k\to\infty,
$$

in the sense that the growth rate of $b_k$ matches that of self-avoiding walks on $H$ up to a constant factor.

---

### Asymptotic growth

A key result for self-avoiding walks on the honeycomb lattice is that there exists a **growth constant** $\mu$ such that:

$$
c_k \sim \mu^k \quad \text{as } k\to\infty,
$$

and for the honeycomb lattice,

$$
\mu = \sqrt{2 + \sqrt{2}}.
$$

Therefore, the number of $k$-bit bee numbers satisfies:

$$
b_k = \bigl(\sqrt{2 + \sqrt{2}}\bigr)^{\,k + o(k)} \quad \text{as } k\to\infty.
$$

More explicitly, there exists a function $\varepsilon(k)\to 0$ such that:

$$
b_k = \bigl(\sqrt{2 + \sqrt{2}}\bigr)^{\,k\,(1+\varepsilon(k))}.
$$

---

### Summary of key notation

- **Lattice:** $H$ (honeycomb), vertices $V(H)$, edges $E(H)$.
- **State:** $S_t=(v_t,\theta_t)$.
- **Bits:** $\mathbf{b}=b_{k-1}\dots b_0\in\{0,1\}^k$, $b_{k-1}=1$.
- **Turn rule:**

$$
\theta_{t+1} =
\begin{cases}
\theta_t + 60^\circ & (b=1),\\
\theta_t - 60^\circ & (b=0),
\end{cases}
\quad (\text{mod } 360^\circ).
$$

- **Self-avoidance:** $v_i\neq v_j$ for all $i\neq j$.
- **Bee numbers of length $k$:** $B_k$, count $b_k=|B_k|$.
- **Asymptotic:** 

$$
b_k = \bigl(\sqrt{2 + \sqrt{2}}\bigr)^{\,k + o(k)}.
$$

