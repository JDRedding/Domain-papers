# RDG Metric $d_\Gamma$
**The Metric (or Distance Function / Metric Geometry)**

In mathematics (and in frameworks of relational or dynamic geometry), a metric is the rule or function that assigns a non-negative real number measuring how far apart any two points (or elements) are. A set equipped with such a function is called a metric space.

### Standard Definition

A metric $d$ on a set $X$ is a function

$$
d \colon X \times X \to [0, \infty)
$$

satisfying, for all $x, y, z \in X$:

- **Identity of indiscernibles**: $d(x, y) = 0$ if and only if $x = y$
- **Symmetry**: $d(x, y) = d(y, x)$
- **Triangle inequality**: $d(x, z) \leq d(x, y) + d(y, z)$

(The non-negativity condition follows from the others.) This is what lets you say that one pair of things is farther apart than another, compute lengths of paths (via the infimum of lengths of connecting curves in length spaces or geodesic spaces), and so on.

### In Relational / Dynamic Geometry Contexts

Recent work on emergent geometry from relational dynamics (e.g., Graph Dynamical Geometrization and related Formal Relational Dynamics frameworks) treats geometry as arising from the dynamics of relations rather than being presupposed as a fixed background. In those settings:

- The metric (often realized as a squared Euclidean distance matrix induced by a kernel/propagator of a dynamical operator on a graph or relational structure) is still the component that quantifies magnitudes and “how far.”
- It is distinguished from topological structure (connectivity, adjacency, what is linked to what, independent of distances) and from dynamic structure (how configurations, boundaries, or relations evolve over time).

In short, the metric is the relational/dynamic geometry’s answer to the question of separation by magnitude.

**In Relational Dynamic Geometry (RDG), the metric that quantifies how far apart two things are is the RDG distance $d_\Gamma$ (closure distance / closure-generated metric).**

It is induced by the dynamics rather than being a fixed background. From the Closure Stability Conjecture materials:

$$
d_\Gamma(A, B) := \inf_{\substack{x(0)=A \\ x(T)=B}} \int_0^T C_\Gamma\bigl(x(t), \dot{x}(t)\bigr)\, dt
$$

where $C_\Gamma$ is the coherence density induced by the closure flow $\Gamma = \{\Gamma_t\}$. A curve that attains the infimum is a **closure geodesic**.

A concrete prototype metric on the state space (which descends to a true metric on the quotient by the flow) is the discounted trajectory separation:

$$
d_\Gamma(x, y) = \int_0^\infty e^{-\lambda t} \,\|\Gamma_t(x) - \Gamma_t(y)\| \, dt, \qquad \lambda > 0.
$$

In the SID formulation (Structure–Interaction–Dynamics on the directed relational substrate), the effective radial/relational distance $r_{\mathrm{rel}}$ is likewise emergent: it is measured by the density of closure events (SID/PED closures), not by a pre-existing Euclidean coordinate. Intensity then falls as $1/r_{\mathrm{rel}}^2$ because the number of admissible closure pathways scales with the square of that relational measure.

In short, within RDG the “how far” rule is this dynamics-induced $d_\Gamma$: geometry (including distance) is the closure of the relational dynamics, not a prior container.
