# Stochastic feedback
**A common mathematical description of stochastic feedback** (especially the simple scalar case studied in control theory and dynamical systems) is the discrete-time multiplicative process

These expressions capture the idea that *stochastic feedback* can generate rich dynamics (heavy-tailed distributions, stability conditions that differ for mean/median/variance, emergent structure, adaptive behaviour, etc.) even when the individual deterministic modes would not.

$$
x_{k+1} = a_k \, x_k, \qquad k = 0,1,2,\dots
$$

where the $a_k$ are independent random variables drawn from some distribution $f_a(a)$ (the stochastic feedback gain or multiplicative noise).  

This is equivalent to a pure feedback loop around a unit delay with a random gain. Taking logarithms yields the additive form

$$
\zeta_{k+1} = \zeta_k + \alpha_k, \qquad x_k = e^{\zeta_k}
$$

(with $\alpha_k = \log a_k$).

### Continuous-time analogue
A continuous-time version appears as the linear stochastic differential equation (or Langevin equation) with multiplicative noise

$$
dx_t = a(t)\, x_t\, dt
$$

(or more generally $dx = f(x)\,dt + \sigma(x)\,dW_t)$, where $a(t)$ or the diffusion coefficient is itself stochastic / state-dependent.

### Feedback-controlled form (broader systems / algorithms context)
When an explicit feedback law $u = \pi(x)$ is present, the controlled stochastic differential equation is

$$
dX_t = f(X_t, \pi(X_t))\,dt + \sigma(X_t, \pi(X_t))\,dW_t.
$$

In discrete recursive algorithms (e.g., stochastic approximation / stochastic gradient methods that can be viewed as the origin of many adaptive “algorithms”), a prototypical form is

$$
\theta_{n+1} = \theta_n + a_n\bigl(h(\theta_n) + M_{n+1}\bigr),
$$

where $M_{n+1}$ is a noise (martingale-difference) term and $a_n$ is a step-size sequence.
