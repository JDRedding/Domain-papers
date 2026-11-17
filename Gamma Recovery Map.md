# **Recovery Map $\Gamma$**  
Satus: *Proposal Draft*

## Properties
This construction realises the recovery demanded while remaining strictly inside the relational signature and automorphism group fixed by the Foundation Layer.

1. $\Pi\circ\Gamma = \mathrm{id}_{\mathcal{O}}$ on the image (right-inverse property).  
2. $\Gamma$ is $G$-equivariant: $g\cdot\Gamma([\pi])=\Gamma([g\cdot\pi])$.  
3. Distinct generators may lie in the same fibre (many-to-one character of $\Pi$); $\Gamma$ returns the whole fibre of minimal SDIs rather than a single element.  
4. The map records neither trajectory history nor bifurcation path; those remain on the generator side of the hinge and are recovered only up to the equivalence that preserves the stabilised invariant.

## Domain and codomain

Let $\mathcal{O}$ be the collection of $G$-orbits classes of partitions of $M$ that survive A1–A4′ (the lawful role-symmetry classes of cardinalities 3 and 4) under consideration.  When restricted to the proposed lawful treatment classes, $\mathcal{O}_{3,4}$ ⊂ O.
These are the frozen projections.

Let $\mathrm{SDI}$ be the set of *stabilized dynamic invariants* on the 7-mode substrate: pairs $( \mathcal{G}, \Phi )$ where

- $\mathcal{G}$ is a continuous-time or discrete generator (vector field or update rule) acting on a state space whose underlying combinatorial skeleton is compatible with $(M,R)$,
- $\Phi$ is a phase geometry (relative phases, amplitudes, or coherence measures) that remains approximately constant along trajectories of $\mathcal{G}$ while $\frac{d}{dt}\mathcal{G}\not=0$.

Then the recovery map is a (generally multi-valued) function

$$
\Gamma : \mathcal{O} \to \mathcal{P}(\mathrm{SDI})
$$

that sends each orbit class to the set of SDIs capable of regenerating it.

### Explicit construction

Define the *partition-extraction projection*

$$
\Pi : \mathrm{SDI} \to \mathcal{O}
$$

by reading off the blocks of modes that remain coherently locked (or whose mutual differences stay bounded) under the flow of $\mathcal{G}$.  
$\Pi$ is the map that freezes the dynamics into a partition orbit.

$\Gamma$ is any right-inverse of $\Pi$ (or a section of the fibres of $\Pi$) that is *minimal* with respect to generator complexity:

$$
\Gamma([\pi]) 
\;=\; 
\{
I\in\mathrm{SDI}
\;\big|\;
\Pi(I)=[\pi]
\;\text{and}\;
I\text{ is a minimal attractor of its own closure flow}
\}.
$$

Minimality is measured by the order of the generator (lowest-degree relational couplings that close under the existing relations $E$ and $\mathrm{Tri}$) and by stability under small perturbations that preserve the A/B partition and the action of $G$.

### Concrete realisations on the two lawful cardinalities

**3-mode orbits (RDG geometry engine)**  

$$
\Gamma([\pi]_3) =
\{
\text{Kuramoto-type or closure-flow generators on the unique triad $A=\{1,2,3\}$}
\}
$$

whose relative phases $\delta_i-\delta_j$ are fixed by the triadic predicate $\mathrm{Tri}$ and whose residual motion is pure $S_3$ rotation.  
The invariant is the locked relative-phase geometry on $A$; the frozen projection is the 3-block partition itself.

**4-mode orbits (MFE matter/field engine)** 

$$
\Gamma([\pi]_4) =
\{
\text{dihedral generators on the $C_4$ of $B=\{4,5,6,7\}$
coupled to a coherent triad on $A$}
\}
$$

whose phase geometry realises a persistent $D_4$ rotation (or its continuous analogue) while the cross-edges of $K_{3,4}$ transport a conserved flux.  
The invariant is the maintained 4-cycle phase ordering together with the bipartite coherence; the frozen projection is the $3+2+1+1$ (or equivalent) partition orbit.

## Compatibility with existing $\Gamma$-operators

The continuum closure generator already defined in the framework (the projective limit of discrete adjacency refinements acting on locationless DCF fields) sits inside the fibres of the present $\Gamma$:

$$
\Gamma_{\mathrm{continuum}} 
\;\in\;
\Gamma([\pi])
$$

whenever the continuum field’s long-time coherence pattern projects onto the orbit $[\pi]$.  
Thus the recovery map is the selection of those continuum (or discrete) generators whose stabilised phase geometry realises a given frozen projection.

