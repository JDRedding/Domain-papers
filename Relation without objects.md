# Relation without objects

> **A “relation without objects” that is a domain-free closure operator whose fixed points constitute the domain is precisely a _nucleus_ on a lattice or locale.**

Formally:

- Start with a complete lattice or frame $L$.
- Define a **closure operator / nucleus**
 
$$
\mathrm{cl} : L \to L
$$
  
  such that for all $x \in L$:
  - **Extensive:** $x \le \mathrm{cl}(x)$
  - **Monotone:** $x \le y \Rightarrow \mathrm{cl}(x) \le \mathrm{cl}(y)$
  - **Idempotent:** $\mathrm{cl}(\mathrm{cl}(x)) = \mathrm{cl}(x)$

- The **fixed points**:
  
$$
F = \{ x \in L \mid \mathrm{cl}(x) = x \}
$$
  
  form a subframe/sub-lattice that **is the domain**, reconstructed purely from the operator.

No underlying set of “objects” is assumed; the “objects” are exactly the closed elements—**the stabilized fixed points of the nucleus**.

So in the cleanest conceptual terms:

> It’s a **point-free closure operator (nucleus)** on a lattice/locale, where the domain is nothing over and above its lattice of fixed points.
