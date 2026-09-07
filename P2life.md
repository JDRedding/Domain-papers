
# P2life

**P2life** is a two-player, competitive extension of Conway’s Game of Life introduced by Mark Levene and George Roussos in 2002 (arXiv:cond-mat/0207679; later published in *International Journal of Modern Physics C*).

The core of **p2life** is that it takes Conway’s **single‑species** automaton and injects **competition**, **color**, and **game‑theoretic asymmetry** into the birth/survival rules. 

- It introduces **game‑theoretic competition** into Life without breaking the simplicity of local rules.
- It provides a model for **two‑species spatial competition** with deterministic update rules.
- It shows how small rule changes can significantly alter **asymptotic density**, **pattern formation**, and **stability**.
- It opens the door to **multi‑player cellular automata**, evolutionary games, and competitive artificial life systems.

The result is still a deterministic cellular automaton, but one whose long‑term behavior reflects **competitive population dynamics** rather than neutral growth. The paper by Levene & Roussos formalizes this with a **mean‑field equation** and shows via simulation that the system stabilizes at an asymptotic density of **0.0362**, slightly higher than Conway’s ~0.0287.   

---

### What p2life *is* (conceptually)
Standard Life uses a single type of cell on a square lattice with the usual B3/S23 rules (birth with exactly 3 neighbors, survival with 2 or 3). P2life lets each occupied cell be either black or white. The two colors compete for space in both birth and survival, while the single-color case reduces exactly to ordinary Life. A two‑player extension of Life where each cell may contain either a **black token** or a **white token**. The rules are modified so that:

- Birth depends not only on the number of neighbors but also on **which color dominates** the neighborhood.
- Survival similarly depends on **competitive pressure** from the opposing color.

This turns the automaton into a **spatial competition model**, somewhat analogous to ecological two‑species systems, but with Life‑style discrete rules.

Each empty cell examines its eight neighbors:

- If exactly **three neighbors are occupied**, a birth occurs.
- The **color** of the newborn is whichever color has **strict majority** among those three neighbors.
- If the three neighbors are mixed 2–1, the majority color wins.
- If the neighbors are 1–1–1 (equal), the birth is **random** between black and white.

For occupied cells:

- A token survives if it has **two or three neighbors of its own color**.
- If it has **more opposing‑color neighbors** than same‑color neighbors, it dies.

These rules create **territorial dynamics**, local dominance, and competitive boundary zones.

### 📈 Mean‑field analysis

### Analysis
They derive a mean-field map for the density $p$ after one step:

$$
p' = 21p^3 - 63p^4 + \frac{105}{2}p^5 + 35p^6 - \frac{1505}{16}p^7 + \frac{1057}{16}p^8 - \frac{553}{32}p^9
$$

The maximum of $p'$ is about 0.3895 (at $p \approx 0.6206$). Unlike ordinary Life, a fully occupied mixed board does not immediately empty ($p'=0.2188$ when $p=1$). The only fixed point of the mean-field equation is 0, so correlations matter for long-term behavior. The authors derive a **mean‑field equation** describing expected density evolution under random initial conditions. The mean‑field approximation predicts a fixed-point density, and simulations confirm that the system stabilizes around:

- **Asymptotic density ≈ 0.0362**  
  (Conway’s Life stabilizes around ≈ 0.0287)  

This higher density arises because competitive interactions prevent some of the “over‑cleaning” that happens in standard Life. Simulations on lattices up to $1000\times 1000$ (periodic and open boundaries) give an asymptotic density of approximately **0.0362**. That value is reached for initial densities around 0.3 and stays roughly constant up to $p=1$. This is higher than Life’s classic $\approx 0.0287$ and, unlike Life, remains nonzero even at high initial density because mixed-color interfaces allow survival.

The paper includes a couple of small example patterns that produce different outcomes than ordinary Life (e.g., a configuration that dies out in Life but yields a Black block plus two White gliders in p2life). An early Java applet implementation existed on the authors’ site.

## Rule formalization

Here is a complete, simultaneous-update formalization of **p2life** (Levene & Roussos) on the 2-D square lattice with the Moore neighborhood. This the full rule set used for the mean-field equation and the simulations that produced the reported asymptotic density $\approx 0.0362$.

### State space
Each cell $c$ has state

$$
s(c)\in\{\emptyset,\,W,\,B\}.
$$

A cell holds at most one token. Updates are synchronous.

### Neighborhood

Let $N(c)$ be the eight adjacent cells (orthogonal + diagonal). Write

$$
\begin{align\*}
w(c)&= {No.}\{n\in N(c):s(n)=W\},\\
b(c)&= {No.}\{n\in N(c):s(n)=B\},\\
e(c)&=8-w(c)-b(c).
\end{align\*}
$$

The cell itself is **not** counted.

### Next-state map $s\mapsto s'$

#### Empty cell ($s(c)=\emptyset$)

- If $w(c)=3$ and $b(c)\neq 3$, then $s'(c)=W$.
- If $b(c)=3$ and $w(c)\neq 3$, then $s'(c)=B$.
- If $w(c)=3$ and $b(c)=3$, then

$$
s'(c)=\begin{cases}W & \text{with probability }1/2,\\ B & \text{with probability }1/2.\end{cases}
$$
  
- Otherwise $s'(c)=\emptyset$.

(The two deterministic birth clauses are mutually exclusive except for the coin-flip case, which is listed separately.)

#### White cell ($s(c)=W$)

Let $\Delta_W=w(c)-b(c)$. Then

$$
s'(c)=W
\quad\text{iff}\quad
\bigl(\Delta_W\in\{2,3\}\bigr)
\;\text{or}\;
\bigl(\Delta_W=1\;\text{and}\;w(c)\ge 2\bigr).
$$

Otherwise $s'(c)=\emptyset$ (death). The cell never changes color while occupied.

### Black cell ($s(c)=B$)

Symmetric:

$$
\Delta_B=b(c)-w(c),\qquad
s'(c)=B
\quad\text{iff}\quad
\bigl(\Delta_B\in\{2,3\}\bigr)
\;\text{or}\;
\bigl(\Delta_B=1\;\text{and}\;b(c)\ge 2\bigr).
$$

Otherwise $s'(c)=\emptyset$.

### Immediate consequences

- If the board contains only one color, the rules reduce exactly to Conway Life (B3/S23).
- A live cell of color $C$ survives only when it has a sufficient surplus of like-colored neighbors; unlike-colored neighbors are hostile.
- Birth of color $C$ on an empty cell requires exactly three $C$-neighbors and not exactly three of the opposite color (except the balanced $3+3$ lottery).
- No cell is ever overwritten by the opposite color without first becoming empty.

## Survival conditions rewritten in $(w,b)$ pairs

For a White cell the surviving neighbor counts $(w,b)$ with $w+b\le 8$ are exactly those satisfying

$$
w-b\in\{2,3\}
\quad\text{or}\quad
(w-b=1\;\land\;w\ge 2).
$$

Equivalently, the integer pairs

$$
\begin{align*}
&(2,0),\;(3,0),\;(3,1),\;(4,1),\;(4,2),\;(5,2),\;(5,3),\\
&(6,3),\;(6,4),\;(7,4),\;(7,5),\;(8,5),\;(8,6)
\end{align*}
$$

plus the extra “difference-1 and $w\ge 2$” pairs

$$
(2,1),\;(3,2),\;(4,3),\;(5,4),\;(6,5),\;(7,6),\;(8,7).
$$

Black uses the swapped pairs $(b,w)$.

### 🧩 Future work
- full rule formalization
- compare p2life to Immigration Life
- simulate p2life patterns
- derive the mean‑field equation step‑by‑step
- explore competitive boundary dynamics

## Further reating
- titan.dcs.bbk.ac.uk https://titan.dcs.bbk.ac.uk/~gr/pdf/p2life.pdf) 
- arXiv.org https://arxiv.org/pdf/cond-mat/0207679v1
- titan.dcs.bbk.ac.uk https://titan.dcs.bbk.ac.uk/~gr/pdf/p2life.pdf
- IDEAS/RePEc https://ideas.repec.org/a/wsi/ijmpcx/v14y2003i02ns0129183103004346.html

