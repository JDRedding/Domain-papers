# Relational Structure, Interaction, Dynamics
## SID Mapping Rules — Core Summary

**SID(G) = ( S(G), I(G), D(G) )**

with nesting:

**S(G) ⊆ I(G) ⊆ D(G) ⊆ G**

---

## [1] Structure Layer — S(G)

**Definition:**  
S(G) contains all invariant, geometric, and kinematic relations that define what the system *is* before any coupling or evolution.

**Include in S(G):**
- Mode structure (spectra, eigenfrequencies)
- Geometry (boundaries, topology, constraints)
- Canonical operators (a, a†, commutators)
- Definitional identities (zero-point energy, basis rules)
- Relations invariant under allowed transformations

**Formal rule:**  
S(G) = { r ∈ G | r is invariant, definitional, or geometric }

---

## [2] Interaction Layer — I(G)

**Definition:**  
I(G) contains all operational, coupling, and mixing rules describing how structural elements influence each other.

**Include in I(G):**
- Boundary conditions (static or time-dependent)
- Mode mixing (Bogoliubov α, β)
- Coupling laws (resonance, parametric drive)
- Functional dependencies (how S-elements constrain others)
- Operational links (STR/OP/LOOP relations)

**Formal rule:**  
I(G) = closure of S(G) under interaction rules

---

## [3] Dynamics Layer — D(G)

**Definition:**  
D(G) contains all time-dependent, propagative, and outcome-generating relations.

**Include in D(G):**
- Evolution laws (time propagation, updates)
- Amplification (growth, decay, parametric resonance)
- Inferred transitions (path completion)
- Outcome measures (photon number, expectation values)
- Any relation requiring temporal unfolding

**Formal rule:**  
D(G) = closure of I(G) under dynamic rules

---

## [4] SID Operator Rules

- **Extensive:** S ⊆ I ⊆ D
- **Idempotent:** S(S(G)) = S(G), etc.
- **Monotone:** If G ⊆ H then S(G) ⊆ S(H), etc.
- **Compatible:** S constrains I; I constrains D

---

## [5] Mapping Algorithm (Practical Use)

Given any symbol X:

1. If X defines geometry, spectrum, or canonical form → **S**
2. If X expresses coupling or mixing → **I**
3. If X expresses evolution or generated outcomes → **D**
4. Enforce nesting: S ⊆ I ⊆ D
5. Enforce idempotence and monotonicity

---

## [6] Purpose of SID

SID cleanly separates:

- What the system *is* → **S**
- How parts *affect* each other → **I**
- How the system *evolves* → **D**

This ensures RDG objects remain operator-clean, geometry-consistent, and dynamically admissible.

## APPENDIX: Mathematical statements 
SID rules notation.

### Core object

$$
\mathrm{SID}(G) = \bigl( S(G),\, I(G),\, D(G) \bigr)
$$

with nesting

$$
S(G) \subseteq I(G) \subseteq D(G) \subseteq G.
$$

### Notation

| Symbol | Meaning |
|---|---|
| $G$ | ambient set of relations for the system |
| $S(G)$ | structure layer |
| $I(G)$ | interaction layer |
| $D(G)$ | dynamics layer |
| $r$ | a relation in $G$ |
| $H$ | another relation set (for monotonicity) |

### Layer definitions

**Structure**

$$
S(G) = \{ r \in G \mid r \text{ is invariant, definitional, or geometric} \}.
$$

**Interaction**

$$
I(G) = \overline{S(G)}^{\,\mathrm{int}}
$$

i.e. the closure of $S(G)$ under interaction rules.

**Dynamics**

$$
D(G) = \overline{I(G)}^{\,\mathrm{dyn}}
$$

i.e. the closure of $I(G)$ under dynamic rules.

### Operator axioms

**Extensive**

$$
S(G) \subseteq I(G) \subseteq D(G).
$$

**Idempotent**

$$
S\bigl(S(G)\bigr) = S(G),\qquad
I\bigl(I(G)\bigr) = I(G),\qquad
D\bigl(D(G)\bigr) = D(G).
$$

**Monotone**

$$
G \subseteq H
\quad\Longrightarrow\quad
S(G) \subseteq S(H),\quad
I(G) \subseteq I(H),\quad
D(G) \subseteq D(H).
$$

**Compatible (constraint chain)**

$$
S \text{ constrains } I,\qquad
I \text{ constrains } D.
$$

### Classification rule for a symbol $X$

$$
X \mapsto
\begin{cases}
S & \text{if } X \text{ is geometric, spectral, or canonical}\\
I & \text{if } X \text{ is coupling or mixing}\\
D & \text{if } X \text{ is evolution or an outcome}
\end{cases}
$$

subject to

$$
S \subseteq I \subseteq D
$$

and the idempotence/monotonicity axioms above.
