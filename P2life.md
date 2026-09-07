
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

