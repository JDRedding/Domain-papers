# Relational Wang-tile
**Mathematical formulation**  
(relation-first terrain system with Wang-tile observation)

All classical complete Wang-tile mathematics of size $c^4$ is recovered exactly as the observation map $\Omega$; the only change is that the relational field $R_t$ is taken as the primitive object and is allowed to evolve under the operator $D$.

### Fundamental objects

- **Structure alphabet** (S-mode)
  
$$
S = \{0,1,\dots,c-1\}
$$
  
  Finite set of admissible terrain/edge distinctions.

- **Relational field** at time $t$  

$$
R_t = \bigl(\tau_t(i,j)\bigr)_{(i,j)\in\mathbb{Z}^2},
\qquad
\tau_t(i,j)\in S.
$$

  The global state is the assignment of a label to every cell (or, equivalently, to every edge if a pure edge-based representation is preferred).

- **Local relation vector**  

$$
q_{i,j}(R_t)  =
\bigl(
e_N,\; e_E,\; e_S,\; e_W
\bigr)
\in S^4.
$$

  Obtained by reading the four incident edge labels (or the four neighboring cell labels, according to the chosen encoding).

### Interaction (I-mode)

Neighborhood counts (Moore neighborhood of radius 1):

$$
n_k(i,j) =
{N_o}\{\,(p,q)\in N(i,j):\tau(p,q)=k\,\},
\qquad k\in S,
$$

where $N(i,j)$ denotes the eight adjacent cells.

Interface consistency is expressed by identity of shared labels:

$$
e_E(i,j)=e_W(i,j+1),\qquad
e_S(i,j)=e_N(i+1,j).
$$

### Dynamics (D-mode)

The evolution operator is a parallel rewrite on the relational field:

$$
R_{t+1}=D(R_t).
$$

Local rules are functions of the counts $n_k$. Representative examples:

**Grass spread**

$$
\bigl(\tau=\text{Sand}\;\land\;n_{\text{Grass}}\ge5\bigr)
\;\Rightarrow\;
\tau'=\text{Grass}.
$$

**Desertification**

$$
\bigl(\tau=\text{Grass}\;\land\;n_{\text{Water}}=0\;\land\;n_{\text{Grass}}\le2\bigr)
\;\Rightarrow\;
\tau'=\text{Sand}.
$$

**Forest growth**

$$
\bigl(\tau=\text{Grass}\;\land\;n_{\text{Forest}}\ge4\bigr)
\;\Rightarrow\;
\tau'=\text{Forest}.
$$

**Erosion**

$$
\bigl(\tau=\text{Mountain}\;\land\;n_{\text{Water}}\ge3\bigr)
\;\Rightarrow\;
\tau'=\text{Grass}.
$$

Additional fields (fuel $f$, ignition $\iota$, flow potential $\Phi$) may be introduced and updated by auxiliary maps inside $D$.

### Observation operator (tile emergence)

The Wang index is the base-$c$ evaluation of the local relation vector:

$$
\Omega\bigl(q_{i,j}(R_t)\bigr)=
e_N + c\,e_E + c^2\,e_S + c^3\,e_W
\in\{0,1,\dots,c^4-1\}.
$$

The visible tile is the image of this integer under the sprite atlas lookup. Thus

$$
{Tile}(i,j)=
\Omega\bigl(q_{i,j}(R_t)\bigr).
$$

### Full discrete-time system

$$
\begin{aligned}
R_0 &\leftarrow\text{initial relational field},\\
R_{t+1} &= D(R_t)
&&\text{(S–I–D evolution)},\\
{Tile}_t(i,j)
&=
\Omega\bigl(q_{i,j}(R_t)\bigr)
&&\text{(observation / rendering)}.
\end{aligned}
$$

### Ontological identity

$$
\text{World state}
\;=\;
R_t
\qquad
\text{(relational field)},
$$

$$
\text{Visible geometry}
\;=\;
\Omega\circ q(R_t)
\qquad
\text{(emergent Wang tiles)}.
$$

