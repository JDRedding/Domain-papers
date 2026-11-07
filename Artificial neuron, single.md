# Single artificial neuron
Formal model 

$$
\text{Neuron} = (S, I, D)
$$

### Components

**State** (learnable parameters)

$$
S = (w, b)
$$

**Integration function** (weighted sum + bias)

$$
I(x, S) = \sum_i w_i x_i + b
$$

**Decision / activation function**

$$
D(z) = \sigma(z)
$$

**Forward pass**

$$
z = I(x, S), \qquad \hat{y} = D(z) = \sigma\bigl(I(x, S)\bigr)
$$

**Training objective** (error)

$$
E(\hat{y}, y) = L
$$

The error $E$ is used to update the state $S$ (i.e., the weights $w$ and bias $b$) so that future outputs better match the targets.

### Expanded standard form

$$
\begin{aligned}
z &= \sum_i w_i x_i + b \\
\hat{y} &= \sigma(z) \\
L(w,b) &= \frac1n\sum_i \ell(\hat{y}_i, y_i)
\end{aligned}
$$

The notation cleanly separates the neuron into:
- what is stored ($S$),
- how inputs are combined ($I$),
- how the result is turned into an output ($D$),
- and the external training signal ($E$) that modifies $S$.

## **Appendix A. Projection Domains**

The neuron definition remains unchanged. Projection variables are introduced as external modifiers acting on the stored parameters. The SID decomposition of the neuron is unchanged. Only the admissible domain of the projection variables \(p\) is substituted. This is why the circle and square forms may be viewed as distinct projections of the same underlying relational structure. The separation of projection generators from the neuron itself also makes it easy to swap in other projection domains later (higher roots of unity, learned continuous phases that are quantized, etc.) without touching the core integrator.

**General projection form**

$$
\begin{align*}
z(p) &= \sum_i p_i w_i x_i + p_b b \\
\hat{y}(p) &= \sigma\bigl(z(p)\bigr)
\end{align*}
$$

where

$$
p = (p_1,\ldots,p_n,p_b)
$$

is a projection tuple.

**Circle projection**

Let

$$
p_i = e^{i\theta_i}, \qquad p_b = e^{i\theta_b}.
$$

Then

$$
z(\theta) = \sum_i e^{i\theta_i} w_i x_i + e^{i\theta_b} b.
$$

The projection domain is

$$
P_{\mathrm{circle}} = \mathbb{U}(1).
$$

**Square projection**

Let

$$
p_i = i^{k_i}, \qquad p_b = i^{k_b},
$$

with

$$
k_i, k_b \in \{0,1,2,3\}.
$$

Then

$$
z_k = \sum_i i^{k_i} w_i x_i + i^{k_b} b.
$$

The projection domain is

$$
P_{\mathrm{square}} = \{1,i,-1,-i\} = \mu_4.
$$

**Relationship**

The square projection is the restriction of the circle projection to the fourth roots of unity:

$$
i^k = e^{i\pi k/2}.
$$

Hence

$$
\mu_4 \subset \mathbb{U}(1)
$$

and

$$
z_k = z\!\left( \theta_i = \tfrac{\pi}{2}k_i,\; \theta_b = \tfrac{\pi}{2}k_b \right).
$$

**Compact form**

$$
z(p) = \sum_i p_i w_i x_i + p_b b
$$

with

$$
p \in \mathbb{U}(1) \qquad\text{(circle)}
$$

or

$$
p \in \{1,i,-1,-i\} \qquad\text{(square)}.
$$
