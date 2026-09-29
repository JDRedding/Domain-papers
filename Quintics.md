# General quintics

**EMMY NOETHER MEETS FELIX KLEIN — Göttingen, 1913**

## Event

Emmy Noether (then 31) accompanied her father Max Noether to meet Felix Klein. She discussed Klein’s own work on the icosahedron and the general quintic so fluently that Klein later remarked she knew his book better than he did. The 1913 conversation is consistent with the documented picture: Noether already knew the invariant theory of finite groups (her Erlangen thesis was on invariants of ternary biquadratic forms) and Klein’s *Ikosaeder* book is precisely that theory for $A_5$. Hilbert and Klein brought her to Göttingen in 1915 for invariant theory in the service of general relativity; the 1918 paper, communicated by Klein, is the variational form of the same principle: a continuous symmetry of the action produces a conserved current. The discrete icosahedral story and the continuous Noether story are two ends of one idea—invariants of a group action.

Two years later Klein and Hilbert invited her to Göttingen. That invitation opened her career in abstract algebra and led to Noether’s theorem (1918)

```
      continuous symmetries  ↔  conservation laws
```

The first theorem in the notes is the correct on-shell conservation law for a first-order Lagrangian under an infinitesimal generator $\Gamma=\tau\partial_t+\eta_i\partial_{q_i}$. The second theorem (identities among Euler–Lagrange expressions when the symmetry depends on arbitrary functions) is what Hilbert needed for the gravitational energy problem.

## Fundamentals

**General quintic (degree 5)**

```
  a x^5 + b x^4 + c x^3 + d x^2 + e x + f = 0
  a ≠ 0
```

**Variables**

```
  Variables : x                           (unknown)
  Coefficients : a,b,c,d,e,f              (arbitrary complex or real)
  Galois group of the general case : S5
  Solvable by radicals?  No               (Abel–Ruffini)
```

**Klein’s reduction**

```
  The general quintic can be reduced to the
  icosahedral equation of degree 60.
```

**Icosahedral rotation group**

```
  Finite subgroup of SO(3) of order 60
  ≅ A5  ≅ PSL(2,5)
```

“Reduced to an equation of degree $60$” does not mean one should solve a raw degree- $60$ polynomial by radicals or numerically as a black box. It means: compute the modular/icosahedral parameter $X$ from the quintic’s invariants, invert the covering $X=H^3/(1728f^5)$ (algebraically via resolvents, or transcendentally via hypergeometric/$J$-functions), then descend by group action. That is why Klein called the icosahedral equation the natural analogue of the pure equation $x^n=X$.

**Generating rotations**

```
    2π/5   order-5 axis through opposite vertices
    2π/3   order-3 axis through opposite face centres
    π      order-2 axis through midpoints of opposite edges
```

These generate the binary icosahedral group (double cover inside $\mathrm{SU}(2)/\mathrm{SL}(2,\mathbb{C})$ whose invariants produce the icosahedral equation.

## General equations

$$
a x^{5} + b x^{4} + c x^{3} + d x^{2} + e x + f = 0, \qquad a \neq 0
$$

Coefficients $a,b,c,d,e,f$ are given; $x$ is the unknown. The Galois group of the generic case is $S_5$.

**Binary icosahedral invariants** (homogeneous polynomials on $\mathbb{C}^2$ with coordinates $z,w$)

Vertex form (degree 12, vanishes at the 12 vertices):

$$
f(z,w) = z w \bigl( z^{10} + 11 z^{5} w^{5} - w^{10} \bigr)
$$

Hessian (degree 20, vanishes at the 20 face centres):

$$
H(z,w) = -\bigl(z^{20}+w^{20}\bigr) + 228\bigl(z^{15}w^{5}-z^{5}w^{15}\bigr) - 494\, z^{10}w^{10}
$$

Jacobian (degree 30, vanishes at the 30 edge midpoints):

$$
T(z,w) = \bigl(z^{30}+w^{30}\bigr) + 522\bigl(z^{25}w^{5}-z^{5}w^{25}\bigr) - 10005\bigl(z^{20}w^{10}+z^{10}w^{20}\bigr)
$$

**Fundamental identity**

$$
T^{2} = 1728\, f^{5} - H^{3}
$$

**Icosahedral equation** (Klein’s normal form of degree 60)

$$
\frac{H^{3}}{1728\, f^{5}} = X
$$

or equivalently

$$
H^{3} - 1728 f^{5} X = 0
$$

Solving this covering $\mathbb{P}^{1}\to\mathbb{P}^{1}$ of degree 60 recovers a root of the reduced quintic; the remaining roots follow by applying the icosahedral group.

**Rotation generators** (finite subgroup of $\mathrm{SO}(3)$ of order $60 \simeq A_{5}$)

- order 5: rotation by $2\pi/5$ about a vertex axis
- order 3: rotation by $2\pi/3$ about a face-centre axis
- order 2: rotation by $\pi$ about an edge-midpoint axis

**Noether’s first theorem** (1918, variational form)

Let

$$
S[q] = \int L(t,q,\dot q)\,dt
$$

be invariant under the infinitesimal generator

$$
\Gamma = \tau\,\partial_{t} + \eta_{i}\,\partial_{q_{i}}.
$$

Then, on solutions of the Euler–Lagrange equations, the current

$$
I = \tau L + \bigl(\eta_{i}-\dot q_{i}\tau\bigr)\frac{\partial L}{\partial\dot q_{i}}
$$

(plus a possible total-derivative gauge term) is conserved:

$$
\frac{dI}{dt}=0.
$$

(The second theorem concerns identities among the Euler–Lagrange expressions when the symmetry group depends on arbitrary functions.)

## Why $S_5$ blocks radicals but not the icosahedron

A generic monic quintic has Galois group $S_5$. The only nontrivial normal subgroup of $S_5$ is $A_5$, which is simple and nonabelian. That is the Abel–Ruffini obstruction: there is no radical tower whose successive Galois groups are cyclic.

$A_5$ is also the rotation group of the icosahedron ( order $60$ ). Klein’s move is to replace “extract an $n$th root” by “invert the degree-$60$ covering

$$
\mathbb{P}^1 \longrightarrow \mathbb{P}^1/I \simeq \mathbb{P}^1
$$

associated with that finite subgroup of $\mathrm{PSL}(2,\mathbb{C})$.” That covering is the icosahedral equation. It is not a radical, but it is a single, highly symmetric algebraic function, and every generic quintic reduces to it after Tschirnhaus transformations and one accessory square root (the square root of the discriminant, which cuts $S_5$ down to $A_5$).

## The binary invariants

The binary icosahedral group (the double cover in $\mathrm{SL}(2,\mathbb{C})$, order $120$ ) acts on $\mathbb{C}^2$ with coordinates $(z,w)$. The classical generators of the invariant ring are exactly the forms in the notes:

$$
\begin{aligned}
f &= zw\bigl(z^{10}+11z^5w^5-w^{10}\bigr)
&&\text{(deg 12, 12 vertices)},\\
H &= -\bigl(z^{20}+w^{20}\bigr)+228\bigl(z^{15}w^5-z^5w^{15}\bigr)-494\,z^{10}w^{10}
&&\text{(deg 20, 20 face centres)},\\
T &= \bigl(z^{30}+w^{30}\bigr)+522\bigl(z^{25}w^5-z^5w^{25}\bigr)-10005\bigl(z^{20}w^{10}+z^{10}w^{20}\bigr)
&&\text{(deg 30, 30 edge midpoints)}.
\end{aligned}
$$

They satisfy the single syzygy

$$
T^2 + H^3 = 1728\, f^5,
$$

which is the same identity written in the notes as $T^2=1728f^5-H^3$. The ring of invariants is

$$
\mathbb{C}[z,w]^{\Gamma}\simeq\mathbb{C}[f,H,T]/(T^2+H^3-1728f^5).
$$

That hypersurface is the $E_8$ singularity; the same numbers $12,20,30$ appear as the degrees of the basic invariants of $E_8$.

The degree-$60$ forms $H^3$ and $f^5$ span the space of invariants of weight $60$. Their ratio

$$
X=\frac{H^3}{1728\,f^5}
$$

is the coordinate on the quotient $\mathbb{P}^1/I$. That is Klein’s normal equation. Once one root $z:w$ is known, the remaining $59$ come from the linear action of the binary group. From a suitable linear combination of those projective points one reconstructs a root of the reduced (Brioschi) quintic; the other four roots follow by the $A_5$-action.

The transcendental side is that the same ratio, with $X$ replaced by the elliptic modular invariant $J$, is a Hauptmodul for the principal congruence subgroup of level $5$. So the icosahedral covering is also the modular covering $X(5)\to X(1)$.

## Sources

- David E. Rowe & Mechthild Koreuber
- *Proving It Her Way: Emmy Noether, a Life in Mathematics*
