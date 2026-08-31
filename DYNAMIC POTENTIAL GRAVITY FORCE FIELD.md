# Dynamic Potential Gravity Force Field (Consolidated)

## Types & Fundamentals

| Symbol | Meaning |
|--------|---------|
| $\beta(x,t)$ | scalar SID potential |
| $\partial_i \beta$ | spatial gradient of $\beta$ |
| $A^i(x,t)$ | independent lift (PED-adjacent); **not** $\partial^i \beta$ |
| $\Gamma^{jk}(x,t)$ | antisymmetric PED 2-form ($\Gamma^{jk} = -\Gamma^{kj}$) |
| $\varepsilon_{ijk}$ | Levi-Civita antisymmetric symbol |
| $G_i$ | dualized PED field, $G_i = \varepsilon_{ijk} \Gamma^{jk}$ |
| $S^i$ | GEMiton composite, $S^i = 4 A^i + G^i$ |

**Note:**  
If $A^i = \partial^i \beta$, then $S^i = 0$ identically.  
Therefore $A^i$ **must** be independent for a nontrivial GEMiton.

---

## Core Constraint

$$
\partial_i \beta = -\frac{1}{4} G_i
$$

$$
G_i = \varepsilon_{ijk} \Gamma^{jk}
$$

**Correct inversion (GROK correction):**

$$
\Gamma^{jk} = -2 \varepsilon^{ijk} \partial_i \beta
$$

**Check:**

$$
\begin{align*}
\varepsilon_{mjk} \Gamma^{jk}
  &= -2 \varepsilon_{mjk} \varepsilon^{ijk} \partial_i \beta \\
  &= -4 \partial_m \beta \\
\Rightarrow \quad -\frac{1}{4} \varepsilon_{mjk} \Gamma^{jk} &= \partial_m \beta
\end{align*}
$$

**Consequence:**  
$\Gamma$ is **not** independent.  
$\Gamma = \star^{-1}(\nabla \beta)$  
PED has no free degrees of freedom unless extended.

---

## Static Slice Field Strengths

$$
E_i = -\partial_i \beta
$$

$$
G_i = -4 \partial_i \beta = 4 E_i
$$

Therefore:

$$
G = 4E, \qquad |G| = 4|E|
$$

---

## Optional Dynamic Completion

($c = 1$ units)

$$
E_i = -\partial_i \beta - \partial_t A_i
$$

$$
G_i = \varepsilon_{ijk} \partial_j A_k \qquad (\Gamma \text{ no longer slaved})
$$

Use the static slice unless dynamics are explicitly added.

---

## Test-Mass Force (GEM-like)

For point mass $m$, velocity $v^i$:

$$
F_i = m \bigl( E_i + \varepsilon_{ijk} v^j G_k \bigr)
$$

**Static slice** ($G = 4E$):

$$
F_i = -m \partial_i \beta + 4 m \varepsilon_{ijk} v^j \partial_k \beta
$$

**Rest frame** ($v = 0$):

$$
F_i = -m \partial_i \beta
$$

**Note:**  
The $4 m\, v \times E$ term is a slice artifact from slaving $G$ to $E$.  
It is **not** linearized GR gravitomagnetism.

---

## Energy Density (Static)

$$
\begin{align*}
u &= \tfrac12 \bigl( E_i E^i + G_i G^i \bigr) \\
  &= \tfrac12 (1 + 16)\, |E|^2 \\
  &= \tfrac{17}{2}\, |\nabla \beta|^2
\end{align*}
$$

**Example:** $\beta = k/r$

$$
|\nabla \beta|^2 = \frac{k^2}{r^4}, \qquad
u = \frac{17}{2} \frac{k^2}{r^4}
$$

The integral diverges at $r = 0$ and at infinity.  
Not a soliton energy.

---

## Nontrivial Lift ($S \neq 0$)

Keep $\beta = k/r$, $\Gamma$ slaved from $\beta$.

Choose a divergence-free lift (Coulomb gauge):

$$
A^i = \frac{B_0}{2} (n \times x)^i \exp(-r^2/s^2)
$$

Then:

$$
G_i = -4 \partial_i \beta = \frac{4k x_i}{r^3}
$$

$$
\begin{align*}
S^i &= 4 A^i + G^i \\
    &= 2 B_0 (n \times x)^i \exp(-r^2/s^2) + \frac{4k x^i}{r^3}
\end{align*}
$$

---

## Soliton Conditions

### (A) Divergence-free

$$
\partial_i S^i = 0
$$

For $\beta = k/r$:

$$
\partial_i G^i = 16\pi k\, \delta^3(x)
$$

$\Rightarrow$ $S$ has a point source at $r = 0$  
$\Rightarrow$ not divergence-free unless $A$ cancels the source.

### (B) Constant-norm

$$
S_i S^i = \text{const}
$$

Impossible for a localized packet unless $S = 0$.  
(A continuous function with $|S| \to 0$ at infinity cannot have $|S| = \text{const}$.)

**Viable replacements:**

- **(B1)** Integral charge: $\displaystyle \int S_i S^i\, dV = \mu^2$
- **(B2)** Core-flat: $S_i S^i = \mu^2$ for $r < s$
- **(B3)** Beltrami: $\nabla \times S = \lambda S$ (Hopf-like structure)

---

## Regularized Potential Option

$$
\beta = \frac{k}{\sqrt{r^2 + s^2}}
$$

Then:

$$
\partial_i \beta = -\frac{k x_i}{(r^2 + s^2)^{3/2}}
$$

$$
G_i = \frac{4k x_i}{(r^2 + s^2)^{3/2}}
$$

$$
\partial_i G^i = \frac{12 k s^2}{(r^2 + s^2)^{5/2}}
$$

- No delta singularity  
- $A$ must satisfy $4 \partial_i A^i = -\partial_i G^i$ to enforce (A)

---

## SID / PED Structure

**SID**
- $\beta$
- $\nabla \beta$

**PED**
- $\Gamma^{jk}$ (but slaved unless extended)
- $G_i = \varepsilon_{ijk} \Gamma^{jk}$

**Cross-coupling**
- $\nabla \beta \leftrightarrow \star(\Gamma)$
- Factor: $-1/4$ forward, $-2$ inverse

**Note:**  
This coupling is kinematic, not dynamical.  
To obtain true GEM-like dynamics, add:

- $\partial_t \beta$
- $\partial_t A$
- $\nabla \times A$
- continuity / source terms

---

## Summary

- Correct inversion: $\Gamma = -2\,\varepsilon\,\partial\beta$
- Static slice: $G = 4E$
- Newtonian force recovered
- Motion force has a slice artifact
- Energy diverges for a $1/r$ potential
- $S$ sourced at the origin unless $\beta$ is regularized
- Global constant-norm soliton impossible
- Nontrivial GEMiton requires:
  1. regular $\beta$ or free $\Gamma$,
  2. a weakened soliton condition,
  3. $A$ chosen to cancel divergence if needed.

---

*End — Dynamic Potential Gravity Force Field (Full)*
