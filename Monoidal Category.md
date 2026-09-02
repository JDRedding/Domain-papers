# Monoidal Category

A monoidal category is a central concept in category theory that generalizes the algebraic notion of a monoid to the level of categories. It equips a category with a “multiplicative” structure via a tensor product and a distinguished unit object, together with coherences that govern associativity and unitality, up to natural isomorphism. Think of a monoidal category as an environment where both objects and processes can be combined, not just sequentially (composition of morphisms) but in parallel via the tensor product, with a “neutral identity object” much like the number $1$ in multiplication. The coherence isomorphisms ensure that different ways of combining objects give “essentially the same” outcome. A monoidal category is a category $\mathcal{C}$ with tensor $\otimes$, unit $I$, associativity $\alpha$, and left/right unitors $\lambda$, $\rho$ satisfying the pentagon and triangle axioms.

It generalizes monoids, facilitates categorical algebra, and provides a unified framework for mathematics, physics, and computer science.

## 1. Formal Definition

A monoidal category is a quintuple (or sextuple in traditional presentations)

$$
(\mathcal{C},\,\otimes,\,I,\,\alpha,\,\lambda,\,\rho)
$$

where:

- $\mathcal{C}$ is a category (objects and morphisms),
- $\otimes : \mathcal{C} \times \mathcal{C} \to \mathcal{C}$ is a bifunctor called the **tensor product**,
- $I \in \mathcal{C}$ is the **unit object** (identity for $\otimes$),
- $\alpha$ is the **associator**, a natural isomorphism

$$
\alpha_{A,B,C} : (A \otimes B) \otimes C \xrightarrow{\sim} A \otimes (B \otimes C),
$$

- $\lambda$ and $\rho$ are the **unitors**, natural isomorphisms

$$
\lambda_{A} : I \otimes A \xrightarrow{\sim} A,
\qquad
\rho_{A} : A \otimes I \xrightarrow{\sim} A.
$$

These data satisfy two coherence conditions.

### Pentagon Axiom (Associativity Coherence)

For all \(A,B,C,D\in\mathcal{C}\), the following diagram commutes:

$$
\begin{array}{ccc}
((A\otimes B)\otimes C)\otimes D
& \xrightarrow{\alpha_{A\otimes B,C,D}}
& (A\otimes B)\otimes(C\otimes D)
  \xrightarrow{\alpha_{A,B,C\otimes D}}
  A\otimes\bigl(B\otimes(C\otimes D)\bigr)
\Big\downarrow{\scriptstyle \alpha_{A,B,C}\otimes\mathrm{id}_D}
&&
\Big\uparrow{\scriptstyle \mathrm{id}_A\otimes\alpha_{B,C,D}}
\bigl(A\otimes(B\otimes C)\bigr)\otimes D
& \xrightarrow{\alpha_{A,B\otimes C,D}}
& A\otimes\bigl((B\otimes C)\otimes D\bigr)
\end{array}
$$

### Triangle Axiom (Unit Coherence)

For all $A,B \in \mathcal{C}$,

$$
(A \otimes I) \otimes B \xrightarrow{\alpha_{A,I,B}} A \otimes (I \otimes B) \xrightarrow{\mathrm{id}_{A} \otimes \lambda_{B}} A \otimes B
$$

equals

$$
(A \otimes I) \otimes B
\xrightarrow{\rho_{A} \otimes \mathrm{id}_{B}}
A \otimes B.
$$

A **strict monoidal category** is the special case where $\alpha$, $\lambda$, and $\rho$ are identity morphisms, allowing one to write $(A \otimes B) \otimes C = A \otimes (B \otimes C)$ literally.

## 2. Examples

- **Sets with Cartesian product:** $(\mathbf{Set},\,\times,\,\{\ast\})$, with any singleton as the unit object.
- **Vector spaces over a field $k$:** $(\mathbf{Vect}_{k},\,\otimes_{k},\,k)$
- **$R$-modules over a commutative ring $R$:** $(R\text{-}\mathbf{Mod},\,\otimes_{R},\,R)$
- **Endofunctors on a category $\mathcal{C}$:** monoidal with composition $(\mathbf{End}(\mathcal{C}),\,\circ,\,\mathrm{Id}_{\mathcal{C}})$
- **Representations of a group $G$:** tensor product of representations; unit is the trivial representation.
- **Pointed topological spaces:** smash product; unit is the pointed $0$-sphere.

## 3. Key Properties

- **Monoidal equivalence:** Every monoidal category is monoidally equivalent to a strict monoidal category (Mac Lane’s Coherence Theorem). This allows ignoring parentheses in long tensor expressions.
- The set of isomorphism classes inherits a monoid structure under $\otimes$ with unit $I$.
- The monoid of endomorphisms of the unit object, $\mathrm{End}(I)$, is commutative.
- Monoid objects in a monoidal category generalize algebraic monoids (a ring is a monoid object in $(\mathbf{Ab},\,\otimes,\,\mathbb{Z})$).

## 4. Variations

- **Symmetric monoidal category:** There exists a natural isomorphism $c_{A,B} : A \otimes B \to B \otimes A$ satisfying coherence.
- **Braided monoidal category:** Like symmetric, but $c_{B,A} \circ c_{A,B}$ need not be the identity.
- **Closed monoidal category:** $A \otimes -$ has a right adjoint $\mathrm{Hom}(A,-)$.
- **Rigid / autonomous categories:** All objects have duals.
- **Dagger monoidal categories:** Equipped with an involutive functor, e.g., for quantum computation.

## 5. Applications

- **Abstract algebra:** Categorification of monoids, rings, algebras.
- **Quantum physics:** Tensor categories model topological order, observables, and quantum field theory.
- **Computer science:** Type systems, process calculi, compositional models.
- **Homotopy theory:** Monoidal model categories structure homotopical objects compatibly with tensor operations.

###  Cobordism Categories
Objects, Morphisms, and Composition

In the context of monoidal categories and cobordism categories, the terminology “objects are boundary states, morphisms are cobordisms, and composition is sequential execution” can be unpacked using principles from category theory and topology. This framework is foundational in Topological Quantum Field Theory (TQFT) and higher category theory. This categorical-linguistic viewpoint makes cobordisms a precise mathematical proxy for processes and their composition, bridging topology, algebra, and physics.

- Objects are “snapshots” of space or states.
- Morphisms are “spacetime histories” connecting snapshots.
- Composition is “doing one history after another.”
- Monoidal structure encodes simultaneous systems/processes.

#### 1. Objects as Boundary States

Objects in a category abstractly represent entities that can have transformations applied to them.

In the cobordism category $\mathbf{Cob}_{n}$ (for $n$-dimensional manifolds):

- An object is a closed $n$-dimensional manifold $M$, often interpreted as a “boundary state” in physics.
- Intuition from TQFT: the object corresponds to the state space of a quantum system at a particular “time” (or along a hypersurface). For example, a circle $S^{1}$ can represent a loop of quantum information or a spatial boundary.

Formally:

$$
\mathrm{Ob}(\mathbf{Cob}_{n}) = \{\text{closed oriented } n\text{-manifolds}\}.
$$

#### 2. Morphisms as Cobordisms

Morphisms in a category are structure-preserving maps between objects.

In the cobordism category, a morphism between two closed $n$-manifolds $M_{0}$ and $M_{1}$ is an $(n+1)$-dimensional cobordism $W$:

$$
W : M_{0} \longrightarrow M_{1},
\qquad
\partial W = M_{0} \sqcup M_{1}.
$$

- **Geometrically:** $W$ “interpolates” between its boundary manifolds, like a 2D surface connecting two circles or a 3D manifold connecting two 2D surfaces.
- **Physically / TQFT-wise:** the cobordism represents evolution or a process that takes the system from the boundary state $M_{0}$ to $M_{1}$.

Diagrammatically:

$$
M_{0} \xrightarrow{W} M_{1}.
$$

#### 3. Composition as Sequential Execution

Composition of morphisms in a category is associative and obeys an identity law.

In cobordism categories: if $W_{1} : M_{0} \to M_{1}$ and $W_{2} : M_{1} \to M_{2}$ are cobordisms, then their composition is defined by gluing them along the matching boundary $M_{1}$:

$$
W_{2} \circ W_{1} := W_{1} \cup_{M_{1}} W_{2} : M_{0} \to M_{2}.
$$

Conceptual interpretation: this is sequential execution of processes, where one process ($W_{1}$) occurs first, followed by the next ($W_{2}$).

**Properties:**

- **Associativity:** $(W_{3} \circ W_{2}) \circ W_{1} = W_{3} \circ (W_{2} \circ W_{1})$.
- **Identity morphism:** the cylinder $M \times [0,1]$ acts as the identity morphism on $M$, representing no evolution.

#### 4. Monoidal Structure

Many cobordism categories admit a monoidal structure via disjoint union:

$$
M \otimes N := M \sqcup N,
\qquad
W_{1} \otimes W_{2} := W_{1} \sqcup W_{2}.
$$

- **Physically:** this describes parallel composition of independent processes or systems.
- Symmetric monoidal categories allow for exchange of objects: $M \otimes N \cong N \otimes M$.

#### 5.  Summary

| Category theory | Cobordism category | Physical / TQFT interpretation |
|-----------------|--------------------|--------------------------------|
| Object | Closed $n$-manifold $M$ | Boundary state / instant of configuration |
| Morphism | Cobordism $W : M_{0} \to M_{1}$ | Evolution / process taking $M_{0}$ to $M_{1}$ |
| Composition | Gluing cobordisms along a shared boundary | Sequential execution of processes |
| Monoidal product | Disjoint union $M_{0} \sqcup M_{1}$ | Parallel independent processes |


This abstraction underlies functorial TQFTs, where a symmetric monoidal functor $Z : \mathbf{Cob}_{n} \to \mathbf{Vect}$ assigns:

- objects $M \mapsto$ vector spaces $Z(M)$,
- morphisms $W \mapsto$ linear maps $Z(W)$,

preserving composition and monoidal structure.

## References

- Galatius, Madsen, Tillmann, Weiss, *The homotopy type of the cobordism category* (2009)
- Baez and Dolan, *Higher-Dimensional Algebra and TQFT*
- Romö, *Towards Algebraic $n$-Categories of Manifolds and Cobordisms* (2024)
- nLab: Cobordism Category
