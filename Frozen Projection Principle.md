# Frozen Projection Principle

## Concept

Conceptual principle relating orbit-level representations to generator-level dynamics.

```text
Orbit
=
Footprint

Stabilized Dynamic Invariant
=
Walker

Π
=
Projection of the walker into a footprint

Γ
=
Recovery of admissible walkers
from a footprint
```

The Frozen Projection Principle states that classification operates on footprints, while dynamics concerns the generation and maintenance of the walkers that leave them.

---

## Definition

Let

$$
D(t)
$$

be a dynamical process and let

$$
\Pi
$$

be a projection from the dynamical domain into a representation domain.

A representation

$$
P = \Pi(D)
$$

is called a **frozen projection** if it preserves structural or relational organization while discarding some or all of:

- trajectory information,
- phase geometry,
- generator organization,
- path dependence,
- bifurcation history.

A frozen projection need not itself be static. It is “frozen” only in the sense that information about the generating process has been compressed or removed.

---

## Frozen Projection Principle

> A representation preserves only the structural relations visible after projection. Generator transitions, phase geometry, trajectory history, and bifurcation structure generally do not survive projection unless they are explicitly encoded.

Consequently,

$$
\Pi : \mathrm{SDI} \to O
$$

is generally non-injective.

Distinct stabilized dynamic invariants may project onto the same representation.

---

## Diagram

```text
Generator
   ↓
Phase Geometry
   ↓
Trajectory
   ↓
Stabilized Dynamic Invariant
   ↓ Π
Frozen Projection
```

The projection records the footprint of the dynamics, not the full dynamics themselves.

---

## Examples

### Orbit Classes

```text
Partition
   ↓
Orbit Class
```

Orbit classes classify symmetry-equivalent representations but do not determine:

- generator history,
- bifurcation events,
- phase organization,
- trajectory structure.

### Kuramoto Synchronization

For

$$
\theta_i(t) = \Omega t + \delta_i,
$$

the observable label

```text
"synchronized"
```

is a frozen projection.

The underlying relative-phase geometry

$$
\delta_i - \delta_j
$$

belongs to the stabilized dynamic invariant.

### Hopf Bifurcation

```text
Generator_A
     ↓
 Fixed Point

      Hopf

Generator_B
     ↓
 Limit Cycle
```

The fixed point and the limit cycle are projections.

The generator reorganization occurring at the bifurcation is not generally recoverable from the projections alone.

---

## Consequence

If

$$
\Pi : \mathrm{SDI} \to O
$$

is non-injective, then orbit structure alone cannot uniquely determine generator structure.

Therefore:

$$
\text{Orbit Equivalence} \not\Rightarrow \text{Generator Equivalence}.
$$

The problem is the construction of a gamma recovery map

$$
\Gamma : O \to \mathcal{P}(\mathrm{SDI})
$$

that returns the admissible family of stabilized dynamic invariants compatible with a given frozen projection.
