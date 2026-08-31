# Hyperbolic connectivity
The Anantharaman–Monk program shows that *typical* high‑genus hyperbolic surfaces (sampled by the Weil–Petersson measure) have spectral gaps approaching the **optimal value 1/4**, and the papers make this precise through Mirzakhani‑style geodesic enumeration, new coordinate systems on Teichmüller space, and Friedman–Ramanujan pseudo‑convolution machinery.

Hyperbolic surfaces of large genus behave like **continuous analogues of Ramanujan graphs**:

- abundant short geodesics,
- strong expansion,
- fast mixing,
- and near‑optimal spectral gap.

This bridges geometry, probability, and spectral graph theory in a way Mirzakhani’s original program hinted at but could not reach without these new tools.

---

### Hyperbolic surfaces and why spectral gap measures “connectivity”
A compact hyperbolic surface of genus $g$ has constant curvature $-1$, so its geometry is globally saddle‑like. You can’t visualize it fully in Euclidean 3‑space, but you *can* understand its structure through:

- **geodesic loops** — closed geodesics encode how the surface folds and wraps.
- **length spectrum** — the multiset of lengths of all closed geodesics.
- **spectral gap** — the first nonzero Laplace eigenvalue $\lambda_1$, which measures expansion/mixing.

A larger spectral gap means:

- random walks mix faster,
- the surface is harder to cut into disconnected regions,
- the diameter is smaller,
- the surface behaves like a “hyperbolic expander.”

The theoretical maximum for a compact hyperbolic surface is **$\lambda_1 = 1/4$** (Huber’s bound). 

---

### Mirzakhani’s influence: counting geodesics to understand spectra
Mirzakhani’s breakthrough was showing that **simple closed geodesics** can be counted using volume polynomials on moduli space. Anantharaman and Monk generalize this to **all** geodesics—simple or not—by defining:

- **local topological types** $T$,
- associated **volume functions** $V_g^T(l)$ describing the distribution of lengths of geodesics of type $T$,
- and proving that these functions admit **asymptotic expansions in powers of $1/g$**. 

This is the geometric backbone of their spectral‑gap argument.

---

### The Friedman–Ramanujan machinery
To push beyond Mirzakhani’s simple‑geodesic case, they introduce **Friedman–Ramanujan functions**, inspired by Friedman’s proof of Alon’s conjecture for random regular graphs.

These FR functions:

- encode cancellation patterns in trace formulas,
- behave well under **pseudo‑convolutions**, a key technical innovation,
- allow control of contributions from all geodesic types,
- ultimately show that the spectral gap approaches **1/4** with high probability.

---

### The results: approaching the optimal gap
The progression across papers:

| Result | Spectral gap lower bound | Method |
|-------|---------------------------|--------|
| Early work (2025) | $\lambda_1 \ge 2/9 - \varepsilon$ | First‑order $1/g$ expansion; FR cancellation. |
| Intermediate (2026) | $\lambda_1 \ge 2/9 - \varepsilon$ with full proof | Second‑order expansion; inclusion–exclusion to remove tangles. |
| Final (2025–2026) | $\lambda_1 \ge 1/4 - \varepsilon$ for *typical* surfaces | Arbitrary‑order $1/g^N$ expansion; full FR pseudo‑convolution machinery. |

---

## Future work 

- the trace method,
- the new Teichmüller coordinates,
- or the pseudo‑convolution argument?

## References and further reading
- https://arxiv.org/pdf/2604.09792
- https://arxiv.org/abs/2502.12268v2
- https://arxiv.org/pdf/2304.02678
- https://arxiv.org/html/2601.15157v1
