# Maxwell’s Continuity
- 537 Electricity and electronics / electromagnetism (continuity equation)

**Group (H) – Continuity (1 equation)**
*(Treatise 1873 residual convention)*

The continuity equation (local charge conservation) is

$$
\frac{\partial \rho}{\partial t} + \frac{\partial J_x}{\partial x} + \frac{\partial J_y}{\partial y} + \frac{\partial J_z}{\partial z} = 0,
$$

or, in compact vector form,

$$
\frac{\partial \rho}{\partial t} + \nabla \cdot \mathbf{J} = 0.
$$

**RDGMFEQ SID–PED form for Group (H, Continuity)**

- SID source field: charge density $\rho_{\mathrm{SID}}(x,t)$
- PED field: current density $\mathbf{J}_{\mathrm{PED}}(x,t)$

In this notation the continuity equation becomes

$$
\partial_t \rho_{\mathrm{SID}}(x,t) + \nabla_{\mathrm{PED}} \cdot \mathbf{J}_{\mathrm{PED}}(x,t) = 0,
$$

or, componentwise,

$$
\partial_t \rho_{\mathrm{SID}}(x,t) + \partial_i J_i(\mathrm{PED};x,t) = 0,
\qquad i \in \{x,y,z\}.
$$

**Physical content**

- $\rho(\mathbf{r},t)$: volume charge density (charge per unit volume).
- $\mathbf{J}(\mathbf{r},t) = (J_x, J_y, J_z)$: current density (charge transported per unit area per unit time).
- $\nabla \cdot \mathbf{J}$: net outward flux of current through the surface of an infinitesimal volume.

A positive divergence (net outflow) requires the local charge density to decrease at the compensating rate
$\partial \rho / \partial t < 0$. Every local change in $\rho$ is exactly balanced by the flux of $\mathbf{J}$;
total charge is conserved.

**Integral form**

Integrating over a finite volume $V$ with boundary surface $S$ and applying the divergence theorem yields

$$
\frac{d}{dt} \int_V \rho \, d^3 r = - \oint_S \mathbf{J} \cdot d\mathbf{a}.
$$

The time rate of change of the total charge contained in $V$ equals the negative of the net current leaving through the boundary.
