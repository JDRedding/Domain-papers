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
