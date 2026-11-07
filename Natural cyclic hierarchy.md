# **Natural Cyclic Hierarchy**
The present framework introduces an invariant relational layer R[SID] that is conceptually prior to any cyclic representation. Classical representation theory begins with a group and derives representations. The present approach begins with relational content and treats groups as projection domains through which that content becomes observable. Thus cyclic groups are reinterpreted not as primary structures but as projection alphabets of varying resolution.

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

From the Relational Dynamic Geometry perspective, the relational content is primary:

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

## Appendix: Relation to Standard Representations

The mathematical structure of the cyclic groups Cn and the circle group U(1) is entirely conventional. The contribution of the present framework is not a new group-theoretic construction but a reinterpretation of these groups as projection domains acting upon an invariant relational substrate.

Let R[SID] denote the underlying relational content. Then observations arise through a projection operator ΠP parameterized by a cyclic domain P:

    ΠP : R[SID] → Observable(P)

where

    P ∈ {C1,C2,C3,...,Cn,U(1)}.

In this view, the groups Cn are not primary objects but discrete projection alphabets of increasing resolution. The distinction between point, line, triangle, square, n-gon, and circle therefore reflects changes in projection structure rather than changes in the underlying relation itself. The novelty lies in elevating relational content to the primary invariant and treating group representations as observer-dependent projections of that invariant content.

## Appendix: Useful formal and operational consequences

- **Uniform module.** A single `CyclicProjection(n)` that emits the roots $\zeta_n^k$ over $n$ logits (or complex channels) covers every finite case; the circle is recovered either by a continuous phase variable or by taking $n$ large.
- **Lattice of refinements.** Because inclusion is governed by divisibility, one can move systematically between coarser and finer discrete projections ($C_2 \subset C_4 \subset C_8 \subset \cdots$, or $C_3 \subset C_6 \subset C_12 \subset \cdots$) without leaving the same family.
- **Representation-theoretic reading.** Each projection $\Pi_{C_n}$ is equivalent to retaining only the characters of order dividing $n$. This is exactly the discrete Fourier basis on the circle, so the hierarchy is also a hierarchy of frequency cut-offs.
- **Limit statements.** Any quantity that is continuous in the phase variable and continuous under weak-* convergence of measures on the circle will have its $C_n$-projections converging to the $U(1)$-projection. This gives a precise sense in which *polygon approximates circle.*
