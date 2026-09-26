# Quantum Harmonic Oscillator  
## Coherent States

**Units:** $\hbar = m = \omega = 1$

## Variables 

| Symbol | Meaning |
|--------|---------|
| $\alpha$ | complex coherent amplitude |
| $\lvert\alpha\rvert$ | $0$, $1.5$, $3$, $6$ |
| $n$ | photon number (quanta) |
| $x$ | dimensionless position quadrature |
| $X$, $P$ | dimensionless quadratures defined above |

---

## Fundamentals

Annihilation and creation operators: $a$, $a^\dagger$

$$
[a, a^\dagger] = 1
$$

Number (Fock) states: $|n\rangle$, $n = 0,1,2,\ldots$

$$
\begin{align*}
a |n\rangle &= \sqrt{n}\, |n-1\rangle \\
a^\dagger |n\rangle &= \sqrt{n+1}\, |n+1\rangle
\end{align*}
$$

Number operator:

$$
N = a^\dagger a, \qquad N |n\rangle = n |n\rangle
$$

Quadrature operators (dimensionless position and momentum):

$$
\begin{align*}
X &= \frac{a + a^\dagger}{\sqrt{2}} \\
P &= \frac{a - a^\dagger}{i\sqrt{2}}
\end{align*}
$$

Minimum-uncertainty relation for coherent states:

$$
\Delta X \cdot \Delta P = \tfrac{1}{2}
$$

---

## Coherent-State Definition

Type: complex amplitude $\alpha \in \mathbb{C}$

$$
|\alpha\rangle = e^{-|\alpha|^2/2} \sum_{n=0}^{\infty} \frac{\alpha^n}{\sqrt{n!}}\, |n\rangle
$$

Equivalent displacement-operator form:

$$
|\alpha\rangle = D(\alpha)\, |0\rangle, \qquad
D(\alpha) = \exp\bigl(\alpha a^\dagger - \alpha^* a\bigr)
$$

---

## Photon-Number Statistics (Poisson)

$$
P(n) = \bigl|\langle n|\alpha\rangle\bigr|^2
     = e^{-|\alpha|^2} \frac{|\alpha|^{2n}}{n!}
$$

- Mean photon number: $\langle n\rangle = |\alpha|^2$
- Variance: $\mathrm{Var}(n) = |\alpha|^2$ (Poissonian)

---

## Position-Space Wave Function

$$
\psi_\alpha(x) = \pi^{-1/4}
\exp\Biggl(   -\frac{\bigl(x - \sqrt{2}\,\mathrm{Re}(\alpha)\bigr)^2}{2}   + i\sqrt{2}\,\mathrm{Im}(\alpha)\, x   - \tfrac{i}{2}\,\mathrm{Re}(\alpha)\,\mathrm{Im}(\alpha)
\Biggr)
$$

Probability density:

$$
\bigl|\psi(x)\bigr|^2
= \pi^{-1/2}
\exp\Bigl(
  -\bigl(x - \sqrt{2}\,\mathrm{Re}(\alpha)\bigr)^2
\Bigr)
$$

The packet is a displaced Gaussian of fixed width.

---

## Phase-Space Picture

Expectation values (classical orbit):

$$
\begin{align*}
\langle X\rangle &= \sqrt{2}\,\mathrm{Re}(\alpha) \\
\langle P\rangle &= \sqrt{2}\,\mathrm{Im}(\alpha)
\end{align*}
$$

The state appears as a disk of radius $1/\sqrt{2}$ centered at the point $\bigl(\langle X\rangle, \langle P\rangle\bigr)$ in the $X$–$P$ plane.

Radius of the classical circle: $|\alpha|$.

---

