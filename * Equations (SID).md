## 0. RDG object
An equation is an RDG. SID is the nested geometric slice of that RDG. PED and Q, named only so the SID slice is not asked to carry them.

An equation is a directed relational geometry

$$
G=(\mathrm{Obj},\mathrm{Rel}),\qquad \mathrm{Rel}\subseteq\mathrm{Obj}\times\mathrm{Obj}.
$$

Nodes are the equated quantities and the intermediate expressions. Edges are definitional, operational, or inferred. The classical statement `lhs = rhs` is the balance constraint on this geometry, the neutral manifold $F=0$, not itself a SID slot. Solution sets are $\mathcal{S}(R)=\{x\mid f(x)=0\ \forall f\in I_R\}$. Recomputation of dependent nodes, carriers, and solution sets is $\Gamma$, external to the SID slice.

SID is the projection

$$
\mathrm{SID}(G)=(S(G),I(G),D(G)),\qquad S(G)\subseteq I(G)\subseteq D(G)\subseteq G,
$$

with $S,I,D$ extensive, idempotent, and monotone. $S$ is the invariant skeleton. $I$ is operational closure. $D$ is path completion.

### 1. Top-level equation
Obj = {lhs, rhs, and every subexpression}.  
Rel_S = definitional edges (how each expression is built).  
Rel_I = operational edges (the couplings the equality uses).  
Rel_D = inferred edges (paths closed by substitution or rewriting).

SID.S  
skeleton: the two sides and their definitional construction.

SID.I  
operational link that asserts the balance `lhs → rhs` under the equality constraint.

SID.D  
path completion of that link: every rewrite that adds an inferred edge without leaving $G$.

```
Obj:  lhs ●────────● rhs
       │  Rel_S     │
       └── Rel_I ───┘
            └── Rel_D (completed paths)
```

PED.Evaluation measures flux equality across the balance node. Q moderates continuity. Neither is part of SID(G).

### 2. Identity, conditional, functional
Identity (`a + b = b + a`).  
Obj = {a, b, a+b, b+a}.  
SID.S = commutative construction edges (invariant for every value).  
SID.I = the symmetry link `a+b → b+a`.  
SID.D = the completed swap path. No proper subset of the domain is cut out.  
$\mathcal{S}(R)$ is the whole domain.

Conditional (`x - 5 = 4`).  
Obj = {x, 5, x-5, 4}.  
SID.S = definitional edge `x,5 → x-5`.  
SID.I = operational coupling of that difference to the constant.  
SID.D = isolation path (add 5), an inferred edge.  
$\mathcal{S}(R)$ is a proper subset. PED.Power does the flux redistribution; SID only closes the path.

Functional (`f(x) = g(x)`).  
SID.S = domain/range skeleton of each function.  
SID.I = pointwise operational coupling.  
SID.D = completed paths under composition or inversion where defined. Nested coupling of a composite is an interaction edge, matching your function notes.

### 3. Algebraic, transcendental, differential
Algebraic (`a_n x^n + \cdots + a_0 = 0`).  
SID.S = monomial nodes and coefficient edges; the zero node is the balance.  
SID.I = operational sum-to-zero coupling.  
SID.D = degree-reduction and factor paths.  
Carrier $\Phi(R)$ is the polynomial. $\mathcal{S}(R)$ is its root set.

Transcendental (`sin x = cos x - 1/2`).  
SID.S = function nodes and their definitional edges.  
SID.I = operational coupling between transcendental expressions.  
SID.D = identity rewrites and inverse-image paths. No radical closure is claimed inside D.

Differential (`dy/dx = f(x)`).  
SID.S = infinitesimal relational skeleton (the derivative node and the independent-variable node).  
SID.I = operational coupling of the derivative to $f$.  
SID.D = integration or separation paths. Continuous evolution of the flux sits in PED.Dynamics, as in your differential note, not in SID.D.

### 4. Degree
Linear (`ax + b = 0`).  
SID.S = nodes {a, x, b, ax+b, 0} with definitional edges.  
SID.I = inversion of the coupling (the operational edge your notes assign to interaction).  
SID.D = completed isolation path: subtract b, divide by a. One point in $\mathcal{S}(R)$.

Quadratic (`ax^2 + bx + c = 0`).  
SID.S = degree-2 skeleton.  
SID.I = sum-to-zero coupling.  
SID.D = curvature path: complete-the-square or discriminant edges, then root edges. Amplification stays in PED.Power.

Cubic.  
SID.S = degree-3 skeleton.  
SID.I = coupling to zero.  
SID.D = depress-by-shift path, then Cardano path.

Quartic.  
SID.S = degree-4 skeleton.  
SID.I = coupling to zero.  
SID.D = remove-cubic path, resolvent-cubic path, quadratic-factor paths.

In each case $|S| \le |I| \le |D|$, and a root adds a factor edge inside D while the balance constraint is unchanged.

### 5. Several unknowns
Obj = the variables and every monomial.  
SID.S = monomial skeleton.  
SID.I = multi-term operational coupling to zero.  
SID.D = paths that isolate one variable with the others parametric.  
$\mathcal{S}(R)$ is a hypersurface, not a finite root list.

### 6. Systems
Obj = all sides of all equations.  
SID.S = per-equation skeletons.  
SID.I = the operational edges inside each equation.  
SID.D = cross-equation path completion (substitution, elimination, row reduction). This is the multi-node network your notes call SID.Dynamics.  
Simultaneous flux resolution is PED.Evaluation. Continuity across equations is Q. The solution is the intersection of the individual $\mathcal{S}(R_i)$.

```
E1 ●─── I ───●
E2 ●─── I ───●
E3 ●─── I ───●
 └──── D (cross paths) ────┘
```

### 7. Special forms
Binomial (`x^n - a = 0`).  
SID.S = power node and constant node.  
SID.I = power-to-constant coupling.  
SID.D = n root-extraction paths in ℂ, counted with multiplicity.

Reciprocal (palindromic coefficients).  
SID.S = coefficient skeleton invariant under `x ↔ 1/x`.  
SID.I = that symmetry as an operational link.  
SID.D = the path `z = x + 1/x`, halving degree. The symmetry is structural; the substitution is dynamic closure.

### 8. Theorems as constraints on the projection
Normalization: scaling the carrier does not change Rel_I; it only rescales edges inside an equivalent G.  
Factorization: a root adds the edge `(x - x_0)` inside D; S and the balance constraint stay fixed.  
Fundamental theorem: degree n gives $|\mathcal{S}(R)|=n$ in ℂ, counted in D.  
Multiplicity: `(x-x_0)^r` divides the carrier iff the first `r-1` derivative nodes also meet the balance at `x_0`.  
Viète: elementary symmetric edges relate the root tuple to the coefficient tuple inside I.  
Conjugate pairs: real coefficients force D to be closed under conjugation.  
Insolvability: for general degree ≥ 5, radical path-completion inside D does not exhaust $\mathcal{S}(R)$.

### 9. Integer coefficients
SID.S = integer coefficient skeleton.  
SID.I = coupling to zero.  
SID.D = evaluation paths on rational-root candidates (divisors of the constant term over divisors of the leading coefficient). Failure of a candidate adds no edge.

### 10. Closing
```
G = (Obj, Rel)
┌──────────────────────────────────────┐
│ S  invariant skeleton        Rel_S   │
│ I  operational closure       Rel_I   │
│ D  path completion           Rel_D   │
│    S ⊆ I ⊆ D ⊆ G                     │
│ balance F = 0   solution set S(R)    │
│ Γ recomputes carriers and S(R)       │
└──────────────────────────────────────┘
PED evaluates and redistributes flux.
Q moderates continuity and admissibility.
```
