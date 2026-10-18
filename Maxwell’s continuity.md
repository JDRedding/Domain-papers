# Maxwell’s continuity

### Group (H) – Continuity (1 equation)

The continuity equation (local charge conservation) is

$$
\frac{\partial\rho}{\partial t}+\frac{\partial J_x}{\partial x}+\frac{\partial J_y}{\partial y}+\frac{\partial J_z}{\partial z}=0,
$$

or, in compact vector form,

$$
\frac{\partial\rho}{\partial t}+\nabla\cdot\mathbf{J}=0.
$$

**RDGMFEQ SID–PED form for Group (H, Continuity)**

- **SID source field:** charge density $\rho_\text{SID}(x,t)$
- **PED field:** current density $\mathbf{J}_\text{PED}(x,t)$

In this notation the continuity equation becomes

$$
\partial_t\rho_\text{SID}(x,t)+\nabla_\text{PED}\cdot\mathbf{J}_\text{PED}(x,t)=0,
$$

or, componentwise,

$$
\partial_t\rho_\text{SID}(x,t)+\partial_i J_i(\text{PED};\,x,t)=0,\qquad i\in\{x,y,z\}.
$$

**Physical content**

- $\rho(\mathbf{r},t)$: volume charge density (charge per unit volume).
- $\mathbf{J}(\mathbf{r},t)=(J_x,J_y,J_z)$: current density (charge transported per unit area per unit time).
- $\nabla\cdot\mathbf{J}$: net outward flux of current through the surface of an infinitesimal volume.

A positive divergence (net outflow) requires the local charge density to decrease at the compensating rate $\partial\rho/\partial t<0$. Every local change in $\rho$ is exactly accounted for by the flux of $\mathbf{J}$; total charge is conserved.

**Integral form**

Integrating over a finite volume $V$ with boundary surface $S$ and applying the divergence theorem yields the equivalent global statement

$$
\frac{d}{dt}\int_V\rho\,d^3r=-\oint_S\mathbf{J}\cdot d\mathbf{a}.
$$

The time rate of change of the total charge contained in $V$ equals the negative of the net current leaving through the boundary.

### Vector form of Group (G, Free Electricity)

The given equation is

$$
\rho+\frac{\partial D_x}{\partial x}+\frac{\partial D_y}{\partial y}+\frac{\partial D_z}{\partial z}=0.
$$

In compact vector notation this is

$$
\rho+\nabla\cdot\mathbf{D}=0\quad\Longleftrightarrow\quad\nabla\cdot\mathbf{D}=-\rho.
$$

This is a Gauss-type constraint relating the free charge density to the divergence of the electric displacement field. (Note: the conventional statement of Gauss’s law in SI units is $\nabla\cdot\mathbf{D}=\rho_\text{f}$. The form above is therefore equivalent to the standard relation provided the charge density appearing here is identified with $-\rho_\text{f}$, or else a sign convention specific to the surrounding framework is in use.)

**RDGMFEQ SID–PED placement for Group (G, Free Electricity)**

- **SID source field:** charge density $\rho_\text{SID}(x,t)$
- **PED field:** electric displacement $\mathbf{D}_\text{PED}(x,t)$

In this notation Group (G, Free Electricity) reads

$$
\rho_\text{SID}(x,t)+\nabla_\text{PED}\cdot\mathbf{D}_\text{PED}(x,t)=0,
$$

or, in components,

$$
\rho_\text{SID}(x,t)+\partial_i D_i(\text{PED};\,x,t)=0,\qquad i\in\{x,y,z\}.
$$

The PED divergence of the displacement is thereby tied directly to the SID free-charge density, enforcing local source–field balance.

**Relation to Maxwell’s equations**

When the full set of Maxwell equations is satisfied, the continuity equation is not independent: taking the divergence of the Ampère–Maxwell law and invoking the Gauss constraint on $\mathbf{D}$ immediately produces $\partial\rho/\partial t+\nabla\cdot\mathbf{J}=0$. In four-vector notation the same conservation law is the single statement $\partial_\mu J^\mu=0$.

Groups (G, Free Electricity) and (H, Continuity) are complementary: Group (G, Free Electricity) fixes the instantaneous source–field relation for the electric displacement, while Group (H, Continuity) enforces that any subsequent evolution of the charge density remains consistent with the current that transports charge.
