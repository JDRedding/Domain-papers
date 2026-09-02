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

For all $A,B,C,D \in \mathcal{C}$, the following diagram commutes:

$$
\begin{array}{ccc}
((A\otimes B)\otimes C)\otimes D
& \xrightarrow{\alpha_{A\otimes B,\,C,\,D}}
& (A\otimes B)\otimes(C\otimes D)
\xrightarrow{\alpha_{A,B,\,C\otimes D}}
A\otimes\bigl(B\otimes(C\otimes D)\bigr) \$$0.6em]
\Big\downarrow{\scriptstyle \alpha_{A,B,C}\otimes\mathrm{id}_{D}}
&
&
\Big\uparrow{\scriptstyle \mathrm{id}_{A}\otimes\alpha_{B,C,D}} \$$0.6em]
\bigl(A\otimes(B\otimes C)\bigr)\otimes D
& \xrightarrow{\alpha_{A,\,B\otimes C,\,D}}
&
A\otimes\bigl((B\otimes C)\otimes D\bigr)
\end{array}
$$

### Triangle Axiom (Unit Coherence)

For all $A,B \in \mathcal{C}$,

$$
(A \otimes I) \otimes B
\xrightarrow{\alpha_{A,I,B}}
A \otimes (I \otimes B)
\xrightarrow{\mathrm{id}_{A} \otimes \lambda_{B}}
A \otimes B
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

