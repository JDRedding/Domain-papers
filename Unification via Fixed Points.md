# Unification via Fixed Points

A coherent relational framing of classical fixed-point and invariance notions inside the RDG substrate. This file maps classical fixed-point and invariance notions onto the core RDG object $G = (\mathrm{Obj}, \mathrm{Rel})$ and its axioms (especially sub-RDG inclusion and morphisms).

## Links to classical results

- **Linear operators and invariant subspaces**: the classical condition $T(V) \subseteq V$ is recovered exactly; existence results such as Lomonosov’s theorem (algebras containing a nonzero compact operator) can be read as guaranteeing a nontrivial fixed point of a suitable map on a Grassmannian or on the lattice of closed subspaces.
- **Group actions**: fixed-point loci and stabilized sets are the usual fixed sets of the action; Burnside-type counting or orbit-stabilizer statements translate directly into counts of fixed objects in the RDG.
- **Endofunctors / recursive types**: the same pattern appears as initial algebras or terminal coalgebras for an endofunctor (the “least/greatest fixed point” of the functor on the category of RDG structures).
- **Self-description**: an invariant substructure that is equal to its image under a self-map is a relational form of a fixed point of a self-referential operator.

## Self-description as invariant subspaces

**Type**: Linear operator (endomorphism) $T$ on a vector space.  
**Variable**: $V$ subspace of the ambient space.  
**Fundamental**: A subspace $V$ is $T$-invariant when the operator maps it into itself.

**Equation**:

$$
T(V) \subseteq V
$$

Equivalent form for a structure $S$ and map $f$:
- $v \in S$ implies $f(v) \in S$
- $f(S) = S$

## Fixed-point loci under endomorphisms and automorphisms

**Type**: Endomorphism $f : X \to X$ (map from a set/space $X$ to itself).  
**Type**: Automorphism $g : X \to X$ (bijective endomorphism; example: rotation).  
**Variable**: $X$ the underlying set or space.  
**Variable**: $x$ elements of $X$.  

**Fundamental**: A fixed point of $f$ is an element left unchanged by $f$.  
The fixed-point set (locus) is the collection of all such points.

**Equation**:

$$
\mathrm{Fix}(f) = \{ x \in X \mid f(x) = x \}
$$

**Example (automorphism)**: Rotations by multiples of 90 degrees; the center is the fixed-point locus.

**Related fundamentals**:
- Groups acting on stabilized sets (sets invariant under the group action).
- Fixed-point loci of endomorphisms and automorphisms.
- Unification framed as identifying structures that are fixed or invariant under the relevant maps.

## Relational Dynamic Geometry

### Relational unification via fixed points / invariant subspaces

#### Core RDG object

**Type**: Directed relational geometry $G = (\mathrm{Obj}, \mathrm{Rel})$  

$$
\mathrm{Rel} \subseteq \mathrm{Obj} \times \mathrm{Obj}
$$  

$a \to b$ iff $(a, b) \in \mathrm{Rel}$

#### Objects ($\mathrm{Obj}$)

- Points / elements $x \in X$
- Subspaces / substructures $S$, $V$
- Maps $f$, $g$, $T$ (endomorphisms, automorphisms)
- Fixed-point loci / stabilized sets
- Ambient spaces $X$, $V$

#### Relations ($\mathrm{Rel}$)

- Invariance: $v \to f(v)$ stays inside $S$  
  ($v \in S$ and $f(v) \in S$)
- Fixed-point relation: $x \to x$ under $f$  
  ($(x, x) \in \mathrm{Rel}_f$ where $\mathrm{Rel}_f$ encodes the action of $f$)
- Substructure inclusion: $S \subseteq X$
- Group action stabilization: $g \cdot s \in S$ for $g$ in the group

### Invariant subspace as sub-RDG

**Type**: Sub-RDG inclusion (axiom B)  

$$
G_S \subseteq G_X
$$  

iff $\mathrm{Obj}(G_S) \subseteq \mathrm{Obj}(G_X)$ and $\mathrm{Rel}(G_S) \subseteq \mathrm{Rel}(G_X)$

**Condition (self-description / invariance)**:  
$T(V) \subseteq V$ rendered as:  
for all $v$ in $\mathrm{Obj}(V)$: $v \to T(v)$ and $T(v) \in \mathrm{Obj}(V)$  
i.e., the image of the morphism stays inside the sub-RDG.

### Fixed-point locus

**Type**: Solution set $\mathcal{S}(R)$ of a relation $R$ (carrier / zero set)  

$$
\mathrm{Fix}(f) = \{ x \in \mathrm{Obj}(X) \mid f(x) = x \}
$$  

equivalently:  

$$
\mathrm{Fix}(f) = \{ x \mid (x, x) \in \mathrm{Rel}_f \}
$$

As RDG morphism fixed points:  
A morphism $f : G \to G$ satisfies  
- $f(a) \to f(b)$ whenever $a \to b$ (M1)  
- and creates no extra edges (M2)  

Fixed points are objects $a$ where $f(a) = a$ (identity on those objects).

### Automorphism example (rotation)

**Type**: Automorphism $g \in \mathrm{Aut}(G)$  
$g : X \to X$ bijective, preserves $\mathrm{Rel}$  
Fixed locus: center $c$ such that $g(c) = c$ for all angles in the discrete group  
Stabilized sets: subsets $S$ with $g(S) = S$

### Dynamic recomputation ($\Gamma$)

$\Gamma$ recomputes dependent objects, carriers, and solution sets under the action of the endomorphism/automorphism so that invariant subspaces and fixed loci remain closed after update.

### SID projection (structural slice of the same RDG)

- **S-mode**: structural invariants of the fixed set / subspace  
- **I-mode**: interaction (the map $f$ or group action)  
- **D-mode**: dynamics of the recomputation $\Gamma$ that preserves the fixed locus

### Unification statement in RDG

Unification = identification of a sub-RDG that is invariant under the morphism and whose objects are fixed points of that morphism  
(i.e., the most general structure closed under the relation and equal to its image).

## Core correspondences

**Invariant subspace as sub-RDG.**  
The condition $T(V) \subseteq V$ is exactly the requirement that the sub-RDG $G_V$ is closed under the endomorphism: for every object $v$ in $\mathrm{Obj}(G_V)$, the relational image stays inside $\mathrm{Obj}(G_V)$ and the induced edges are preserved. This is the relational reading of axiom (B) (sub-RDG inclusion) together with morphism conditions (M1)–(M2). When $f(S) = S$, the substructure is equal to its image (a strong form of invariance).

**Fixed-point locus.**  

$$
\mathrm{Fix}(f) = \{ x \in \mathrm{Obj}(X) \mid f(x) = x \}
$$  

is the solution set $\mathcal{S}(R_f)$ of the diagonal relation induced by $f$. Equivalently, it is the set of objects $a$ for which the morphism acts as the identity. For an automorphism $g \in \mathrm{Aut}(G)$ (e.g., discrete rotation), the fixed locus is the set of points stabilized by the whole group action; stabilized sets are the subsets $S$ with $g(S) = S$.

**Dynamic recomputation.**  
$\Gamma$ is the update that recomputes dependent objects, carriers, and solution sets so that the invariant sub-RDG and its fixed locus remain closed after the action of the endomorphism/automorphism. This matches the $\Gamma$-mode in the RDG/RDGA stack: dependency-graph propagation that preserves the algebraic and relational invariants.

**SID projection.**  
The structural slice (S-mode) records the invariants of the fixed set/subspace; the interaction slice (I-mode) is the map $f$ or the group action; the dynamic slice (D-mode) is the recomputation $\Gamma$ that keeps the locus closed. This is consistent with SID being a projection of RDG rather than a primitive.

**Unification statement.**  
“Unification = identification of a sub-RDG that is invariant under the morphism and whose objects are fixed points of that morphism” is the relational analogue of extracting the most general structure that is closed under the relation and equal to its image. In lattice-theoretic terms this is a fixed point of a monotone operator on the lattice of sub-RDGs (Knaster–Tarski supplies existence when the operator is monotone and the lattice is complete).
