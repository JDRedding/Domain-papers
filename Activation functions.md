# **Activation Functions**

These are the nonlinearities referenced in the post. The simplest ones — especially **ReLU** and its variants — are the most common starting points when a new model fails to train.

## **Field‑Shape Differences**

- **Sigmoid** compresses inputs into a probability‑like band with strong saturation.  
- **tanh** is zero‑centered and symmetric, often better for hidden layers.  
- **ReLU** is piecewise linear with a hard kink at 0; stable gradient flow.  
- **Leaky ReLU** adds a small negative‑side slope to prevent dead neurons.  
- **ELU** smooths the negative region with exponential curvature.  
- **Maxout** learns its own piecewise linear activation shape.

---

# **Standard Mathematical Forms**

## **Sigmoid**

$$
\sigma(x)=\frac{1}{1+e^{-x}}
$$

- $\sigma$: sigmoid function  
- $x$: real‑valued input  
- $e$: base of the natural logarithm  

---

## **Hyperbolic Tangent (tanh)**

$$
\tanh(x)=\frac{e^{x}-e^{-x}}{e^{x}+e^{-x}}
$$

Equivalent form:

$$
\tanh(x)=\frac{\sinh(x)}{\cosh(x)}
$$

- Zero‑centered; range $(-1,1)$

---

## **ReLU (Rectified Linear Unit)**

$$
{ReLU}(x)=\max(0,x)
$$

- Zeroes negative inputs; passes positive inputs unchanged.

---

## **Leaky ReLU**

$$
{LeakyReLU}(x)=\max(\alpha x, x)
$$

Common choice: $\alpha=0.1$

- $\alpha$: small positive slope preventing neuron death.

---

## **ELU (Exponential Linear Unit)**

$$
{ELU}(x)=
\begin{cases}
x & x\ge 0\\
\alpha(e^{x}-1) & x<0
\end{cases}
$$

- $\alpha$: positive hyperparameter (often $1.0$)

---

## **Maxout**
For two affine components:

$$
{Maxout}(x)=\max(w_1^\top x+b_1,\; w_2^\top x+b_2)
$$

General form:

$$
{Maxout}(x)=\max_{i\in\{1,\dots,k\}}(w_i^\top x+b_i)
$$

- $w_i$: weight vectors  
- $b_i$: bias scalars  
- Learns the piecewise linear shape directly.
