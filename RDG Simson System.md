# RDG Simson System

## SID Block

### Structure (S)

```math
S :=
(
R,
Cl_{read},
T3,
pi_{RDG}
)
```

where

```math
R = (Obj, Rel)
```

is the pure relational substrate,

```math
T3
```

is the minimal closed relational triad,

and

```math
pi_{RDG}
```

is the admissible relational geometry.

---

### Interaction (I)

```math
I :=
(
R_I,
Pi_{closure},
\sim_{S}
)
```

where

```math
R_I
```

is the Interaction-mode hinge,

```math
Pi_{closure}
```

is {closure} extraction,

and

```math
\sim_{S}
```

is structural incidence.

---

### Dynamics (D)

```math
D :=
(
Gamma_t,
R_{exp},
e_{RDG}
)
```

where

```math
Gamma_(t+s)
=
Gamma_t o Gamma_s
```

and

```math
R_{exp}
=
kappa_Q
o
exp(-i Omega_I t)
o
mu_Q.
```

The selected attractor satisfies

```math
R_{exp}(e_{RDG})
=
e_{RDG}.
```

---

# Relational Substrate

```math
R
=
(Obj, Rel).
```

---

# {read}ing {closure}

The {read}ing-{closure} operator satisfies:

### Extensive

```math
R
⊆
Cl_{read}(R)
```

### Idempotent

```math
Cl_{read}(Cl_{read}(R))
=
Cl_{read}(R)
```

### Monotone

```math
R1 ⊆ R2
⇒
Cl_{read}(R1)
⊆
Cl_{read}(R2)
```

---

# {closure}-Stable Geometry

A {closure}-stable geometry is a fixed point of {read}ing {closure}:

```math
G_fix
=
Cl_{read}(G_fix).
```

---

# Minimal Closed Relational Triad

```math
T3
=
Cl_{read}(A,B,C)
```

with

```math
Cl_{read}(T3)
=
T3.
```

This is the RDG analogue of the classical circumcarrier.

---

# Structural Incidence

Structural incidence replaces classical point-line incidence.

```math
A \sim_{S} B
⇔
(A,B)
∈
Cl_{read}(R).
```

Interpretation:

- Nodes = relational entities.
- Edges = {closure}-stable admissible pathways.
- Incidence = closed relational adjacency.

---

# {closure} Projection

Projection is extraction of the {closure}-stable component.

```math
Pi_{closure}(X)
=
X_closed
```

such that

```math
Cl_{read}(X_closed)
=
X_closed.
```

---

# Triad Projections

```math
pi_{RDG}
```

```math
pi_MFE
```

```math
pi_Q
```

extract the RDG, MFE, and Q components of a transformed relational state.

---

# Wavicle Decomposition

For a wavicle

```math
W = (S,P)
```

SID decomposition:

```math
SID(W)
=
(S,I,D)
```

PED decomposition:

```math
PED(W)
=
(P,E,D)
```

---

# {closure} Dynamics

### {closure} Flow

```math
Gamma_0
=
id
```

```math
Gamma_(t+s)
=
Gamma_t o Gamma_s.
```

Discrete form:

```math
Gamma_(n+1)(R)
=
Cl_{read}(Gamma_n(R)).
```

---

# Consistency Functional

{closure}-consistent states satisfy

```math
delta E[R]
=
0.
```

---

# Interaction Hinge Principle

The central hinge identity is

```math
R_I(pi_{RDG})
=
e_{RDG}.
```

Interpretation:

- `pi_{RDG}` defines admissible geometry.
- `R_I` selects the realized asymptotic state.
- `e_{RDG}` is the unique attractor within the admissible geometry.

---

# Relational Expansion Operator

```math
R_{exp}
=
kappa_Q
o
exp(-i Omega_I t)
o
mu_Q.
```

Asymptotically

```math
R_{exp}^n(x)
→
e_{RDG}.
```

---

# {closure} Curvature

{closure} events:

```math
delta_i ∈ {0,1}.
```

Curvature is the local density of unresolved {closure} events.

Conceptually:

```math
Curvature
=
{closure} Obstruction.
```

Flatness corresponds to complete {closure}:

```math
Cl_{read}(G)
=
G.
```

---

# Relational Gauss Law

```math
Q
=
Σ (SID ⊗ PED)_{closure}
∈ Z.
```

Charge is the count of {closure} events.

---

# {closure} Action

```math
Action[x]
=
∫ C_Gamma(x,x_dot) dt.
```

---

# {closure} Geodesic

```math
gamma_opt
=
arg min
∫ C_Gamma(x,x_dot) dt.
```

---

# {closure} Distance

## Variational Distance

```math
d_Gamma(A,B)
=
inf
∫ C_Gamma(x,x_dot) dt
```

over all admissible {closure} trajectories connecting
`A` and `B`.

---

## Trajectory Distance

```math
d_Gamma(x,y)
=
∫_0^∞
exp(-lambda t)
||
Gamma_t(x)-Gamma_t(y)
||
dt.
```

---

# RDG Simson System

## Carrier

The classical circumcircle corresponds to the {closure}-stable carrier of a minimal relational triad:

```math
Carrier(T3).
```

---

## {closure} Projections

For

```math
P ∈ Carrier(T3)
```

define

```math
L = Pi_AB(P)
```

```math
M = Pi_BC(P)
```

```math
N = Pi_CA(P).
```

These are {closure} projections onto the three sides of the triad.

---

## Common Incidence Dependency

The three projected points are incidence-dependent iff they al{read}y form a {closure}-stable incidence structure:

```math
Cl_{read}({L,M,N})
=
{L,M,N}.
```

This is the RDG analogue of classical collinearity.

---

# RDG Simson Theorem

```math
P ∈ Carrier(T3)
⇔
Cl_{read}({L,M,N})
=
{L,M,N}.
```

Verbal form:

> The three {closure} projections onto the sides of a minimal closed relational triad become incidence-dependent if and only if the source point is al{read}y {closure}-complete with respect to the carrier of that triad.

---

# Classical Euclidean Shadow

In a Euclidean realization phase,

```math
Cl_{read}({L,M,N})
=
{L,M,N}
```

appears as

```math
L, M, N
are collinear.
```

Thus the classical Wallace-Simson theorem is the Euclidean shadow of the RDG {closure} invariant:

```math
{closure}-complete source
⇔
{closure}-dependent projections.
```
