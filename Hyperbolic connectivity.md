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

## Appendix - Notations

### Geometry and probability

A compact hyperbolic surface $X$ of genus $g\ge 2$ has curvature $-1$. Gauss–Bonnet gives

$$
\operatorname{Area}(X)=4\pi(g-1).
$$

The moduli space is

$$
\mathcal{M}_g=\{\text{compact hyperbolic surfaces of genus }g\}/\text{isometry},
$$

equipped with the Weil–Petersson probability $\mathbb{P}_g^{\mathrm{WP}}$ and expectation $\mathbb{E}_g^{\mathrm{WP}}$.

Write $\mathcal{G}(X)$ for the set of primitive oriented closed geodesics on $X$, and $\ell_X(\gamma)$ for the length of $\gamma\in\mathcal{G}(X)$. The first nonzero Laplace eigenvalue is $\lambda_1(X)$. Huber’s bound is

$$
\limsup_{g\to\infty}\sup_{X\in\mathcal{M}_g}\lambda_1(X)\le\frac14,
$$

so $\frac14$ is the optimal large-genus target.

### Spectral-gap theorems

Anantharaman–Monk:

$$
\forall\,\varepsilon>0,\qquad
\lim_{g\to\infty}\mathbb{P}_g^{\mathrm{WP}}\Bigl(\lambda_1\ge\frac14-\varepsilon\Bigr)=1.
$$

Intermediate and earlier thresholds:

$$
\lim_{g\to\infty}\mathbb{P}_g^{\mathrm{WP}}\Bigl(\lambda_1\ge\frac29-\varepsilon\Bigr)=1,
\qquad
\lim_{g\to\infty}\mathbb{P}_g^{\mathrm{WP}}\Bigl(\lambda_1\ge\frac{3}{16}-\varepsilon\Bigr)=1.
$$

The orders of the $1/g$ expansion match these numbers: leading order $\mapsto 3/16$, second order $\mapsto 2/9$, arbitrary order $\mapsto 1/4$.

Hide–Macera–Thomas strengthen the error:

$$
\lambda_1(X)\ge\frac14-O(g^{-c})
\quad\text{with }\mathbb{P}_g^{\mathrm{WP}}\text{-probability}\to 1
$$

for some $c>0$.

A convenient equivalent form used in the roadmap paper is

$$
\mathbb{P}_g^{\mathrm{WP}}\Bigl(\lambda_1\le\frac14-\alpha^2\Bigr)\xrightarrow{g\to\infty}0
\quad\text{for every }\alpha>0.
$$

### Geodesic averages

For a compactly supported test function $F:\mathbb{R}_{\ge 0}\to\mathbb{R}$,

$$
\langle F\rangle_g^{\mathrm{all}}
:=\mathbb{E}_g^{\mathrm{WP}}\Biggl[\sum_{\gamma\in\mathcal{G}(X)}F(\ell_X(\gamma))\Biggr],
\qquad
\langle F\rangle_g^{\mathbf{s}}
:=\mathbb{E}_g^{\mathrm{WP}}\Biggl[\sum_{\gamma\text{ simple}}F(\ell_X(\gamma))\Biggr].
$$

Wu–Xue’s first-order comparison is

$$
\langle F\rangle_g^{\mathrm{all}}
=\langle F\rangle_g^{\mathbf{s}}
+\mathcal{O}_\eta\Bigl(\frac1g\,\|F(\ell)\,e^{(1+\eta)\ell}\|_\infty\Bigr).
$$

That is not enough for the optimal gap: one needs errors $O(g^{-N})$ for arbitrarily large $N$.

### Volume functions and the $1/g$ expansion

For a local topological type $\mathbf{T}$,

$$
V_g^{\mathbf{T}}(\ell)
$$

is the expected density of primitive closed geodesics of type $\mathbf{T}$ and length $\ell$. It admits

$$
V_g^{\mathbf{T}}(\ell)
\sim\sum_{k\ge\chi(\mathbf{T})}g^{-k}\,f_k^{\mathbf{T}}(\ell),
$$

where $\chi(\mathbf{T})$ is the absolute Euler characteristic of the surface filled by $\mathbf{T}$. For simple geodesics this reduces to Mirzakhani’s Weil–Petersson volume polynomials.

### Friedman–Ramanujan functions

A locally integrable $f:\mathbb{R}_{\ge 0}\to\mathbb{C}$ is a Friedman–Ramanujan function if there exist a polynomial $p$ and constants $c>0$, $N\ge 1$ with

$$
\bigl|f(\ell)-p(\ell)\,e^{\ell}\bigr|
\le c\,(\ell+1)^{N-1}\,e^{\ell/2}
\qquad(\ell\ge 0).
$$

The weak version replaces the pointwise bound by an integral:

$$
\int_0^\ell\bigl|f(s)-p(s)\,e^{s}\bigr|\,ds
\le c\,(\ell+1)^{N-1}\,e^{\ell/2}.
$$

The class of such functions is written $\mathcal{F}$; the subclass with $p=0$ is $\mathcal{R}$.

The exponents are spectral: $e^{\ell}$ is the volume growth of $\mathbb{H}^2$, while $e^{\ell/2}$ is the growth associated with the bottom of the continuous spectrum $\lambda=1/4$. If the coefficients $f_k^{\mathbf{T}}$ lie in $\mathcal{F}$, the non-principal terms cannot produce eigenvalues below $1/4-\varepsilon$.

A typical statement from Part I:

$$
\ell\mapsto \ell\,f_k^{\mathbf{T}}(\ell)
\quad\text{is weakly FR for }\chi(\mathbf{T})\le 1\text{ and }k=\chi(\mathbf{T}),\,\chi(\mathbf{T})+1.
$$

Part II upgrades this to every type $\mathbf{T}$ and every order $k$, using pseudo-convolutions.

## Trace-method implication

Let $h_L$ be a test function at scale $L=A\log g$, with Fourier transform $\widehat{h}_L$. If $\lambda_1(X)\le\frac14-\alpha^2-\varepsilon$ and $\alpha\in(0,1/2)$, then

$$
\widehat{h}_L\bigl(r_1(X)\bigr)
\ge C_{\alpha,\varepsilon}\,e^{(\alpha+\varepsilon)L},
$$

where $\lambda_1=\frac14+r_1^2$ in the usual parametrization (so a gap below $1/4$ means imaginary $r_1$). Taking WP expectation and feeding in the FR expansion of all $V_g^{\mathbf{T}}$ kills this exponential, hence such small eigenvalues have vanishing probability.

### Tangle-free set

Short loops and tangles:

$$
N_\kappa^{\mathrm{inj}}(X)
=\#\{\beta\in\mathcal{G}(X):\ell_X(\beta)\le\kappa\},
$$

$$
N_R^{\mathrm{tang}}(X)
=\#\{Y\subset X\text{ embedded}:\chi(Y)=1,\;\ell_X^{\max}(\partial Y)\le R\}.
$$

The tangle-free set is

$$
\mathrm{TF}_g^{\kappa,R}
=\{X\in\mathcal{M}_g:N_\kappa^{\mathrm{inj}}(X)=N_R^{\mathrm{tang}}(X)=0\}.
$$

With $R=\kappa\log g$,

$$
1-\mathbb{P}_g^{\mathrm{WP}}(\mathrm{TF}_g^{\kappa,R})
=\mathcal{O}\bigl(\kappa^2+g^{\frac32\kappa-1}\bigr).
$$

On $\mathrm{TF}_g^{\kappa,R}$, geodesics of length $\le A\log g$ that fill a pair of pants or once-holed torus fall into only

$$
\#\mathrm{Loc}_g^{\kappa,A}=\mathcal{O}_{\kappa,A}\bigl((\log g)^{c_{\kappa,A}}\bigr)
$$

local types, so the exponential tangle contribution is removed before the FR cancellation is applied.

### Dictionary with Ramanujan graphs

For a $d$-regular graph the Alon–Boppana / Ramanujan bound is $2\sqrt{d-1}$. For hyperbolic surfaces the analogous pair is

$$
\text{volume growth }e^{\ell}
\quad\text{versus remainder }e^{\ell/2},
$$

which is exactly the FR definition and exactly Huber’s $\lambda_1\le 1/4$. That is the precise sense in which typical high-genus hyperbolic surfaces are continuous Ramanujan graphs.
