**Triangle Inequality for the Coherence Distance $d_\Gamma$**

Under the natural conditions that make the construction a length structure (or, in the case of the explicit prototype below), $d_\Gamma$ satisfies the triangle inequality.

### Action-based definition

Define

$$
d_\Gamma(A,B)
:=
\inf_{\substack{x(0)=A\\ x(T)=B}}
\int_0^T
C_\Gamma\bigl(x(t),\dot x(t)\bigr)\,dt.
$$

This is the standard construction of a path metric from a non-negative integrand. Whenever $C_\Gamma\ge 0$ and the class of admissible absolutely continuous curves is closed under concatenation, the triangle inequality holds by construction:

- Let $\gamma_{AB}$ and $\gamma_{BC}$ be near-minimizing curves from $A$ to $B$ and from $B$ to $C$ respectively.
- Their concatenation is an admissible curve from $A$ to $C$ whose action can be made arbitrarily close to $d_\Gamma(A,B)+d_\Gamma(B,C)$.
- Hence $d_\Gamma(A,C)\le d_\Gamma(A,B)+d_\Gamma(B,C)$.

(The remaining metric axioms—non-negativity and $d(A,A)=0$—follow at once from $C_\Gamma\ge 0$. Symmetry holds when the integrand is insensitive to orientation, or when one works with undirected curves.) The same reasoning underlies the triangle inequality for Riemannian geodesic distance, Finsler distance, and any other length metric.

### Explicit prototype

For the discounted trajectory-separation prototype

$$
d_\Gamma(x,y) =
\int_0^\infty
e^{-\lambda t}\,
\|\Gamma_t(x)-\Gamma_t(y)\|\,dt,
$$

the Closure Stability Conjecture document records the following statement.

**Theorem**  
Under the growth and integrability hypotheses, $d_\Gamma$ is a pseudo-metric on $P$.

The triangle inequality follows immediately: the ordinary triangle inequality of the underlying norm passes inside the integral. On the quotient by the flow equivalence relation the pseudo-metric descends to a true metric.

In summary, both the variational definition and the concrete prototype are constructed so that the triangle inequality holds whenever $C_\Gamma$ is a non-negative coherence density that induces a well-defined length structure.
