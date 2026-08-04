# **Cox point process art**

**Cox (inhomogeneous Poisson) point process of identical vertical segments driven by a smooth noise+gradient scalar field.**

Core idea
- the inhomogeneous (or Cox) Poisson point process 
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

$$f(x,y) = a y + b\,\mathrm{noise}(cx,cy) + \sum_k w_k \exp\Bigl(-\frac{\|(x,y)-\mathbf{c}_k\|^2}{\sigma_k^2}\Bigr)$$

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
### 5. Generative regimes

All regimes keep the same mark (identical vertical segment); only \(\lambda(x,y)\) changes.

- **Extremal vertical gradient:**  
  **Strong \(a y\)** → near-empty top, dense overlapping forest at the bottom.

- **Inverted gradient:**  
  Dense at the top, sparse at the bottom → “anti-gravity” feel.

- **Blob-dominated / islands:**  
  Weak gradient, strong localized Gaussians → a few dense floating clusters in a mostly empty field.

- **Pure correlated noise:**  
  No mean gradient, only noise → roughly uniform average density with organic clumps and voids (canonical Cox texture).

- **High-frequency noise:**  
  Short correlation length → fine, almost stippled density variations.

- **Lattice / columnar bias:**  
  Emphasize the discrete lattice + Bernoulli thinning → regular vertical columns with occasional missing sites.

- **Rarefied / sparse:**  
  Low overall intensity → isolated, calligraphic segments.

- **Saturated / continuous forest:**  
  Very high intensity → overlapping segments forming dark vertical masses with soft edges.

- **Horizontal / diagonal gradient:**  
  Density varies left–right or along a diagonal instead of vertically.

- **Radial / center-out:**  
  Intensity decays away from a central high-density core.

**Layered regimes:** combining multiple fields \(f_1,f_2,\dots\) (e.g. gradients + blobs + noise) yields nested clumps, crossed gradients, and multi-scale structure. The marks remain identical; all visual richness comes from the superposed intensity fields.
