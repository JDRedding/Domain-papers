# Hessians
This note collects practical curvature objects and approximations used to incorporate second‑order information into optimization without forming the full Hessian.

It covers definitions, efficient computations (HVP), stochastic estimators (Hutchinson), adaptive diagonal approximations (AdaHessian), structured approximations (Gauss–Newton / GGN, K‑FAC), and quasi‑Newton methods (L‑BFGS). It emphasizes computational cost and practical trade‑offs.

## Hessian and Related Curvature Objects

Let $\(L(\theta)\)$ be a scalar loss (or empirical risk) with parameters $\(\theta \in \mathbb{R}^d\)$.

---

## Hessian Matrix

```math
H(\theta) = \nabla^2 L(\theta), \qquad
H_{ij} = \frac{\partial^2 L}{\partial \theta_i \partial \theta_j}.
```

---

## Hessian–Vector Product (HVP)

For any vector $\(v \in \mathbb{R}^d\)$:

```math
Hv = \nabla\!\left( (\nabla L(\theta))^\top v \right).
```

This can be computed efficiently via automatic differentiation (Pearlmutter’s trick) at roughly the cost of two gradient evaluations. The Hessian matrix itself is never formed.

---

## Hutchinson’s Stochastic Estimator (Diagonal / Trace)

Let $\(z \in \mathbb{R}^d\)$ be a random vector with  
$\(\mathbb{E}[zz^\top] = I\)$ (e.g., Rademacher ±1 or standard Gaussian). Then:

```math
{diag}(H) = \mathbb{E}[\,z \odot (Hz)\,], \qquad
{Tr}(H)   = \mathbb{E}[\,z^\top Hz\,].
```

Here, $\(\odot\)$ denotes element‑wise (Hadamard) multiplication.

In practice, draw $\(m\)$ independent samples $\(z^{(1)},\dots,z^{(m)}\)$ and average:

```math
\widehat{{diag}}(H)
= \frac{1}{m} \sum_{k=1}^m z^{(k)} \odot (H z^{(k)}).
```

---

## AdaHessian (Diagonal Hessian Approximation + Adaptive Preconditioning)

AdaHessian maintains an exponential moving average of the Hutchinson diagonal estimate:

```math
D_t = \beta_2 D_{t-1}
      + (1 - \beta_2)\,\bigl|\,z \odot (Hz)\,\bigr|
```

(often using the squared version), optionally followed by spatial/block averaging to reduce variance.

Parameter update:

```math
\theta_{t+1}
= \theta_t
  - \eta \frac{\hat{m}_t}{\sqrt{\hat{D}_t} + \varepsilon},
```

where $\(\hat{m}_t\)$ is a momentum estimate of the gradient and $\(\hat{D}_t\)$ is the bias‑corrected diagonal curvature estimate. Memory and compute cost remain \(O(d)\).

---

## Gauss–Newton (GN) / Generalized Gauss–Newton (GGN)
$
Let the network output be $\(z = f(\theta; x)\)$ and the loss be $\(L = L(z, y)\)$. The exact Hessian decomposes as:

```math
H = J^\top H_z J
    + \sum_a \frac{\partial L}{\partial z_a}\,\nabla^2 z_a,
```

where:

- $\(J = \partial z / \partial \theta\)$ is the Jacobian of network outputs,
- $\(H_z = \nabla_z^2 L\)$ is the Hessian w.r.t. outputs.

The Gauss–Newton matrix drops the second term:

```math
G = J^\top H_z J.
```

When the loss is convex in $\(z\)$ (e.g., squared error, cross‑entropy), $\(G\)$ is positive semi‑definite. It is the Hessian of the linearized network composed with the original loss.

---

## K‑FAC (Kronecker‑Factored Approximate Curvature)

K‑FAC approximates the Fisher information matrix $\(F\)$ using a block‑diagonal structure over layers:

```math
F \approx {diag}(F_1, \dots, F_L).
```

For a linear or convolutional layer with weights $\(W_\ell\)$, activations $\(a_{\ell-1}\)$, and pre‑activation gradients $\(g_\ell\)$:

```math
F_\ell \approx A_{\ell-1} \otimes G_\ell,
```

where:

```math
A_{\ell-1} = \mathbb{E}[a_{\ell-1} a_{\ell-1}^\top], \qquad
G_\ell     = \mathbb{E}[g_\ell g_\ell^\top].
```

The inverse factors:

```math
F_\ell^{-1} \approx A_{\ell-1}^{-1} \otimes G_\ell^{-1}.
```

Natural‑gradient / approximate Newton update:

```math
\Delta W_\ell
= -\,G_\ell^{-1}\,(\nabla_{W_\ell} L)\,A_{\ell-1}^{-1}.
```

(plus damping / Tikhonov regularization $\(\lambda I\)$ on each factor).  
Cost scales with the square of layer dimensions, not total parameter count.

---

## L‑BFGS (Limited‑Memory Quasi‑Newton)

L‑BFGS builds a low‑rank approximation of the inverse Hessian using curvature pairs:

```math
s_k = \theta_{k+1} - \theta_k, \qquad
y_k = \nabla L(\theta_{k+1}) - \nabla L(\theta_k).
```

These satisfy the secant condition $\(B_{k+1} s_k = y_k\)$.

The BFGS update for the inverse Hessian approximation $\(H_k \approx B_k^{-1}\)$:

```math
H_{k+1}
= (I - \rho_k s_k y_k^\top)\,H_k\,(I - \rho_k y_k s_k^\top)
  + \rho_k s_k s_k^\top,
\qquad
\rho_k = \frac{1}{y_k^\top s_k}.
```

Limited‑memory version stores only the last $\(m\)$ pairs $\(\{s_i, y_i\}\)$.  
The product $\(H_k g\)$ is computed via a two‑loop recursion in $\(O(md)\)$ time and memory, typically with a diagonal or scaled‑identity initial matrix $\(H_0\)$.

---

## Summary

These methods provide practical ways to approximate or exploit curvature in optimization, reducing the naive $\(O(d^2)\)–\(O(d^3)\)$ cost of full Newton steps to linear or near‑linear cost in the number of parameters.
