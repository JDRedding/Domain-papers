# Hodge conjecture
The **Hodge conjecture** is one of the seven Clay Millennium Prize Problems. It asks whether certain topological invariants of a smooth complex projective variety always come from actual algebraic subvarieties.

### Informal idea
A complex projective variety $X$ (think: the solution set of polynomial equations inside complex projective space) has two kinds of “cycles”:
- **Algebraic cycles**: subvarieties cut out by extra polynomial equations.
- **Hodge classes**: certain cohomology classes that look as if they *should* come from algebraic cycles, because they have the right Hodge type $(p,p)$ and are rational.

The conjecture says these two collections coincide (after allowing rational linear combinations). In other words: every cohomology class that *looks algebraic* really *is algebraic*.

### Precise statement
Let $X$ be a smooth projective variety over $\mathbb{C}$. The Hodge decomposition gives

$$
H^{2p}(X,\mathbb{C})=\bigoplus_{r+s=2p}H^{r,s}(X).
$$

A class $\alpha\in H^{2p}(X,\mathbb{Q})$ is called a **Hodge class** if its image in complex cohomology lies in the $(p,p)$ summand:

$$
{Hdg}^p(X)=H^{2p}(X,\mathbb{Q})\cap H^{p,p}(X).
$$

Every algebraic cycle of codimension $p$ produces a Hodge class via the cycle class map. The Hodge conjecture asserts that the converse holds:

> Every Hodge class is a $\mathbb{Q}$-linear combination of classes of algebraic cycles of codimension $p$.

Equivalently, the cycle class map

$$
{CH}^p(X)_{\mathbb{Q}}\to{Hdg}^p(X)
$$

is surjective.

(The original integral version Hodge proposed is false; Atiyah–Hirzebruch produced counterexamples. The conjecture is therefore stated with rational coefficients.)

### Known cases
- Codimension 1 ($p=1$): true by the Lefschetz $(1,1)$-theorem.
- Surfaces and threefolds: true in many situations.
- Certain fourfolds (uniruled, some complete intersections, Fermat hypersurfaces of prime degree).
- Abelian varieties of low dimension, some Calabi–Yau varieties, etc.

It remains open in general already in dimension 4. The assumption that $X$ is *projective algebraic* cannot be dropped: there are counterexamples among compact Kähler manifolds that are not algebraic.

### Status
Still unsolved. A correct proof or counterexample is worth $1 million from the Clay Mathematics Institute. Many claimed proofs have appeared on arXiv; none has been accepted by the community.

The conjecture sits at the intersection of algebraic geometry, complex geometry, and topology. A proof would give a precise dictionary between “analytic/topological” and “algebraic” descriptions of cycles on projective varieties; a counterexample would show that extra transcendental phenomena exist even in this highly algebraic setting.
