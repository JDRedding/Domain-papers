# RDG Simson System

## SID Block

### Structure (S)

$$
S :=
\bigl(
R,
\mathrm{Cl}_{\mathrm{read}},
T_3,
\pi_{\mathrm{RDG}}
\bigr)
$$

where

$$
R = (\mathrm{Obj}, \mathrm{Rel})
$$

is the pure relational substrate,

$$
T_3
$$

is the minimal closed relational triad,

and

$$
\pi_{\mathrm{RDG}}
$$

is the admissible relational geometry.

---

### Interaction (I)

$$
I :=
\bigl(
R_I,
\Pi_{\mathrm{closure}},
\sim_S
\bigr)
$$

where

$$
R_I
$$

is the Interaction-mode hinge,

$$
\Pi_{\mathrm{closure}}
$$

is closure extraction,

and

$$
\sim_S
$$

is structural incidence.

---

### Dynamics (D)

$$
D :=
\bigl(
\Gamma_t,
R_{\mathrm{exp}},
e_{\mathrm{RDG}}
\bigr)
$$

where

$$
\Gamma_{t+s} =
\Gamma_t \circ \Gamma_s
$$

and

$$
R_{\mathrm{exp}} =
\kappa_Q
\circ
\exp(-i \Omega_I t)
\circ
\mu_Q.
$$

The selected attractor satisfies

$$
R_{\mathrm{exp}}(e_{\mathrm{RDG}}) =
e_{\mathrm{RDG}}.
$$

---

# Relational Substrate

$$
R = (\mathrm{Obj}, \mathrm{Rel}).
$$

---

# Reading Closure

The reading-closure operator satisfies:

### Extensive

$$
R \subseteq \mathrm{Cl}_{\mathrm{read}}(R)
$$

### Idempotent

$$
\mathrm{Cl}_{\mathrm{read}}(\mathrm{Cl}_{\mathrm{read}}(R)) =
\mathrm{Cl}_{\mathrm{read}}(R)
$$

### Monotone

$$
R_1 \subseteq R_2
\implies
\mathrm{Cl}_{\mathrm{read}}(R_1)
\subseteq
\mathrm{Cl}_{\mathrm{read}}(R_2)
$$

---

# Closure-Stable Geometry

A closure-stable geometry is a fixed point of reading closure:

$$
G_{\mathrm{fix}} = \mathrm{Cl}_{\mathrm{read}}(G_{\mathrm{fix}}).
$$

---

# Minimal Closed Relational Triad

$$
T_3 = \mathrm{Cl}_{\mathrm{read}}(A, B, C)
$$

with

$$
\mathrm{Cl}_{\mathrm{read}}(T_3) = T_3.
$$

This is the RDG analogue of the classical circumcarrier.

---

# Structural Incidence

Structural incidence replaces classical point–line incidence.

$$
A \sim_S B
\iff
(A, B) \in \mathrm{Cl}_{\mathrm{read}}(R).
$$

Interpretation:

- Nodes = relational entities.
- Edges = closure-stable admissible pathways.
- Incidence = closed relational adjacency.

---

# Closure Projection

Projection is extraction of the closure-stable component.

$$
\Pi_{\mathrm{closure}}(X) = X_{\mathrm{closed}}
$$

such that

$$
\mathrm{Cl}_{\mathrm{read}}(X_{\mathrm{closed}}) = X_{\mathrm{closed}}.
$$

---

# Triad Projections

$$
\pi_{\mathrm{RDG}},\quad
\pi_{\mathrm{MFE}},\quad
\pi_Q
$$

extract the RDG, MFE, and Q components of a transformed relational state.

---

# Wavicle Decomposition

For a wavicle

$$
W = (S, P)
$$

SID decomposition:

$$
\mathrm{SID}(W) = (S, I, D)
$$

PED decomposition:

$$
\mathrm{PED}(W) = (P, E, D)
$$

---

# Closure Dynamics

### Closure Flow

$$
\Gamma_0 = \mathrm{id}
$$

$$
\Gamma_{t+s} = \Gamma_t \circ \Gamma_s.
$$

Discrete form:

$$
\Gamma_{n+1}(R) = \mathrm{Cl}_{\mathrm{read}}(\Gamma_n(R)).
$$

---

# Consistency Functional

Closure-consistent states satisfy

$$
\delta E[R] = 0.
$$

---

# Interaction Hinge Principle

The central hinge identity is

$$
R_I(\pi_{\mathrm{RDG}}) = e_{\mathrm{RDG}}.
$$

Interpretation:

- $\pi_{\mathrm{RDG}}$ defines the admissible geometry.
- $R_I$ selects the realized asymptotic state.
- $e_{\mathrm{RDG}}$ is the unique attractor within the admissible geometry.

---

# Relational Expansion Operator

$$
R_{\mathrm{exp}} =
\kappa_Q
\circ
\exp(-i \Omega_I t)
\circ
\mu_Q.
$$

Asymptotically

$$
R_{\mathrm{exp}}^n(x) \to e_{\mathrm{RDG}}.
$$

---

# Closure Curvature

Closure events:

$$
\delta_i \in \{0, 1\}.
$$

Curvature is the local density of unresolved closure events.

Conceptually:

$$
\mathrm{Curvature} = \{\mathrm{closure}\} \text{ obstruction}.
$$

Flatness corresponds to complete closure:

$$
\mathrm{Cl}_{\mathrm{read}}(G) = G.
$$

---

# Relational Gauss Law

$$
Q = \sum (\mathrm{SID} \otimes \mathrm{PED})_{\mathrm{closure}} \in \mathbb{Z}.
$$

Charge is the count of closure events.

---

# Closure Action

$$
\mathrm{Action}[x] = \int C_\Gamma(x, \dot{x})\, dt.
$$

---

# Closure Geodesic

$$
\gamma_{\mathrm{opt}} =
\arg\min
\int C_\Gamma(x, \dot{x})\, dt.
$$

---

# Closure Distance

## Variational Distance

$$
d_\Gamma(A, B) =
\inf
\int C_\Gamma(x, \dot{x})\, dt
$$

over all admissible closure trajectories connecting $A$ and $B$.

---

## Trajectory Distance

$$
d_\Gamma(x, y) =
\int_0^\infty
\exp(-\lambda t)
\bigl\|
\Gamma_t(x) - \Gamma_t(y)
\bigr\|
\, dt.
$$

---

# RDG Simson System

## Carrier

The classical circumcircle corresponds to the closure-stable carrier of a minimal relational triad:

$$
\mathrm{Carrier}(T_3).
$$

---

## Closure Projections

For

$$
P \in \mathrm{Carrier}(T_3)
$$

define

$$
L = \Pi_{AB}(P),
\quad
M = \Pi_{BC}(P),
\quad
N = \Pi_{CA}(P).
$$

These are the closure projections onto the three sides of the triad.

---

## Common Incidence Dependency

The three projected points are incidence-dependent if and only if they already form a closure-stable incidence structure:

$$
\mathrm{Cl}_{\mathrm{read}}(\{L, M, N\}) = \{L, M, N\}.
$$

This is the RDG analogue of classical collinearity.

---

# RDG Simson Theorem

$$
P \in \mathrm{Carrier}(T_3)
\iff
\mathrm{Cl}_{\mathrm{read}}(\{L, M, N\}) = \{L, M, N\}.
$$

Verbal form:

> The three closure projections onto the sides of a minimal closed relational triad become incidence-dependent if and only if the source point is already closure-complete with respect to the carrier of that triad.

---

# Classical Euclidean Shadow

In a Euclidean realization phase,

$$
\mathrm{Cl}_{\mathrm{read}}(\{L, M, N\}) = \{L, M, N\}
$$

appears as the collinearity of $L$, $M$, and $N$.

Thus the classical Wallace–Simson theorem is the Euclidean shadow of the RDG closure invariant:

$$
\{\mathrm{closure}\}\text{-complete source}
\iff
\{\mathrm{closure}\}\text{-dependent projections}.
$$
