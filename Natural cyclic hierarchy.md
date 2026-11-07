# **Natural Cyclic Hierarchy**

The same projection operator accepts any of these generators. A single `CyclicProjection(n)` module that emits the roots of unity $\zeta_n^k$ over $n$ logits covers every finite case, while the circle remains the continuous limit. This provides a uniform experimental axis ranging from the coarsest discrete projection (a point) to the continuous circle.

$$
\begin{aligned}
\text{Point}    &\quad p = 1                          && C_1 = \{1\} \\
\text{Line}     &\quad p = (-1)^k,\quad k\in\{0,1\}   && C_2 = \{1,-1\} \\
\text{Triangle} &\quad p = \omega^k,\quad k\in\{0,1,2\} && C_3 = \{1,\omega,\omega^2\} \\
\text{Square}   &\quad p = i^k,\quad k\in\{0,1,2,3\}   && C_4 = \{1,i,-1,-i\} \\
\text{n-gon}    &\quad p = \zeta_n^k,\quad k=0,\ldots,n-1 && C_n = \langle\zeta_n\rangle \\
\text{Circle}   &\quad p = e^{i\theta},\quad\theta\in\mathbb{R} && U(1)
\end{aligned}
$$

where

$$
\zeta_n = e^{2\pi i / n}
$$

is the primitive $n$ -th root of unity.

The finite cyclic groups form a hierarchy of projection domains inside the continuous circle group $U(1)$. More precisely,

$$
C_m \subseteq C_n \quad\Longleftrightarrow\quad m \mid n,
$$

and

$$
C_n \subset U(1)
$$

for every finite $n$. Thus the cyclic projections form a lattice of finite resolutions converging toward the continuous projection $U(1)$.

In SID language the relational content remains unchanged. Structure $S$, Interaction $I$, and Dynamics $D$ are invariant; only the projection domain $P$ changes:

$$
\begin{aligned}
P_{\text{point}}    &= C_1, \\
P_{\text{line}}     &= C_2, \\
P_{\text{triangle}} &= C_3, \\
P_{\text{square}}   &= C_4, \\
P_{n\text{-gon}}    &= C_n, \\
P_{\text{circle}}   &= U(1).
\end{aligned}
$$

Equivalently:

```
SID = invariant relational content

Projection domain:
    P ∈ {C1, C2, C3, C4, ..., Cn, U(1)}
```

or

```
S = invariant relational structure
I = invariant relational interaction
D = invariant relational dynamics

P = projection domain
```

so that

```
Point      : P = C1
Line       : P = C2
Triangle   : P = C3
Square     : P = C4
n-gon      : P = Cn
Circle     : P = U(1)
```

From the Relational Dynamic Geometryperspective the relational content is primary:

```
R[SID]
```

while the observable forms are projection-dependent:

```
R[SID][C1]
R[SID][C2]
R[SID][C3]
R[SID][C4]
...
R[SID][Cn]
R[SID][U(1)]
```

The distinction between point, line, triangle, square, and circle is therefore not a change in the underlying relation. It is a change in the projection alphabet available to the observer.

A compact formulation is:

```
R[SID]

Projection:
    Π_P : R[SID] → Projection(P)

P ∈ {C1, C2, C3, ..., Cn, U(1)}

Cn = <ζn>
ζn = exp(2πi/n)

Continuous limit:
    lim(n→∞) Π_Cn(R[SID])
      = Π_U(1)(R[SID])
```

where the SID remains fixed and only the projection domain changes. The cyclic groups then form a hierarchy of projection resolutions, with $U(1)$ serving as the continuous limiting projection.
