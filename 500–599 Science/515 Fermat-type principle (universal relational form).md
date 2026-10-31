# Fermat-type principle
- 515 - Analysis / variational principles.

A Fermat-type principle is a variational statement that the physical path of a ray (or signal) between two points (or between a point and a curve) makes the travel time — or an appropriate generalization such as optical path length, phase, or arrival time — stationary with respect to small variations of the path. Classical Fermat’s principle of optics is in optics, but the relational/universal framing is mathematical.

## 1. Classical isotropic optics — variational structure

The functional

$$
S[\gamma]=\int_\gamma n(\mathbf{r})\,ds
$$

is a Finsler length functional with Finsler metric

$$
F(\mathbf{r},\dot{\mathbf{r}})=n(\mathbf{r})\|\dot{\mathbf{r}}\|.
$$

The stationary-curve condition $\delta S[\gamma]=0$ yields the Euler–Lagrange equation

$$
\frac{d}{ds}\Bigl(n\frac{\dot{\mathbf{r}}}{\|\dot{\mathbf{r}}\|}\Bigr)=\nabla n.
$$

This is equivalent to the ray equation

$$
\frac{d}{ds}(n\,\hat{\mathbf{t}})=\nabla n,
$$

where $\hat{\mathbf{t}}$ is the unit tangent.

**RDG mapping**  
- Structure: $n(\mathbf{r})$  
- Interaction: $\nabla n$  
- Dynamics: stationary curves of $S[\gamma]$

This is the pure SID triad with no additional field degrees of freedom.

## 2. Snell’s law — stationary point of a one-parameter family

The standard one-parameter reduction is

$$
t(x)=\frac{n_1}{c}\sqrt{x^2+a^2}+\frac{n_2}{c}\sqrt{(L-x)^2+b^2}.
$$

Stationarity $\frac{dt}{dx}=0$ is equivalent to

$$
n_1\sin\theta_1=n_2\sin\theta_2.
$$

The interface constraint collapses the infinite-dimensional path space to the single free variable $x$.

**RDG mapping**  
- Structure: piecewise-constant $n$  
- Interaction: discontinuity of $n$ across the interface  
- Dynamics: stationary crossing point $x$

Snell’s law is the SID-Interaction jump condition.

## 3. Perlick’s general-relativistic Fermat principle

The arrival-time functional

$$
T(\gamma)=s\quad\text{with}\quad\gamma(b)=\alpha(s)
$$

is defined on the space of future-directed null curves from $p$ to the observer’s world-line $\alpha$.

Perlick’s theorem states that the critical points of $T$ under admissible variations through null curves are precisely the null geodesics. The admissible curves satisfy the constraint

$$
g(\dot{\gamma},\dot{\gamma})=0.
$$

The first variation of arrival time is equivalent to the geodesic equation together with the null constraint.

**RDG mapping**  
- Structure: Lorentzian metric $g$  
- Interaction: Levi-Civita connection $\nabla$ (Christoffel symbols)  
- Dynamics: null geodesics as stationary curves of arrival time

This is the geometric realization of Fermat’s principle in which the optical potential is the spacetime metric itself.

## 4. Gravitational lensing — Fermat potential on the lens plane

The thin-lens arrival-time surface

$$
\tau(\boldsymbol{\theta};\boldsymbol{\beta})=\frac12|\boldsymbol{\theta}-\boldsymbol{\beta}|^2-\psi(\boldsymbol{\theta})
$$

is a two-dimensional reduced action functional.

Stationarity $\nabla_{\boldsymbol{\theta}}\tau=0$ recovers the lens equation

$$
\boldsymbol{\beta}=\boldsymbol{\theta}-\nabla\psi(\boldsymbol{\theta}).
$$

The Hessian of $\tau$ classifies the images (minima, saddles, maxima).

**RDG mapping**  
- Structure: effective potential $\psi(\boldsymbol{\theta})$  
- Interaction: deflection field $\nabla\psi$  
- Dynamics: stationary points of $\tau$

This is the SID-Dynamics reduction of null geodesics projected onto the lens plane.

## 5. Unified mathematical form

All four formulations mathematically instantiate a single variational archetype: a Fermat-type principle is a stationary-arrival condition for curves whose evolution is governed by a scalar or geometric optical potential. 

All four cases fit the general variational template

$$
\delta\int_\gamma\Phi(x,\dot{x})\,ds=0,
$$

where  
- classical optics: $\Phi=n(\mathbf{r})\|\dot{\mathbf{r}}\|$;  
- Snell’s law: $\Phi$ reduces to a two-segment sum;  
- GR: $\Phi$ is encoded implicitly by the null constraint $g(\dot{\gamma},\dot{\gamma})=0$;  
- lensing: $\Phi$ reduces to the Fermat potential $\tau(\boldsymbol{\theta})$.

Structural unity:
> A Fermat-type principle is a stationary-arrival condition for curves whose evolution is governed by a scalar or geometric optical potential.

## 6. RDG consolidation (operator-clean)

In preferred notation the universal relational form reads

$$
\text{Evolution}=\delta\Bigl(\int\text{SID}\otimes\text{PED}\,ds\Bigr)=0,
$$

where  
- SID.Structure encodes the geometry (index field, metric, or lens potential);  
- SID.Interaction encodes the gradient or connection;  
- SID.Dynamics is the stationary-curve condition;  
- PED.Power/Evaluation/Dynamics supply the field-side interpretation of the same operator.

This is the universal relational form of Fermat-type principles.
