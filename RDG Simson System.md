# RDG Simson System

## SID Block

### Structure (S)

```math
S :=
(
R,
Cl_read,
T3,
pi_RDG
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
pi_RDG
```

is the admissible relational geometry.

---

### Interaction (I)

```math
I :=
(
R_I,
Pi_closure,
~_S
)
```

where

```math
R_I
```

is the Interaction-mode hinge,

```math
Pi_closure
```

is closure extraction,

and

```math
~_S
```

is structural incidence.

---

### Dynamics (D)

```math
D :=
(
Gamma_t,
R_exp,
e_RDG
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
R_exp
=
kappa_Q
o
exp(-i Omega_I t)
o
mu_Q.
```

The selected attractor satisfies

```math
R_exp(e_RDG)
=
e_RDG.
```

---

# Relational Substrate

```math
R
=
(Obj, Rel).
```

---

# Reading Closure

The reading-closure operator satisfies:

### Extensive

```math
R
⊆
Cl_read(R)
```

### Idempotent

```math
Cl_read(Cl_read(R))
=
Cl_read(R)
```

### Monotone

```math
R1 ⊆ R2
⇒
Cl_read(R1)
⊆
Cl_read(R2)
```

---

# Closure-Stable Geometry

A closure-stable geometry is a fixed point of reading closure:

```math
G_fix
=
Cl_read(G_fix).
```

---

# Minimal Closed Relational Triad

```math
T3
=
Cl_read(A,B,C)
```

with

```math
Cl_read(T3)
=
T3.
```

This is the RDG analogue of the classical circumcarrier.

---

# Structural Incidence

Structural incidence replaces classical point-line incidence.

```math
A ~_S B
⇔
(A,B)
∈
Cl_read(R).
```

Interpretation:

- Nodes = relational entities.
- Edges = closure-stable admissible pathways.
- Incidence = closed relational adjacency.

---

# Closure Projection

Projection is extraction of the closure-stable component.

```math
Pi_closure(X)
=
X_closed
```

such that

```math
Cl_read(X_closed)
=
X_closed.
```

---

# Triad Projections

```math
pi_RDG
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

# Closure Dynamics

### Closure Flow

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
Cl_read(Gamma_n(R)).
```

---

# Consistency Functional

Closure-consistent states satisfy

```math
delta E[R]
=
0.
```

---

# Interaction Hinge Principle

The central hinge identity is

```math
R_I(pi_RDG)
=
e_RDG.
```

Interpretation:

- `pi_RDG` defines admissible geometry.
- `R_I` selects the realized asymptotic state.
- `e_RDG` is the unique attractor within the admissible geometry.

---

# Relational Expansion Operator

```math
R_exp
=
kappa_Q
o
exp(-i Omega_I t)
o
mu_Q.
```

Asymptotically

```math
R_exp^n(x)
→
e_RDG.
```

---

# Closure Curvature

Closure events:

```math
delta_i ∈ {0,1}.
```

Curvature is the local density of unresolved closure events.

Conceptually:

```math
Curvature
=
Closure Obstruction.
```

Flatness corresponds to complete closure:

```math
Cl_read(G)
=
G.
```

---

# Relational Gauss Law

```math
Q
=
Σ (SID ⊗ PED)_closure
∈ Z.
```

Charge is the count of closure events.

---

# Closure Action

```math
Action[x]
=
∫ C_Gamma(x,x_dot) dt.
```

---

# Closure Geodesic

```math
gamma_opt
=
arg min
∫ C_Gamma(x,x_dot) dt.
```

---

# Closure Distance

## Variational Distance

```math
d_Gamma(A,B)
=
inf
∫ C_Gamma(x,x_dot) dt
```

over all admissible closure trajectories connecting
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

The classical circumcircle corresponds to the closure-stable carrier of a minimal relational triad:

```math
Carrier(T3).
```

---

## Closure Projections

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

These are closure projections onto the three sides of the triad.

---

## Common Incidence Dependency

The three projected points are incidence-dependent iff they already form a closure-stable incidence structure:

```math
Cl_read({L,M,N})
=
{L,M,N}.
```

This is the RDG analogue of classical collinearity.

---

# RDG Simson Theorem

```math
P ∈ Carrier(T3)
⇔
Cl_read({L,M,N})
=
{L,M,N}.
```

Verbal form:

> The three closure projections onto the sides of a minimal closed relational triad become incidence-dependent if and only if the source point is already closure-complete with respect to the carrier of that triad.

---

# Classical Euclidean Shadow

In a Euclidean realization phase,

```math
Cl_read({L,M,N})
=
{L,M,N}
```

appears as

```math
L, M, N
are collinear.
```

Thus the classical Wallace-Simson theorem is the Euclidean shadow of the RDG closure invariant:

```math
Closure-complete source
⇔
Closure-dependent projections.
```
