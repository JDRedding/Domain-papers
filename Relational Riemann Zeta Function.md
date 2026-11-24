# Relational Riemann Zeta Function

Structure–Interaction–Dynamics (SID) decomposition of the Riemann zeta function in Relational Dynamic Geometry notation.

## Compact Relational Dynamic Geometry Summary

**S**  
$\mathbb{N}^+$, $\mathbb{P}$, $\mathbb{C}$  
$\zeta(s) = \sum n^{-s} = \prod_p (1 - p^{-s})^{-1}$

**I**  
$n = \prod p^{v_p(n)}$  
$\log \zeta(s) = \sum_{k,p} p^{-ks}/k$

**D**  
$s \mapsto s + \mathrm{d}s$  
Pole at $1$, trivial zeros at $-2k$, nontrivial zeros in $0 < {Re}(s) < 1$, critical line at ${Re}(s) = 1/2$

## Types

| Symbol | Meaning |
|--------|---------|
| $\mathbb{N}^+$ | Positive integers $\{1, 2, 3, \dots\}$ |
| $\mathbb{P}$ | Set of primes |
| $\mathbb{C}$ | Complex plane |
| $s = \sigma + it$ | Complex variable |
| $n$ | Element of $\mathbb{N}^+$ |
| $p$ | Element of $\mathbb{P}$ |

## Structure ($S$)

$$
S = (\mathbb{N}^+, \mathbb{P}, \mathbb{C})
$$

Unique factorization:

$$
n = \prod_{p \in \mathbb{P}} p^{v_p(n)}, \qquad v_p(n) \in \mathbb{N}_0
$$

Dual presentations (${Re}(s) > 1$):

$$
\zeta(s) = \sum_{n=1}^\infty n^{-s} = \prod_{p \in \mathbb{P}} (1 - p^{-s})^{-1}
$$

## Interaction ($I$)

Local Dirichlet term:

$$
{term}_n(s) = n^{-s}
$$

Local Euler factor:

$$
{factor}_p(s) = (1 - p^{-s})^{-1}
$$

Multiplicative coupling:

$$
n^{-s} = \prod_{p \mid n} (p^{-s})^{v_p(n)}
$$

Logarithmic interaction (von Mangoldt form):

$$
\log \zeta(s) = \sum_{k \ge 1} \sum_{p \in \mathbb{P}} \frac{p^{-ks}}{k} = \sum_{n \ge 2} \frac{\Lambda(n)}{n^s \log n}
$$

The global field emerges from the accumulated prime contributions.

## Dynamics ($D$)

Parameter evolution:

$$
s \mapsto s + \mathrm{d}s
$$

Analytic continuation yields a meromorphic function on all of $\mathbb{C}$.

Functional equation (completed form):

$$
\xi(s) = \xi(1 - s)
$$

$$
\xi(s) = \frac{1}{2} s(s-1) \pi^{-s/2} \Gamma(s/2) \zeta(s)
$$

Singularities and zeros:

- Pole: $s = 1$ (simple)
- Trivial zeros: $s = -2, -4, -6, \dots$
- Nontrivial zeros: $\rho = \sigma_\rho + it_\rho$ with $0 < \sigma_\rho < 1$

Critical-line dynamics:

$$
{Re}(s) = \frac{1}{2}
$$

