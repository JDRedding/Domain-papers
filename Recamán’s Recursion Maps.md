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

## RDG–MFE–Q cellular automaton on a 1D lattice.

- **RDG:**
  
  1D lattice $\mathbb{Z}$ with fields $(v_n(i), w_n(i))$.

- **MFE:**

  Time‑indexed displacement proposal from the unique walker site:

$$
F_n: a_{n-1} \mapsto (c^-_n, c^+_n) = (a_{n-1}-n,\; a_{n-1}+n)
$$

- **Q:**  
  Global admissibility:

$$
Q^-_n = [c^-_n \ge 0 \wedge v_{n-1}(c^-_n) = 0]
$$

- **CA update:**  
  Apply $F_n$, filter with $Q$, move walker, mark visited.

### 1. RDG: 1D lattice and configuration

**Geometry $\Gamma$:**

- **Sites:**  

$$
i \in \mathbb{Z} \quad \text{(1D infinite lattice)}
$$

- **Time:**  

$$
n \in \mathbb{N}
$$

**Fields at each site $i$:**

- **Visited flag:**  

$$
v_n(i) \in \{0,1\} \quad (\text{0 = unvisited, 1 = visited})
$$

- **Walker presence:**  

$$
w_n(i) \in \{0,1\} \quad (\text{1 if walker is at } i \text{ at time } n)
$$

Global configuration at time $n$:

$$
X_n = \big( v_n(i),\; w_n(i) \big)_{i \in \mathbb{Z}}
$$

The Recamán value $a_n$ is the unique site with $w_n(a_n) = 1$.

### 2. MFE: proposed motion field

We encode the “subtract $n$ / add $n$” rule as a **proposed displacement field**.

Let the walker be at site $a_{n-1}$ at time $n-1$:

- **Candidate positions:**

$$
c^-_n = a_{n-1} - n,\quad c^+_n = a_{n-1} + n
$$

Define a **proposal field** $p_n(i)$:

- **Proposal:**

$$
p_n(i) =
\begin{cases}
-n & \text{if } i = a_{n-1} \text{ (subtract branch)} \\
+n & \text{if } i = a_{n-1} \text{ (add branch, used if subtract rejected)} \\
0 & \text{otherwise}
\end{cases}
$$

Conceptually: MFE says “from the current walker site, propose a displacement of $-n$ first; if rejected, use $+n$ .”

### 3. Q: admissibility and branch selection

Now we encode Recamán’s constraint as a **Q‑predicate over the lattice fields**.

At time $n$, define:

- **Subtract admissibility:**

$$
Q^-_n = \big[ c^-_n \ge 0 \;\wedge\; v_{n-1}(c^-_n) = 0 \big]
$$

  (nonnegative and unvisited)

- **Add branch is the fallback:**

$$
Q^+_n = \neg Q^-_n
$$

So Q is a global predicate that inspects:

- current walker position $a_{n-1}$  
- visited field $v_{n-1}(\cdot)$  
- step index $n$

and decides which displacement is admissible.

### 4. Update operator on the CA fields

The RDG–MFE–Q CA update from $X_{n-1}$ to $X_n$ is:

1. **Walker move:**

$$
a_n =
\begin{cases}
c^-_n & \text{if } Q^-_n = \text{true} \\
c^+_n & \text{if } Q^+_n = \text{true}
\end{cases}
$$

$$
w_n(i) =
\begin{cases}
1 & \text{if } i = a_n \\
0 & \text{otherwise}
\end{cases}
$$

2. **Visited field update:**

$$
v_n(i) =
\begin{cases}
1 & \text{if } i = a_n \\
v_{n-1}(i) & \text{otherwise}
\end{cases}
$$

So the CA rule is:

- one active walker site  
- a memory field marking visited sites  
- a time‑dependent displacement magnitude $n$  
- a Q‑filter that enforces “subtract if possible and new, else add”.

## Appendix: Energy and survival scores on sites

- **Energy field:** models resource cost of long jumps or revisits.  
- **Survival score / SID:** models stability or desirability of sites (manifold‑like structure emerging from repeated visits).  
- **RDG–MFE–Q view:** Recamán becomes a special case of a self‑avoiding, energy‑agnostic walker; turning on $E$ and $S$ lets study more realistic constrained trajectories on the same 1D lattice.

If want, can define a specific $\Delta E_{\text{step}}(n)$ and $\Delta S_{\text{visit}}(n)$ that make the walker preferentially “settle” into low‑energy, high‑survival basins along the Recamán path.

---

#### 1. Add energy and survival fields

Extend the per‑site fields:

- **Visited:**
  
$$
v_n(i) \in \{0,1\}
$$

- **Walker:**  

$$
w_n(i) \in \{0,1\}
$$

- **Energy:**  

$$
E_n(i) \in \mathbb{R}_{\ge 0}
$$

- **Survival score / SID:**  

$$
S_n(i) \in \mathbb{R}
$$

Configuration:

$$
X_n = \big(v_n(i), w_n(i), E_n(i), S_n(i)\big)_{i \in \mathbb{Z}}
$$

---

#### 2. Energy and survival update rules

Let the walker move from $a_{n-1}$ to $a_n$.

- **Energy consumption / accumulation:**

$$
E_n(i) =
\begin{cases}
E_{n-1}(i) - \Delta E_{\text{step}}(n) & \text{if } i = a_n \\
E_{n-1}(i) & \text{otherwise}
\end{cases}
$$

- **Survival score update:**

$$
S_n(i) =
\begin{cases}
S_{n-1}(i) + \Delta S_{\text{visit}}(n) & \text{if } i = a_n \\
S_{n-1}(i) & \text{otherwise}
\end{cases}
$$

Can choose $\Delta E_{\text{step}}(n)$ and $\Delta S_{\text{visit}}(n)$ as functions of $n$, distance moved, or local neighborhood.

---

#### 3. Q as an energy/survival gate

Now Q doesn’t just check “unvisited and nonnegative”—it can enforce energetic and SID constraints:

$$
Q^-_n = \big[
c^-_n \ge 0
\;\wedge\;
v_{n-1}(c^-_n) = 0
\;\wedge\;
E_{n-1}(a_{n-1}) \ge E_{\min}
\;\wedge\;
S_{n-1}(c^-_n) \ge S_{\min}
\big]
$$

Fallback:

$$
Q^+_n = \neg Q^-_n
$$

So the subtract branch is admissible only if:

- the target site is nonnegative,  
- unvisited,  
- the walker has enough energy,  
- the target site’s survival score is acceptable.

Recamán as originally defined is the **degenerate case**:

- $E_n(i) \equiv \text{const}$ (no energy constraint),  
- $S_n(i) \equiv \text{const}$ (no survival constraint),  
- Q reduces to “nonnegative and unvisited”.


