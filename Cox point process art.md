# **Cox point process art**

**Cox (inhomogeneous Poisson) point process of identical vertical segments driven by a smooth noise+gradient scalar field.**

core idea
— the inhomogeneous (or Cox) Poisson point process 
- scalar field $\lambda(x,y)$ 

### 1. Core stochastic model

- **Base process:**  

$$
  \{(x_i,y_i)\}_{i=1}^N \sim \text{PPP}(\lambda),\qquad
  \lambda(x,y) = \exp(f(x,y)).
$$

  Marks are deterministic
  : each point $(x_i,y_i)$ ↦ one vertical segment of length $\ell$, width $w$.

- **Field \(f\):**  
  “Noise + gradient + blobs” is exactly a Cox-process style construction:

$$
  f(x,y)
  = a y
  + b\,\mathrm{noise}(cx,cy)
  + \sum_k w_k \exp\Bigl(-\frac{\|(x,y)-\mathbf{c}_k\|^2}{\sigma_k^2}\Bigr),
$$

  - **Vertical gradient:** denser at bottom.
  - **Organic clumping:** via noise + Gaussians.
  - **Voids:** regions where $f$ is strongly negative → $\lambda\approx 0$.

This captures one scalar field and three geometric constants $(\ell,w,N)$.

### 2. Discrete lattice refinement

For reproduction and columnar regularity:

- **Lattice:**  
  Let $\mathcal{L} = \{(i\Delta_x, j\Delta_y)\}$ with $\Delta_x \approx$ segment thickness, $\Delta_y \approx$ vertical spacing.

- **Occupancy rule (Bernoulli thinning):**  
  For each lattice site $(x,y)\in\mathcal{L}$,

$$
  p(x,y) = \min\Bigl(1,\frac{\lambda(x,y)}{\lambda_{\max}}\Bigr),\qquad
  Z(x,y)\sim\text{Bernoulli}\bigl(p(x,y)\bigr).
$$

  Draw a segment at $(x,y)\) iff \(Z(x,y)=1$.

This gives a visually evident columns while keeping the PPP/Cox intuition as the continuous limit.

### 3. Alternative compact views (very close to what you wrote)

- **Exact:** list of $(x_i,y_i)$ or binary grid.
- **Analytic:** KDE of $\{(x_i,y_i)\}$ as an empirical $\hat{\lambda}$.
- **Procedural:** store $f$ (or its parameters) and resample PPP.
- **Spectral:** low-frequency Fourier/wavelet coefficients of $f$ or $\lambda$.

### 4. Minimal generative recipe

```python
# 1. define f(x,y) and λ(x,y) = exp(f(x,y))
# 2. sample PPP with intensity λ over domain D
points = poisson_sample(lambda_fn, D, n_expected)

# 3. render
for (x, y) in points:
    draw_line((x, y - ℓ/2), (x, y + ℓ/2), color="black", width=w)
```
### 4. Generative regimes
Here are the most interesting regimes that still stay faithful to the Cox / inhomogeneous Poisson construction with identical vertical segments:

**Extremal gradient** : 
Very strong ${a y}$ term → near-empty top, dense overlapping forest at the bottom.
 
**Inverted gradient** : 
Dense at the top, sparse/empty at the bottom (anti-gravity feel).

**Blob-dominated / island** : 
Weak gradient, very strong localized Gaussians → a few dense floating clusters of segments in a sea of emptiness.

**Pure correlated noise (no mean gradient)** : 
Only the noise term → roughly uniform average density but with strong organic clumping and voids (classic Cox texture).

**High-frequency / fine-scale noise** : 
Small correlation length → finer, more fractal-looking density variations, almost stippled in places.

**Lattice / columnar bias** : 
Explicitly lean into the discrete lattice + Bernoulli thinning version from your original description → more regular vertical columns with occasional missing sites.

**Rarefied / sparse** : 
Overall low intensity → elegant, almost calligraphic scattering of isolated segments.

**Saturated / continuous forest** : 
Very high intensity → segments heavily overlap into dark continuous vertical masses with soft organic edges.

**Horizontal or diagonal gradient** : 
Density varies left-to-right or along a diagonal instead of purely vertical.

**Radial / center-out** : 
Intensity falls off from a central high-density core.

A combination (or multi-regime pass) creates layered interference: one regime’s dense regions can sit inside another’s voids, producing nested clumps, crossed gradients, and more complex organic structure than any single field. The vertical segments stay identical, so the only variation is spatial density from the combined intensity fields.
A few combinations:

Double: normal (bottom-heavy) + inverted (top-heavy) → dense bands at both top and bottom with a sparse middle band, plus noise interaction.
Double: bottom-heavy + strong blob islands → dense base with floating dense clusters above.
Triple: bottom-heavy + inverted + pure correlated noise → richest texture, multiple overlapping scales of clumping.
