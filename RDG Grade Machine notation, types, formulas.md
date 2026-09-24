# RDG Grade Machine notation, types, formulas

## Types and variables

| Symbol | Type | Meaning |
|--------|------|---------|
| $n$ | $n\in\mathbb{N}=\{1,2,3,\ldots\}$ | level / modulus / period / cycle length |
| $w$ | $w\in W=\{0,1,2,\ldots\}$ | unsigned winding / transport / twist index |
| $z$ | $z\in\mathbb{Z}=\{\ldots,-2,-1,0,1,2,\ldots\}$ | signed grade |
| $q$ | formal variable | series parameter |
| $c$ | coefficient law | map sending $(n,z)$ or $(n,w)$ to a scalar |
| $\tau_k$ | twist operator | $k\in W$ |
| $T_n$, $T_n^{(k)}$ | formal series | untwisted / twisted generating functions |
| $\chi_k$ | character / weight | $\chi_k:W\to\mathbb{C}$ |
| $F$ | transport / replication map | produces later coefficients from early ones |
| $g$ | group element / class label | names a particular law $c$, not a coordinate |

Scalars of coefficients are taken in $\mathbb{C}$ unless a narrower ring is chosen.

## Fundamental chart

One chart only:

$$
z=w-1.
$$

Equivalently

$$
w=z+1.
$$

Offset:

$$
\begin{align*}
w=0 &\Longleftrightarrow z=-1 &&\text{vacuum / pole}\\
w=1 &\Longleftrightarrow z=0 &&\text{hinge / constant term}\\
w\ge 2 &\Longleftrightarrow z\ge 1 &&\text{occupied grades}.
\end{align*}
$$

Do not introduce a second grade axis. If a twist index is needed, write

$$
(w_{\mathrm{grade}},w_{\mathrm{twist}})
$$

and keep

$$
z=w_{\mathrm{grade}}-1.
$$

## Support

$$
c_n(z)=0\qquad\text{for all }z<-1.
$$

Equivalently, $c_n(w)$ is defined only for $w\ge 0$.

## Coefficient law

Generic law:

$$
c:\mathbb{N}\times\mathbb{Z}\to\mathbb{C},
\qquad
c_n(z)\text{ arbitrary for }z\ge-1.
$$

On the winding chart:

$$
c_n(w):=c_n(w-1),\qquad w\ge 0.
$$

Three empty shapes for $c$:

1. **Free grade**

$$
c_n(z)\text{ free on }z\ge-1.
$$

2. **Periodic in grades** (optional, usually rejected)

$$
c_n(z+n)=c_n(z).
$$

$n$ is the modulus of the series, not of the grades.

3. **Replication / transport**

$$
c_n(w)=F\bigl(c_n(0),\ldots,c_n(k);\,w\bigr),\qquad w\ge 0.
$$

   $F$ is a function of winding, not a second grade.

## Series

Winding form:

$$
T_n(q)=\sum_{w\ge 0}c_n(w)\,q^{w-1}.
$$

Grade form:

$$
T_n(q)=\sum_{z\ge-1}c_n(z)\,q^{z}.
$$

These are identical under $z=w-1$.

## What the variables do

$$
\begin{align*}
n &\text{ does not run the grade axis;}\\
n &\text{ is the modulus the series lives over;}\\
z &\text{ is the signed grade;}\\
w &\text{ is rest-first transport: }w=0\text{ rest, }w\ge 1\text{ motion.}
\end{align*}
$$

## Twists

$$
\tau_k:T_n\mapsto T_n^{(k)},\qquad k\in W.
$$

Rules:

$$
\begin{align*}
\tau_0&=\mathrm{id},\\
\tau_k &\text{ does not change }n,\\
\tau_k &\text{ does not change the chart }z=w-1,\\
\tau_k &\text{ does change the coefficient law.}
\end{align*}
$$

Twisted series:

$$
T_n^{(k)}(q)=\sum_{w\ge 0}c_n^{(k)}(w)\,q^{w-1}
=\sum_{z\ge-1}c_n^{(k)}(z)\,q^{z}.
$$

### Generic twist laws

**A. Relabel winding**

$$
c_n^{(k)}(w)=c_n(w+k).
$$

**B. Character weight, same grades**

$$
c_n^{(k)}(w)=\chi_k(w)\,c_n(w),\qquad\chi_k:W\to\mathbb{C}.
$$

**C. Cycle level against winding** (usually rejected)

$$
c_n^{(k)}(w)=c_n\bigl((w+k)\bmod n\bigr).
$$

Default RDG twists are A or B.  
$k=0$ is the identity series; $k\ge 1$ is wound / twisted.

## Minimal object

$$
\bigl(n,\,c,\,\{\tau_k\}_{k\in W}\bigr)
$$

produces the family $\{T_n^{(k)}\}_{k\in W}$.

## Backbone

$$
(n,z,w)=(\text{level},\,\text{grade},\,\text{winding}).
$$

Everything else is a choice of $c_n(z)$.

---

# Special coefficient laws

## Hinge case: Klein $j$

Level one, monic pole, classical constant term:

$$
n=1,\qquad
c_1(-1)=1,\qquad
c_1(0)=744,
$$

$$
j(\tau)=q^{-1}+744+196884q+21493760q^2+\cdots
=\sum_{z\ge-1}c_1(z)\,q^{z}.
$$

Normalized hinge (moonshine module convention):

$$
c_1(-1)=1,\qquad c_1(0)=0,
$$

$$
j(\tau)-744=\sum_{z\ge-1}c_1^{\mathrm{norm}}(z)\,q^{z}.
$$

## Hauptmodul / McKay–Thompson

For a genus-zero class $g$ at level $n=n(g)$:

$$
T_g(q)=T_n(q)=\sum_{z\ge-1}c_n(z)\,q^{z},
$$

with

$$
c_n(-1)=1
$$

and $c_n(z)$ fixed by the corresponding genus-zero function field (or by a trace law).

Trace realization:

$$
c_n(z)=\mathrm{Tr}\bigl(g\mid V_{z+1}\bigr),\qquad z\ge-1,
$$

where $V_{\bullet}$ is the graded module and the shift $z+1$ matches $w=z+1$.

## Replicable / transport law

A series is replicable when later winding coefficients are determined by a fixed map $F$:

$$
c_n(w)=F\bigl(c_n(0),\ldots,c_n(k);\,w\bigr).
$$

This is shape 3 above. It generalizes $j$ without adding coordinates.

## Mock law

A mock modular form contributes only its holomorphic coefficients to the machine:

$$
T_n(q)=\sum_{z\ge-1}c_n^{\mathrm{hol}}(z)\,q^{z}.
$$

The non-holomorphic completion / shadow is extra analytic data, not a second $z$.

## Character-twisted Hauptmodul

Law B on a Hauptmodul:

$$
T_n^{(k)}(q)=\sum_{w\ge 0}\chi_k(w)\,c_n(w)\,q^{w-1}.
$$

Shifted Hauptmodul, law A:

$$
T_n^{(k)}(q)=\sum_{w\ge 0}c_n(w+k)\,q^{w-1}
=q^{-k}\sum_{u\ge k}c_n(u)\,q^{u-1}.
$$

---

# Dictionary equations

Literature name $\longmapsto$ coefficient law only:

$$
\begin{align\*}
j &\longmapsto c_1,\\
j-744 &\longmapsto c_1\text{ with hinge }0,\\
T_g &\longmapsto c_{n(g)},\\
\text{replicable} &\longmapsto c\text{ generated by }F,\\
\text{mock} &\longmapsto c^{\mathrm{hol}}.
\end{align*}
$$

In all cases

$$
T_n(q)=\sum_{z\ge-1}c_n(z)\,q^{z}.
$$

## Rejected identifications

$$
\begin{align*}
j&\neq n,\\
j&\neq z,\\
j&\neq w,\\
\text{Jacobi index}&\neq z.
\end{align*}
$$

Periodic-grade law

$$
c_n(z+n)=c_n(z)
$$

is not the default and is usually rejected for the grade machine.
