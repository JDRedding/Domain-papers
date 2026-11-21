# RDG Simson System

## SID Block

### Structure (S)

```math
S :=
(
R,
Cl_read,
T_3,
\pi_{RDG}
)
```

where

```math
R = (Obj, Rel)
```

is the pure relational substrate,

```math
T_3
```

is the minimal closed relational triad,

and

```math
\pi_{RDG}
```

is the admissible relational geometry.

---

### Interaction (I)

```math
I :=
(
R_I,
\Pi_{closure},
\sim_S
)
```

where

```math
R_I
```

is the Interaction-mode hinge,

```math
\Pi_{closure}
```

is closure extraction,

and

```math
\sim_S
```

is structural incidence.

---

### Dynamics (D)

```math
D :=
(
\Gamma_t,
\mathcal R,
e_{RDG}
)
```

with

```math
\Gamma_{t+s}
=
\Gamma_t \circ \Gamma_s
```

and

```math
\mathcal R
=
\kappa_Q
\circ
e^{-i\Omega_I t}
\circ
\mu_Q.
```

The attractor satisfies

```math
\mathcal R(e_{RDG})
=
e_{RDG}.
```

---

# Closure Geometry

## Relational Substrate

```math
R=(Obj,Rel)
```

---

## Closure Operator

Extensive:

```math
R \subseteq Cl_{read}(R)
```

Idempotent:

```math
Cl_{read}(Cl_{read}(R))
=
Cl_{read}(R)
```

Monotone:

```math
R_1 \subseteq R_2
\implies
Cl_{read}(R_1)
\subseteq
Cl_{read}(R_2)
```

---

## Closure-Stable Geometry

```math
G^*
=
Cl_{read}(G^*)
```

A closure-stable RD* is a fixed point of the reading*closure.

---

## Minimal Closed T*iad

```math
*_3
=
Cl_{read}(A,B,C)
```

*ith

```math
Cl_{read}(T_3)
*
T_3.
```

---

# Structural Incid*nce

RDG replaces*classical incidence by structural *ncidence.

```math
A \sim_S B
\iff*(A,B)
\in
Cl_{read}(R).
```

Inter*ret*tion:

- Nodes = relational entiti*s.
- Edges = admissible closure pa*hways.
- Incidence = closed relati*nal adjacency.

---

# Closure Pro*ection

Projection is extraction o* the already-closed component.

``*math
\Pi_{closure}(X)
=
X_{closed}*```

such that

```math
Cl_{read}(*_{closed})
=
X_{closed}.
```

---
*# Triad Projections

```math
\pi_{*DG},
\qquad
\pi_{MFE},
\qquad
\pi_*.
```

---

# Wavicle Decompositio*

For a wavicle

```math
W=(S,P)
`*`

SID projection:

```math
SID(W)*=
(S,I,D)
```

PED projection:

```math
PED(W)
=
(P,E,D).
```

---

# Closure Dynamics

## Closure Flow

Continuous:

```math
\Gamma_0=id
```

```math
\Gamma_{t+s}
=
\Gamma_t \circ \Gamma_s.
```

Discrete:

```math
\Gamma_{n+1}(R)
=
Cl_{read}(\Gamma_n(R)).
```

---

## Consistency Functional

```math
\delta \mathcal E[R]
=
0.
```

---

# Hinge Principle

The central hinge identity is

```math
R_I(\pi_{RDG})
=
e_{RDG}.
```

Interpretation:

- Admissible geometry = \(\pi_{RDG}\)
- Interaction-mode selects realization = \(e_{RDG}\)

---

## Relational Expansion

```math
\mathcal R
=
\kappa_Q
\circ
e^{-i\Omega_I t}
\circ
\mu_Q.
```

Asymptotically

```math
\mathcal R^n(x)
\rightarrow
e_{RDG}.
```

---

# Closure Curvature

Discrete closure events:

```math
\delta_i \in \{0,1\}.
```

Closure curvature density:

```math
\kappa_\Gamma
\sim
\rho(\delta_i)
```

or

```math
\kappa_\Gamma
\propto
\frac{1}{V}
\sum_{i\in V}
\delta_i.
```

Flatness:

```math
\kappa_\Gamma = 0
\iff
Cl_{read}(G)=G.
```

Interpretation:

- Curvature = unresolved closure.
- Flatness = closure completeness.

---

# Relational Gauss Law

```math
Q
=
\sum
(SID \otimes PED)_{closure}
\in
\mathbb Z.
```

Charge is the count of closure events.

---

# Closure Action

```math
S[x]
=
\int
C_\Gamma(x,\dot x)\,dt.
```

---

## Closure Geodesic

```math
\gamma^*
=
\arg\min
\int
C_\Gamma(x,\dot x)\,dt.
```

---

# Closure Distance

## Variational Distance

```math
d_\Gamma(A,B)
=
\inf_{x(0)=A}^{x(T)=B}
\int_0^T
C_\Gamma(x,\dot x)\,dt.
```

---

## Trajectory Distance

```math
d_\Gamma(x,y)
=
\int_0^\infty
e^{-\lambda t}
\|
\Gamma_t(x)-\Gamma_t(y)
\|
\,dt.
```

---

# RDG Simson System

## Carrier

The classical circumcircle corresponds to the closure-stable carrier of a minimal relational triad.

```math
Carrier(T_3).
```

---

## Closure Projections

For

```math
P \in Carrier(T_3)
```

define

```math
L=\Pi_{AB}(P)
```

```math
M=\Pi_{BC}(P)
```

```math
N=\Pi_{CA}(P).
```

---

## Common Incidence Dependency

The RDG analogue of collinearity is closure dependence:

```math
Cl_{read}
(
\{L,M,N\}
)
=
\{L,M,N\}.
```

The projected points form a closure-stable incidence structure.

---

## RDG Simson Theorem

```math
P
\in
Carrier(T_3)
\iff
Cl_{read}
(
\{L,M,N\}
)
=
\{L,M,N\}.
```

---

## Classical Shadow

In a Euclidean realization phase:

```math
Cl_{read}
(
\{L,M,N\}
)
=
\{L,M,N\}
```

appears as

```math
L,M,N
\text{ are collinear}.
```

Thus the classical Wallace-Simson theorem is the Euclidean projection of the RDG closure invariant:

```math
Closure-complete source
\iff
Closure-dependent projections.
```
