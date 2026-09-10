# tyPower

**tyPower** is a theoretical framework for hierarchical combinatory systems in which elements of computation or structure are multi-sorted, and all operations respect rotational equivariance. This design enables the representation of symmetries and typed interactions in a formally rigorous yet composable manner. tyPower is a typed, multi-sorted combinatory framework that rigorously enforces rotational equivariance across all operations and compositions. It generalizes classical combinatory logic to systems where sorts are heterogeneous, operations are constrained by types, and symmetry is explicit, providing a mathematically principled basis for symmetry-aware combinatorial computation. This abstract framework can form the backbone for symbolic, numeric, or hybrid computational systems that require compositional symmetry preservation and multi-type interactions.

## Multi-Sorted Foundation

The system defines a set of sorts

$$
\{S_1, S_2, \dots, S_n\},
$$

each corresponding to a type-class of entities (e.g., vectors, scalars, operators).

Elements \(x \in S_i\) carry intrinsic sort information, ensuring that only well-typed interactions are valid.

Operations in tyPower are sort-preserving or sort-transforming according to explicit typing rules. For instance, a combinator

$$
\Phi : S_i \times S_j \to S_k
$$

is valid only if its input types match the specified sorts.

## Combinatory Structure

The core mechanism is combinators, which are higher-order operators that manipulate or compose elements of different sorts.

Primitive combinators include:

- **Composition** (\(\circ\)): standard functional-style operator, type-checked across sorts.
- **Tensor-like combinator** (\(\otimes\)): fuses distinct sorts while preserving sort labeling.
- **Power/Exponentiation combinator** (\(\mathrm{Pow}\)): formalizes repeated combinatory iteration respecting sorts.

Combinators are associative up to equivalence classes and obey multi-sorted algebraic laws.

## Rotational Equivariance

The system encodes a group action \(R(\theta)\), typically elements of the rotation group \(SO(2)\) or \(SO(3)\), on the combinatory structure.

**Equivariance condition:** for any combinator \(\Phi\) and rotation \(R(\theta)\),

$$
\Phi\bigl(R(\theta)x_1, R(\theta)x_2, \dots, R(\theta)x_n\bigr) = R(\theta)\,\Phi(x_1, x_2, \dots, x_n).
$$

This ensures all transformations are invariant under rotation at the system-wide level, making tyPower suited for geometrical reasoning, physical modeling, or symmetry-aware computation.

## Interaction Rules

- **Compatibility:** two sorts \(S_i\) and \(S_j\) interact via combinators only if a mapping law exists:

  $$
  \mu_{i,j} : S_i \times S_j \to S_k.
  $$

- **Symmetry Propagation:** combinator outputs inherit symmetries from the inputs, and rotational actions propagate naturally:

  $$
  R(\theta)\bigl(\Phi(A,B)\bigr) = \Phi\bigl(R(\theta)A, R(\theta)B\bigr).
  $$

- **Nested Composition:** higher-order combinators can take combinators as inputs, forming a category-like structure across sorts, with rotationally equivariant morphisms.

## Applications

- **Physics-Driven Modeling:** encoding interactions of multi-component systems (e.g., molecules, fields) while respecting rotational symmetry.
- **Geometry-Based Machine Learning:** deep networks or AI architectures leveraging symmetry-aware layers.
- **Combinatorial Algebra:** formal reasoning on typed operations with intrinsic symmetry.

