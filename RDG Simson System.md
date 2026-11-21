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

## The Relational Simson Object

The relational object that plays the role of the Simson line is the closure

$$
S(P;A,B,C) := \mathrm{Cl}_{\mathrm{read}}(\{\Pi_{AB}^{\mathrm{RDG}}(P),\Pi_{BC}^{\mathrm{RDG}}(P),\Pi_{CA}^{\mathrm{RDG}}(P)\}).
$$

When the source state is closure-complete, i.e.,

$$
P\in\mathrm{Carrier}(T_3),
$$

the three projected states become mutually dependent:

$$
S(P;A,B,C)=\{\Pi_{AB}^{\mathrm{RDG}}(P),\Pi_{BC}^{\mathrm{RDG}}(P),\Pi_{CA}^{\mathrm{RDG}}(P)\}.
$$

In this case $S(P;A,B,C)$ is a single closure-stable channel (a relational line). Its Euclidean realization is the classical Simson line:

$$
\mathcal{E}\bigl(S(P;A,B,C)\bigr)=\text{Simson line of }\mathcal{E}(P)\text{ with respect to triangle }\mathcal{E}(ABC).
$$

Thus the Simson line is not a primitive Euclidean object; it is the shadow of the closure of the three channel projections of a carrier state.

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

---

# Appendix: No Absolute Location

The RDG Simson system is purely relational. There are no absolute locations, coordinates, or ambient point-space.

All structure is carried by the relational substrate $R = (\mathrm{Obj}, \mathrm{Rel})$ and the reading-closure operator $\mathrm{Cl}_{\mathrm{read}}$. Objects acquire relational identity and mutual incidence only through closure-stable structure:

$$
A \sim_S B \iff (A,B) \in \mathrm{Cl}_{\mathrm{read}}(R).
$$

What classically appears as carrier membership or collinearity is expressed in RDG through the corresponding closure-completeness and joint incidence-stability conditions:

$$
G = \mathrm{Cl}_{\mathrm{read}}(G).
$$

No external embedding or coordinate chart is required or admitted. Any apparent “location” is an emergent consequence of the closed relational geometry and dissolves when the closure relations are removed.

---

# Appendix: Axiomatization of $\Pi_{AB}$

These are the equations and formulas that constitute the minimal mathematical axiomatization of $\Pi_{AB}$ and the associated Simson condition.

$$
P\in\mathrm{Carrier}(T_3)
\;\iff\;
\mathrm{Cl}_{\mathrm{read}}(\{L,M,N\})=\{L,M,N\}.
$$

## Core Notation

- $T_3$: a closure-stable triad.
- $\mathrm{Carrier}(T_3)$: the set of admissible relational states $P$.
- $\mathrm{Cl}_{\mathrm{read}}$: a closure operator.
- $R$: a base relational structure.
- $d_\Gamma$: a distance (or quasimetric) used to measure proximity to closed objects.
- $\Pi_{AB}$, $\Pi_{BC}$, $\Pi_{CA}$: projection maps onto the respective channels.

## Structural Incidence

$$
A\sim_S B\;\iff\;(A,B)\in\mathrm{Cl}_{\mathrm{read}}(R).
$$

## Projection Signature

$$
\Pi_{AB}:\mathrm{Carrier}(T_3)\longrightarrow\mathrm{Cl}_{\mathrm{read}}(\{A,B\}).
$$

(Analogous signatures hold for $\Pi_{BC}$ and $\Pi_{CA}$.)

## Projection Axioms

**Closure stability (P1)**

$$
\mathrm{Cl}_{\mathrm{read}}\bigl(\Pi_{AB}(P)\bigr)=\Pi_{AB}(P).
$$

**Idempotence (P3)**

$$
\Pi_{AB}\circ\Pi_{AB}=\Pi_{AB}.
$$

**Nearest closed representative (P4, optional)**

$$
\Pi_{AB}(P)=\arg\min_{X\in\mathrm{Cl}_{\mathrm{read}}(\{A,B\})}d_\Gamma(P,X).
$$

### Channel Projections of a State

$$
L=\Pi_{AB}(P),\qquad
M=\Pi_{BC}(P),\qquad
N=\Pi_{CA}(P).
$$

### Simson Invariant

$$
\mathrm{Cl}_{\mathrm{read}}(\{L,M,N\})=\{L,M,N\}.
$$

# Appendix: Intrinsic Projection, Variational Characterization, and Euclidean Realization

This appendix clarifies the logical status of the projection operators and separates the intrinsic RDG definitions from their Euclidean realizations.

## Three Levels of Description

The projection operator may appear in three distinct but compatible forms:

| Level          | Status           | Interpretation                                              |
|----------------|------------------|-------------------------------------------------------------|
| Intrinsic RDG  | Definition       | Relational projection into a closure-stable channel         |
| Variational    | Characterization | Nearest-channel-state selection with respect to $d_\Gamma$ |
| Euclidean      | Realization      | Orthogonal foot onto a side-line                            |

These descriptions are not assumed identical a priori. Their equivalence must be imposed as an axiom or established by a theorem.

## Intrinsic Projection

For a closure-stable channel

$$
C_{AB} = \mathrm{Cl}_{\mathrm{read}}(\{A,B\}),
$$

the intrinsic projection is

$$
\Pi_{AB}^{\mathrm{RDG}} : \mathrm{State} \longrightarrow C_{AB}.
$$

The projection is therefore defined entirely within the closure structure and requires neither coordinates nor angles.

## Variational Characterization

When a closure metric or cost functional $d_\Gamma$ is available, the projection may additionally satisfy

$$
\Pi_{AB}^{\mathrm{RDG}}(P) = *{argmin}_{X \in C_{AB}} d_\Gamma(P,X).
$$

More generally, without uniqueness,

$$
\Pi_{AB}^{\mathrm{RDG}}(P) \in *{argmin}_{X \in C_{AB}} d_\Gamma(P,X).
$$

Existence and uniqueness of the minimizer require additional hypotheses and are not consequences of the closure axioms alone.

This variational property should therefore be regarded as an optional characterization or realization theorem rather than part of the minimal definition.

## Euclidean Realization

Let

$$
\mathcal{E} : \mathrm{RDG} \longrightarrow \mathrm{Euclid}
$$

be a realization map.

The Euclidean shadow of the intrinsic projection is ordinary orthogonal projection:

$$
\mathcal{E} \!\left( \Pi_{AB}^{\mathrm{RDG}}(P) \right) = {proj}^{\perp}_{AB} \!\left( \mathcal{E}(P) \right),$$

where ${proj}^{\perp}_{AB}$ denotes projection onto the Euclidean side-line corresponding to the relational channel $C_{AB}$.

Thus orthogonal projection is not fundamental to RDG; it is the Euclidean realization of the underlying relational projection.

# Appendix: Euclidean Shadow Principle

The phrase “Euclidean shadow” refers to a compatibility relation between intrinsic RDG structures and their Euclidean realizations.

## Projection Shadow

Projection commutes with realization:

$$
\mathcal{E} \circ \Pi^{\mathrm{RDG}} = \Pi^{\mathrm{Euclid}} \circ \mathcal{E}.
$$

This means that intrinsic relational projection and Euclidean projection represent the same operation viewed in different realization phases.

## Closure Shadow

Closure-dependence appears in Euclidean geometry as collinearity:

$$
\mathrm{Cl}_{\mathrm{read}}(\{L,M,N\}) = \{L,M,N\} \iff \mathcal{E}(L), \mathcal{E}(M), \mathcal{E}(N) \text{ are collinear}.
$$

Thus collinearity is not taken as primitive. Rather, it is the Euclidean manifestation of a deeper closure invariant.

## General Realization Principle

More generally, the realization map is expected to preserve closure structure:

$$
\mathcal{E} \bigl( \mathrm{Cl}_{\mathrm{read}}(X) \bigr) = \mathrm{Cl}_{E} \bigl( \mathcal{E}(X) \bigr),
$$

where $\mathrm{Cl}_{E}$ denotes Euclidean incidence closure.

This expresses the idea that Euclidean geometry is a realization phase of RDG rather than an independent foundation.

# Appendix: Logical Status of the RDG Simson Theorem

The RDG Simson statement

$$
P \in \mathrm{Carrier}(T_3) \iff \mathrm{Cl}_{\mathrm{read}}(\{L,M,N\}) = \{L,M,N\}
$$

is an intrinsic relational statement.

The theorem should not be interpreted as relying upon Euclidean notions such as perpendicularity or collinearity.

Instead:

- $P \in \mathrm{Carrier}(T_3)$ expresses closure-completeness of the source state, while
- $\mathrm{Cl}_{\mathrm{read}}(\{L,M,N\}) = \{L,M,N\}$ expresses closure-dependence of the projected states.

The classical Wallace–Simson theorem is recovered through realization:

$$
\mathcal{E}(L), \mathcal{E}(M), \mathcal{E}(N) \text{ collinear} \iff P \text{ lies on the circumcircle}.
$$

Accordingly,

$$
\text{closure-complete source} \iff \text{closure-dependent projections}
$$

is the intrinsic RDG invariant whose Euclidean shadow is the classical Simson theorem.

# Appendix: Definition, Characterization, and Realization

To avoid ambiguity, RDG objects shall be distinguished according to the following hierarchy:

## Definition

Specifies the object within the relational substrate.

Example:

$$
\Pi_{AB}^{\mathrm{RDG}} : \mathrm{State} \to C_{AB}.
$$

## Characterization

A property that uniquely identifies the object when additional structure is available.

Example:

$$
\Pi_{AB}^{\mathrm{RDG}}(P) = *{argmin}_{X \in C_{AB}} d_\Gamma(P,X).
$$

## Realization

How the object appears in a particular geometry.

Example:

$$\mathcal{E} \!\left( \Pi_{AB}^{\mathrm{RDG}}(P) \right) = AB \cap \ell, \qquad \ell \perp AB.$$
