# RDG-GM (Relational Dynamic Geometry - Grade Machine)

**Variables:** $n$, $z$, $w$

## Purpose

Just level, signed grade, unsigned winding, and a coefficient law.

## Types

| Symbol | Set | Meaning |
|--------|-----|---------|
| $n$ | $\mathbb{N} = \{1, 2, 3, \ldots\}$ | level / modulus / period / cycle length |
| $w$ | $W = \{0, 1, 2, \ldots\}$ | unsigned winding / transport / twist index |
| $z$ | $\mathbb{Z} = \{\ldots, -2, -1, 0, 1, 2, \ldots\}$ | signed grade |
| $q$ | — | formal series variable |
| $c$ | — | coefficient law |
| $\tau$ | — | twist operator |

## Default Chart

$$
z = w - 1
$$

## Offset Table

| $w$ | $z$ | Role |
|------|------|------|
| $0$ | $-1$ | vacuum / pole |
| $1$ | $0$ | hinge / constant term |
| $2$ | $1$ | first occupied grade |
| $3$ | $2$ | second occupied grade |
| $\ldots$ | $\ldots$ | $\ldots$ |

## Support

$$
c_n(z) = 0 \quad \text{for } z < -1
$$

Equivalently, $c_n(w)$ is defined for $w \ge 0$ only.

## Series

$$
T_n(q) = \sum_{w \ge 0} c_n(w)\, q^{w-1}
$$

$$
T_n(q) = \sum_{z \ge -1} c_n(z)\, q^{z}
$$

## What Each Variable Does

- $n$ does **not** run the grade axis.
- $n$ is the modulus the series lives over.
- $z$ is the signed grade.
- $w$ is rest-first transport:
  - $w = 0$: rest
  - $w \ge 1$: motion

## Generic Coefficient Law

$$
c : \mathbb{N} \times \mathbb{Z} \to \mathbb{C}
$$

$c_n(z)$ is arbitrary on $z \ge -1$.

### Three empty shapes

1. **Free grade**  

   $c_n(z)$ free on support.

2. **Periodic-in-$n$** (optional, usually rejected)  

$$
c_n(z+n) = c_n(z)
$$

   $n$ is normally the modulus of the series, not of the grades.

3. **Replication / transport compatible**  

$$
c_n(w) = F\bigl(c_n(0),\ldots,c_n(k);\, w\bigr)
$$

   $F$ is a function of winding, not a second grade axis.

## Twists

$$
\tau_k : T_n \mapsto T_n^{(k)}, \qquad k \in W
$$

**Rules**

- $\tau_0 = \mathrm{id}$
- $\tau_k$ does not change $n$
- $\tau_k$ does not change the chart $z = w-1$
- $\tau_k$ does change the coefficient law

$$
T_n^{(k)}(q) = \sum_{w \ge 0} c_n^{(k)}(w)\, q^{w-1}
$$

## Generic Twist Laws

**A. Relabel winding**

$$
c_n^{(k)}(w) = c_n(w+k)
$$

**B. Character-weight, same grades**

$$
c_n^{(k)}(w) = \chi_k(w)\, c_n(w), \qquad \chi_k : W \to \mathbb{C}
$$

**C. Cycle level against winding**

$$
c_n^{(k)}(w) = c_n\bigl((w+k) \bmod n\bigr)
$$

Only if a periodic law was chosen. Usually rejected for the grade machine.

Default RDG twist is **A** or **B**.

- $k = 0$: identity series
- $k \ge 1$: wound / twisted series

If a second copy of $w$ is needed, write $(w_{\mathrm{grade}}, w_{\mathrm{twist}})$.

Keep one chart:

$$
z = w_{\mathrm{grade}} - 1
$$

Do not invent a second $z$.

## Minimal Object

$$
\bigl(n,\, c,\, \{\tau_k\}_{k \in W}\bigr)
$$

produces

$$
T_n^{(k)}(q) = \sum_{z \ge -1} c_n^{(k)}(z)\, q^{z}
$$

## Summation

$$
(n, z, w) = (\text{level},\, \text{grade},\, \text{winding})
$$

Everything else is a choice of $c_n(z)$.

The backbone stays **nzw**.
