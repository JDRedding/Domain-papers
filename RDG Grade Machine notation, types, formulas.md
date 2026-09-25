# RDG Grade Machine notation, types, formulas  

## Types and variables

| Symbol | Type | Meaning |
|--------|------|---------|
| $n$ | $n\in\mathbb{N}=\{1,2,3,\ldots\}$ | level / modulus / period / cycle length |
| $w$ | $w\in W=\{0,1,2,\ldots\}$ | unsigned winding / transport / twist index |
| $z$ | $z\in\mathbb{Z}=\{\ldots,-2,-1,0,1,2,\ldots\}$ | signed grade |
| $q$ | formal variable | series parameter |
| $c_n^{\mathrm{grade}}$ | grade-indexed coefficient law | map $(n,z)\mapsto$ scalar, $z\ge-1$ |
| $c_n^{\mathrm{wind}}$ | winding-indexed coefficient law | map $(n,w)\mapsto$ scalar, $w\ge 0$ |
| $\tau_k$ | twist operator | $k\in W$ |
| $T_n$, $T_n^{(k)}$ | formal series | untwisted / twisted generating functions |
| $\chi$ | character / weight | $\chi:W\times W\to\mathbb{C}$ |
| $\chi_k$ | slice of $\chi$ | $\chi_k(w)=\chi(k,w)$ |
| $F$ | transport / replication map | extra structure: later windings from early ones |
| $f$ | glue | produces coefficients from mechanical fields |
| $p,P,F$ | mechanical fields | inputs to glue $f$ (do not add a second grade axis) |
| $g$ | group element / class label | names a particular law $c$, not a coordinate |
| $w_0$ | tail gauge | first occupied winding of a series (with fallback) |

Scalars of coefficients are taken in $\mathbb{C}$ unless a narrower ring is chosen.

**Split of $c_n$** (required; no silent overload):

$$
c_n^{\mathrm{wind}}(w)\;:=\;c_n^{\mathrm{grade}}(w-1),\qquad w\ge 0,
$$

$$
c_n^{\mathrm{grade}}(z)\;:=\;c_n^{\mathrm{wind}}(z+1),\qquad z\ge-1.
$$

When a formula is written with a single $c_n$, the index type is the one of the argument: $c_n(z)$ means grade-indexed, $c_n(w)$ means winding-indexed.

---

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

---

## Support

$$
c_n^{\mathrm{grade}}(z)=0\qquad\text{for all }z<-1.
$$

Equivalently, $c_n^{\mathrm{wind}}$ is defined only for $w\ge 0$.

---

## Coefficient law

Generic law:

$$
c^{\mathrm{grade}}:\mathbb{N}\times\mathbb{Z}\to\mathbb{C},
\qquad
c_n^{\mathrm{grade}}(z)\text{ arbitrary for }z\ge-1.
$$

On the winding chart:

$$
c_n^{\mathrm{wind}}(w):=c_n^{\mathrm{grade}}(w-1),\qquad w\ge 0.
$$

Two empty shapes for the backbone law $c$:

1. **Free grade**

$$
c_n^{\mathrm{grade}}(z)\text{ free on }z\ge-1.
$$

2. **Periodic in grades** (optional, usually rejected)

$$
c_n^{\mathrm{grade}}(z+n)=c_n^{\mathrm{grade}}(z).
$$

$n$ is the modulus of the series, not of the grades.

**Replicability is extra structure, not part of the backbone.**  
A series may additionally carry a transport map

$$
c_n^{\mathrm{wind}}(w)=F\bigl(c_n^{\mathrm{wind}}(0),\ldots,c_n^{\mathrm{wind}}(k);\,w\bigr),\qquad w\ge 0.
$$

$F$ is a function of winding, not a second grade. Absence of $F$ is allowed; the machine $(n,c,\{\tau_k\})$ does not require it.

---

## Glue to mechanical fields

Coefficients are not an independent geometric axis. They are glued from mechanical fields by a map $f$:

$$
c_n^{\mathrm{grade}}(z)=f\bigl(p(w),P(w),F(w)\bigr),\qquad w=z+1.
$$

Equivalently

$$
c_n^{\mathrm{wind}}(w)=f\bigl(p(w),P(w),F(w)\bigr).
$$

Mirror rule: a geometric/mechanical involution $M$ acts on coefficients **only through** $f$:

$$
M(c_n)=c_n\circ M\quad\text{only through }f.
$$

That is: $M$ moves the fields $(p,P,F)$; then $f$ recomputes $c$. There is no independent action of $M$ on the grade axis.

---

## Series

Winding form:

$$
T_n(q)=\sum_{w\ge 0}c_n^{\mathrm{wind}}(w)\,q^{w-1}.
$$

Grade form:

$$
T_n(q)=\sum_{z\ge-1}c_n^{\mathrm{grade}}(z)\,q^{z}.
$$

These are identical under $z=w-1$.

---

## What the variables do

$$
\begin{align*}
n &\text{ does not run the grade axis;}\\
n &\text{ is the modulus the series lives over;}\\
z &\text{ is the signed grade;}\\
w &\text{ is rest-first transport: }w=0\text{ rest, }w\ge 1\text{ motion.}
\end{align*}
$$

---

## Tail gauge (with fallback)

Gauged tail:

$$
\tilde c_n^{\mathrm{wind}}(w)=c_n^{\mathrm{wind}}(w+w_0).
$$

Gauge index $w_0$ with fallback (zero series, or complex coefficients with no order):

$$
w_0=
\begin{cases}
0,& c_n^{\mathrm{wind}}(w)=0\text{ for all }w,
\min\{w:\ |c_n^{\mathrm{wind}}(w)|>\varepsilon\},&\text{otherwise} \end{cases}
$$

$\varepsilon\ge 0$ is a numerical cutoff ($\varepsilon=0$ in exact arithmetic). The gauge does not change the chart $z=w-1$; it only recenters the winding origin of a given series.

---

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
T_n^{(k)}(q)=\sum_{w\ge 0}c_n^{(k),\mathrm{wind}}(w)\,q^{w-1}
=\sum_{z\ge-1}c_n^{(k),\mathrm{grade}}(z)\,q^{z}.
$$

### Character declaration (before Law B)

$$
\chi:W\times W\to\mathbb{C},\qquad \chi_k(w)=\chi(k,w).
$$

### Generic twist laws

**A. Relabel winding** (K-operator)

$$
c_n^{(k),\mathrm{wind}}(w)=c_n^{\mathrm{wind}}(w+k).
$$

**B. Character weight, same grades** (K-operator)

$$
c_n^{(k),\mathrm{wind}}(w)=\chi_k(w)\,c_n^{\mathrm{wind}}(w).
$$

**C. Cycle level against winding** — **named non-operator, excluded**

$$
c_n^{(k),\mathrm{wind}}(w)=c_n^{\mathrm{wind}}\bigl((w+k)\bmod n\bigr).
$$

Law C is **not** a K-operator and is **not** used in RDG–GM. It is present only for exclusion.

Default RDG twists are A or B.  
$k=0$ is the identity series; $k\ge 1$ is wound / twisted.


```
A  relabel winding          = K-operator
B  character weight         = not K unless χ_k ≡ 1
C  cycle mod n              = named non-operator (excluded)
```

---

## Minimal object

$$
\bigl(n,\,c,\,\{\tau_k\}_{k\in W}\bigr)
$$

produces the family $\{T_n^{(k)}\}_{k\in W}$.

Replicability $F$, glue $f$, and tail gauge $w_0$ are optional extra structure on this object.

---

## Backbone

$$
(n,z,w)=(\text{level},\,\text{grade},\,\text{winding}).
$$

Everything else is a choice of $c_n^{\mathrm{grade}}(z)$, possibly glued by $f$.

---

# Special coefficient laws

## Hinge case: Klein $j$

Level one, monic pole, classical constant term:

$$
n=1,\qquad
c_1^{\mathrm{grade}}(-1)=1,\qquad
c_1^{\mathrm{grade}}(0)=744,
$$

$$
j(\tau)=q^{-1}+744+196884q+21493760q^2+\cdots
=\sum_{z\ge-1}c_1^{\mathrm{grade}}(z)\,q^{z}.
$$

Normalized hinge (moonshine module convention):

$$
c_1^{\mathrm{grade}}(-1)=1,\qquad c_1^{\mathrm{grade}}(0)=0,
$$

$$
j(\tau)-744=\sum_{z\ge-1}c_1^{\mathrm{norm},\mathrm{grade}}(z)\,q^{z}.
$$

## Hauptmodul / McKay–Thompson

For a genus-zero class $g$ at level $n=n(g)$:

$$
T_g(q)=T_n(q)=\sum_{z\ge-1}c_n^{\mathrm{grade}}(z)\,q^{z},
$$

with

$$
c_n^{\mathrm{grade}}(-1)=1
$$

and $c_n^{\mathrm{grade}}(z)$ fixed by the corresponding genus-zero function field (or by a trace law).

Trace realization:

$$
c_n^{\mathrm{grade}}(z)=\mathrm{Tr}\bigl(g\mid V_{z+1}\bigr),\qquad z\ge-1,
$$

where $V_{\bullet}$ is the graded module and the shift $z+1$ matches $w=z+1$.

## Replicable / transport law (extra structure)

A series is replicable when later winding coefficients are determined by a fixed map $F$:

$$
c_n^{\mathrm{wind}}(w)=F\bigl(c_n^{\mathrm{wind}}(0),\ldots,c_n^{\mathrm{wind}}(k);\,w\bigr).
$$

This is extra structure on $c$, not a backbone coordinate. It generalizes $j$ without adding axes.

## Mock law

A mock modular form contributes only its holomorphic coefficients to the machine:

$$
T_n(q)=\sum_{z\ge-1}c_n^{\mathrm{hol},\mathrm{grade}}(z)\,q^{z}.
$$

The non-holomorphic completion / shadow is extra analytic data, not a second $z$.

## Character-twisted Hauptmodul

Law B on a Hauptmodul:

$$
T_n^{(k)}(q)=\sum_{w\ge 0}\chi_k(w)\,c_n^{\mathrm{wind}}(w)\,q^{w-1}.
$$

Shifted Hauptmodul, law A:

$$
T_n^{(k)}(q)=\sum_{w\ge 0}c_n^{\mathrm{wind}}(w+k)\,q^{w-1}
=q^{-k}\sum_{u\ge k}c_n^{\mathrm{wind}}(u)\,q^{u-1}.
$$

---

# Dictionary equations

Literature name $\longmapsto$ coefficient law only:

$$
\begin{align*}
j &\longmapsto c_1,\\
j-744 &\longmapsto c_1\text{ with hinge }0,\\
T_g &\longmapsto c_{n(g)},\\
\text{replicable} &\longmapsto c\text{ generated by extra }F,\\
\text{mock} &\longmapsto c^{\mathrm{hol}}.
\end{align*}
$$

In all cases

$$
T_n(q)=\sum_{z\ge-1}c_n^{\mathrm{grade}}(z)\,q^{z}.
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
c_n^{\mathrm{grade}}(z+n)=c_n^{\mathrm{grade}}(z)
$$

is not the default and is usually rejected for the grade machine.

Law C is excluded: not a K-operator, not used in RDG–GM.

---
