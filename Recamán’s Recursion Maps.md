# Recamán’s Recursion Maps
Recursion maps to reality when a state‑update rule is applied repeatedly to a system whose next state depends on its previous one. Recamán’s sequence is a clean mathematical example of this: a recurrence relation generates a trajectory whose structure emerges only through iteration.

### Overview

🧩 What “recursion mapping to reality” actually means

Recursion becomes a model of reality when three conditions hold:

- State dependence — the next state depends on the current state.
- Local rule — the transition is determined by a simple, repeatable rule.
- Global emergence — large‑scale structure appears only after many iterations.

*Recamán’s sequence satisfies all three*: It starts at 0, then repeatedly applies a rule (“subtract n if possible, otherwise add n”), producing a path whose long‑range behavior is unpredictable and still mathematically unresolved. 

Treat Recamán as a tiny 1D Relational Dynamic Geometry–Momentum Flux Engine–Q system:  

- **Relational Dynamic Geometry:** the geometry of “where” the sequence lives.  
- **Momentum Flux Engine:** the dynamical rule that moves the state.  
- **Q:** the admissibility constraint that decides which move is allowed.

---

### Relational Dynamic Geometry layer — geometry

**State space:**  
- **Nodes:** integers $k \in \mathbb{Z}_{\ge 0}$ (or $\mathbb{Z}$ if allow negatives in a generalized version).  
- **Time index:** $n \in \mathbb{N}$ is the step counter; the “current state” is $a_n$.  

  can model this as:

- **Configuration at step $n$:** 

$$
x_n = (a_n,\; V_n)
$$
  
  where $V_n \subseteq \mathbb{Z}_{\ge 0}$ is the set of already visited integers up to step $n$.

So Relational Dynamic Geometry gives a discrete line (the integer axis) plus a relational mark: “visited vs. unvisited”.

---

### Momentum Flux Engine layer — dynamics

The Recamán recurrence is  r **field update**:

- **Candidate moves:**

$$
c^-_n = a_{n-1} - n,\quad c^+_n = a_{n-1} + n
$$

- **Raw dynamical rule (before Q):**  
  Think of a two‑branch field:
  - **Subtract branch:** move “left” by $n$.  
  - **Add branch:** move “right” by $n$.

So Momentum Flux Engine is the deterministic proposal:

$$
\text{propose}(x_{n-1}) = (c^-_n,\; c^+_n)
$$

---

### Q layer — admissibility

Now encode the Recamán constraint as a **Q‑predicate**:

- **Admissibility predicate $Q_n$:**

$$
Q_n(c^-_n, V_{n-1}) =
\begin{cases}
\text{true} & \text{if } c^-_n > 0 \text{ and } c^-_n \notin V_{n-1} \\
\text{false} & \text{otherwise}
\end{cases}
$$

- **Final update:**
  
$$
a_n =
\begin{cases}
c^-_n & \text{if } Q_n(c^-_n, V_{n-1}) = \text{true} \\
c^+_n & \text{otherwise}
\end{cases}

$$
V_n = V_{n-1} \cup \{a_n\}
$$

So Q is exactly the “self‑avoidance + positivity” filter on the subtract branch.

---

### Compact Relational Dynamic Geometry–Momentum Flux Engine–Q encoding

  can summarize Recamán as:

- **Relational Dynamic Geometry:**
  
$\Gamma = (\mathbb{Z}_{\ge 0},\; \text{visited/unvisited relation})$

- **Momentum Flux Engine:**  

$$
F(x_{n-1}) = (c^-_n, c^+_n) = (a_{n-1}-n,\; a_{n-1}+n)
$$

- **Q:**  

$$
Q(c^-_n, V_{n-1}) = [c^-_n > 0 \wedge c^-_n \notin V_{n-1}]
$$

- **Update operator:**  

$$
x_n = U(x_{n-1}) =
\begin{cases}
(c^-_n,\; V_{n-1} \cup \{c^-_n\}) & \text{if } Q = \text{true} \\
(c^+_n,\; V_{n-1} \cup \{c^+_n\}) & \text{if } Q = \text{false}
\end{cases}
$$
