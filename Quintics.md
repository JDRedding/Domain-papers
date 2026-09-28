
# General quintics
EMMY NOETHER MEETS FELIX KLEIN — Göttingen, 1913

## Event

  Emmy Noether (then 31) accompanied her father Max Noether
  to meet Felix Klein. She discussed Klein’s own work on
  the icosahedron and the general quintic so fluently that
  Klein later remarked she knew his book better than he did.

  Two years later Klein and Hilbert invited her to Göttingen.
  That invitation opened her career in abstract algebra
  and led to Noether’s theorem (1918)

```
      continuous symmetries  ↔  conservation laws
```

## FUNDAMENTALS

General quintic (degree 5)
```
  a x^5 + b x^4 + c x^3 + d x^2 + e x + f = 0
  a ≠ 0
```

Variables
```
  Variables : x                           (unknown)
  Coefficients : a,b,c,d,e,f              (arbitrary complex or real)
  Galois group of the general case : S5
  Solvable by radicals?  No               (Abel–Ruffini)
```

Klein’s reduction
```
  The general quintic can be reduced to the
  icosahedral equation of degree 60.
```

Icosahedral rotation group
```
  Finite subgroup of SO(3) of order 60
  ≅ A5  ≅ PSL(2,5)
```

  Generating rotations
  ```
    2π/5   order-5 axis through opposite vertices
    2π/3   order-3 axis through opposite face centres
    π      order-2 axis through midpoints of opposite edges
```

  These generate the binary icosahedral group
  (double cover inside SU(2) / SL(2,C))
  whose invariants produce the icosahedral equation.
  
## **General equations**

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

**Rotation generators** (finite subgroup of $\mathrm{SO}(3)$ of order 60 $\simeq A_{5}$)
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

## Sources
-  David E. Rowe & Mechthild Koreuber
-  “Proving It Her Way: Emmy Noether, a Life in Mathematics”
