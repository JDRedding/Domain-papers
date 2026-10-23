# Hecke Operators
Hecke operators are central because they:

- produce bases of modular forms with strong arithmetic properties,
- decompose modular forms into eigenforms,
- connect modular forms to Galois representations (via eigenvalues $a_p$),
- give rise to Euler products and functional equations of L‑functions,
- appear in the Langlands program as part of the structure of automorphic representations.

## What a Hecke Operator Is

Hecke operators are linear operators acting on spaces of modular forms (and more generally automorphic forms) that encode deep arithmetic information. They form a commutative algebra, admit simultaneous eigenfunctions, and connect modular forms to L‑functions and Galois representations.

For a modular form  

$$
f(z)=\sum_{n=0}^{\infty} a_n q^n
$$

of weight $k$, the classical Hecke operator $T_n$ acts by  

$$
(T_n f)(z) = n^{k-1} \sum_{\substack{ad=n \\ b \bmod d}} f\!\left(\frac{az+b}{d}\right).
$$

This action is linear and preserves the space of modular forms of a given weight and level.

---

## How They Act on Fourier Coefficients

A key feature is the simple action on Fourier coefficients:

$$
(T_n f)(z)
= \sum_{m=0}^{\infty}
\left(
\sum_{d \mid (m,n)} d^{\,k-1}\, a_{mn/d^2}
\right) q^m.
$$

This makes Hecke operators extremely useful for studying the arithmetic of the coefficients $a_n$.

---

## Hecke Eigenforms

A modular form $f$ is a **Hecke eigenform** if it is a simultaneous eigenfunction of all $T_n$:

$$
T_n f = \lambda_n f.
$$

Eigenforms have multiplicative Fourier coefficients:

$$
a_{mn} = a_m a_n \quad \text{whenever } (m,n)=1,
$$

and satisfy recursive relations at prime powers. This multiplicativity allows the associated L‑function

$$
L(f,s)=\sum_{n=1}^{\infty} a_n n^{-s}
$$

to factor into an Euler product.

---

## Special Operators: $T_p$ and $U_p$

- **$T_p$** (for primes not dividing the level) is the most important Hecke operator; its eigenvalues often encode arithmetic data such as point counts on elliptic curves.

- **$U_p$** (for primes dividing the level) acts differently and is crucial in the theory of modular forms of non‑squarefree level and in $p$-adic modular forms.

---

## APPENDIX: Worked Example
This formula shows how $T_p$ mixes coefficients in a controlled, multiplicative way.

For a weight‑$k$ modular form  

$$
f(z)=\sum_{n=0}^{\infty} a_n q^n,
$$

the operator $T_p$ acts by

$$
(T_p f)(z) = \sum_{n=0}^{\infty}
\left(
a_{pn} + p^{k-1} a_{n/p}
\right) q^n,
$$

where $a_{n/p}=0$ unless $p \mid n$.
