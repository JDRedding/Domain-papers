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

The Anantharaman–Monk program is already past the “existence of a typical expander” stage. Typical Weil–Petersson surfaces of large genus satisfy $\lambda_1\ge\frac14-\varepsilon$ with probability $\to 1$, so they are continuous analogues of Ramanujan graphs. The remaining questions are quantitative rates, finer spectral statistics, and whether the new geometric machinery can travel to other models and operators.

Of the tools, **pseudo-convolution of Friedman–Ramanujan functions** is the one that still has the most unused leverage.

## **Why pseudo-convolution first**  
The Selberg trace formula converts the spectral gap into control of the length spectrum. The volume functions $V_g^{\mathbf{T}}(\ell)$ already have a full $1/g$ expansion whose coefficients are FR functions. Pseudo-convolution is what lets you sum over *all* local types $\mathbf{T}$ while keeping the principal term $p(\ell)e^\ell$ and the error $e^{\ell/2}$. That cancellation is exactly the gap between the trivial eigenvalue $0$ and Huber’s bound $\frac14$. Once the algebra of FR functions under pseudo-convolution is fully axiomatized, the same bookkeeping should give:

- polynomial-error versions of $\lambda_1\ge\frac14-O(g^{-c})$ inside the original AM method (Hide–Macera–Thomas already obtained a polynomial rate by a different, matrix-theoretic route);  
- control of the *second* eigenvalue and of the spectral density near $\frac14$;  
- analogous statements for surfaces with a slowly growing number of cusps, and possibly for the Dirac operator.

## **Trace method**  
This is already the backbone (Selberg + test functions supported on $[0,A\log g]$). Incremental improvements here are mostly analytic: better test functions, sharper tangle-exclusion via inclusion-exclusion, and quantitative Benjamini–Schramm estimates. They improve constants and error terms but do not open new theorems by themselves. The geometric input still has to come from the volume functions.

## **New Teichmüller coordinates**  
These are the most “Mirzakhani-like” piece: they turn the integral expressions for $V_g^{\mathbf{T}}(\ell)$ into something that can actually be expanded. They are essential infrastructure, but once the expansion exists they become a black box. Extending them to bordered surfaces, to higher Teichmüller spaces, or to the mapping class group action would be valuable, yet that is a longer-term geometric project rather than the shortest path to the next spectral-gap theorem.

A realistic near-term agenda is therefore:

1. Close the FR class under pseudo-convolution at every order and extract an explicit polynomial rate from the AM series.  
2. Feed that rate into mixing-time and Cheeger-constant estimates (the “hyperbolic expander” dictionary).  
3. Only then recycle the coordinates to treat other moduli problems (punctured surfaces, covers, or the Weil–Petersson geodesic flow).

The graph-theoretic analogy is useful here: Friedman’s original argument also had three layers (trace formula, Ramanujan functions, tangle removal). The part that generalized most cleanly was the algebraic cancellation, not the combinatorial model of the graph. The same pattern is visible for surfaces.

## References and further reading
- https://arxiv.org/pdf/2604.09792
- https://arxiv.org/abs/2502.12268v2
- https://arxiv.org/pdf/2304.02678
- https://arxiv.org/html/2601.15157v1
