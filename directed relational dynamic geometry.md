The core mathematical structure is a directed relational dynamic geometry (RDG). SID and PED arise as the minimal projections and flux operators forced by the four constraints.

### Base Object
An equation (or admissible structure) is the directed relational geometry

$$
G = (\mathrm{Obj},\mathrm{Rel}),\qquad \mathrm{Rel}\subseteq\mathrm{Obj}\times\mathrm{Obj}.
$$

Nodes $\mathrm{Obj}$ are quantities, subexpressions, roles, or referents. Edges $\mathrm{Rel}$ are definitional, operational, or inferred. The classical balance statement (e.g., $\mathrm{lhs}=\mathrm{rhs}$) is the neutral manifold $F=0$ on this geometry, not itself a primitive slot.

### SID Projection
SID is the nested geometric slice

$$
\mathrm{SID}(G)=(S(G),I(G),D(G)),\qquad S(G)\subseteq I(G)\subseteq D(G)\subseteq G,
$$

where the operators $S$, $I$, and $D$ are extensive, idempotent, and monotone:
- $S(G)$: invariant skeleton (definitional/role-symmetry edges; role-symmetry minimality),
- $I(G)$: operational closure (couplings that respect the balance under the symmetry group),
- $D(G)$: path completion (inferred edges that close rewrites/substitutions without leaving $G$).

This nesting is the pure refinement constraint: each layer only tightens the previous one. Anti-monolith symmetry is enforced by requiring a non-trivial automorphism that does not fix $G$ pointwise while still satisfying $S\subseteq I\subseteq D$.

### Edge Stratification

$$
\begin{align*}
\mathrm{Rel}_S &= \text{definitional edges (construction of expressions/roles)},\\
\mathrm{Rel}_I &= \text{operational edges (couplings used by the equality/symmetry)},\\
\mathrm{Rel}_D &= \text{inferred edges (paths closed by substitution or rewriting)}.
\end{align*}
$$

Role-symmetry minimality forces $\mathrm{Rel}_S$ and the relevant part of $\mathrm{Rel}_I$ to be invariant under the symmetry group of the roles; any coarser identification collapses the structure (monolith), any finer distinction violates minimality.

### Triadic Closure
The triad itself is the closure condition

$$
\Omega(G)\ \equiv\ S(G)\ \wedge\ I(G)\ \wedge\ D(G)
$$

(with the inclusions above). Equivalently, on the incidence graph of the three layers, binding holds when

$$
|V|\ge 2\ \Rightarrow\ \text{the graph is connected under }\mathrm{Rel}_I\cup\mathrm{Rel}_D.
$$

This is the formal triadic-closure requirement. Failure of any leg makes $\Omega(G)$ false and the structure inadmissible.

### PED and External Operators
PED is the flux operator external to the SID slice:

$$
\mathrm{PED}:\ \text{evaluation and redistribution of flux across the balance node }F=0.
$$

It measures equality of fluxes and redistributes them so that the operational couplings in $I(G)$ remain admissible. Continuity and higher-order admissibility are moderated by a further operator $Q$. Neither PED nor $Q$ is part of $\mathrm{SID}(G)$; they are the minimal mechanisms that keep the pure refinements inside SID from generating an inadmissible (monolithic or non-closed) global state.

### Solution Set and Recomputation
The solution set of the balance is

$$
\mathcal{S}(R)=\{x\mid f(x)=0\ \forall f\in I_R\}.
$$

Recomputation of dependent nodes, carriers, and solution sets is performed by an external map $\Gamma$. Pure refinement requires that $\Gamma$ only update quantities already present in $G$ and never enlarge the signature.

### Canonical Inequalities
For every admissible $G$,

$$
|S|\le|I|\le|D|,
$$

and every pure refinement step preserves the chain of inclusions. Any operator that would break the chain, select a non-symmetric representative, or leave an open wedge violates at least one of the four founding constraints and is therefore excluded. SID and PED are exactly the operators that remain.
