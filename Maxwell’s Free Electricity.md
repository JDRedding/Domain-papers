# Maxwell’s Free Electricity
**Group (G) — Free Electricity (1 equation)**

The free-electricity constraint (the macroscopic Gauss law for free charge) appears in residual form as

$$
\rho + \frac{\partial D_x}{\partial x}+ \frac{\partial D_y}{\partial y} + \frac{\partial D_z}{\partial z} = 0.
$$

In compact vector notation this is

$$
\rho + \nabla \cdot \mathbf{D} = 0
\quad\Longleftrightarrow\quad
\nabla \cdot \mathbf{D} = -\rho.
$$

(The overall sign of $\rho$ is a residual-convention choice; the physically conventional statement of the same law is written $\nabla \cdot \mathbf{D} = \rho_{\mathrm{f}}$.)

**Cartesian components.** Expanding the divergence recovers the original line:

$$
\frac{\partial D_x}{\partial x} + \frac{\partial D_y}{\partial y} + \frac{\partial D_z}{\partial z} = -\rho
$$

or, equivalently, the residual

$$
\rho - \frac{\partial D_x}{\partial x} - \frac{\partial D_y}{\partial y} - \frac{\partial D_z}{\partial z} = 0.
$$

**Physical content.**  
The equation asserts that the free volume charge density is the sole source of the electric-displacement field $\mathbf{D}$. Bound charges (arising from polarization) are already absorbed into the definition of $\mathbf{D}$, so only free charge appears on the right-hand side. In integral form the same statement reads

$$
\oint_{\partial V} \mathbf{D}\cdot\mathrm{d}\mathbf{S} = \int_V \rho_{\mathrm{f}}\,\mathrm{d}V,
$$

i.e., the net flux of $\mathbf{D}$ through any closed surface equals the free charge enclosed.

**RDGMFEQ SID–PED placement.**  
Within the RDGMFEQ schema the same residual is realized by pairing a source-interaction-dynamics (SID) charge density with a power-evaluation-dynamics (PED) displacement field:

$$
\rho_{\mathrm{SID}}(x,t) + \nabla_{\mathrm{PED}}\cdot\mathbf{D}_{\mathrm{PED}}(x,t) = 0,
$$

or, componentwise,

$$
\rho_{\mathrm{SID}}(x,t) +
\partial_i D_i(\mathrm{PED};x,t) = 0,\qquad i\in\{x,y,z\}.
$$

Thus the PED divergence of the displacement is functorially tied to the SID free charge, closing the source–field balance for Group (G).

In short, Group (G) is precisely Gauss’s law for the free-electricity sector: the residual $\rho + \nabla\cdot\mathbf{D}=0$ enforces that free charge is the divergence source of $\mathbf{D}$.
