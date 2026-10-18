# Maxwell’s Free Electricity
**Group (G) — Free Electricity (1 equation)**
*(Treatise 1873 residual convention)*

The free-electricity constraint appears in residual form as

$$
\rho - \frac{\partial D_x}{\partial x} - \frac{\partial D_y}{\partial y} - \frac{\partial D_z}{\partial z} = 0.
$$

In compact vector notation

$$
\rho - \nabla\cdot\mathbf{D} = 0
\quad\Longleftrightarrow\quad
\nabla\cdot\mathbf{D} = \rho.
$$

Under the residual convention adopted for the whole document (matching the Treatise),
$\rho$ is the free-charge density in the modern sense ($\rho \equiv \rho_{\mathrm{f}}$).

**Cartesian components.** Expanding the divergence recovers

$$
\frac{\partial D_x}{\partial x}
+ \frac{\partial D_y}{\partial y}
+ \frac{\partial D_z}{\partial z}
= \rho
$$

or, equivalently, multiplying through by -1,

$$
-\rho + \frac{\partial D_x}{\partial x} + \frac{\partial D_y}{\partial y} + \frac{\partial D_z}{\partial z} = 0.
$$

All three admissible residual forms are therefore

$$
\rho - \nabla\cdot\mathbf{D} = 0
\iff
\nabla\cdot\mathbf{D} = \rho
\iff -\rho + \nabla\cdot\mathbf{D} = 0.
$$

**Physical content.**
Free volume charge density is the sole source of the electric-displacement field $\mathbf{D}$.
Bound charge is already absorbed into the definition of $\mathbf{D}$.

In integral form (identical under the Treatise/modern convention)

$$
\oint_{\partial V}\mathbf{D}\cdot d\mathbf{S} =
\int_V \rho\, dV,
$$

i.e., the net flux of $\mathbf{D}$ through any closed surface equals the free charge enclosed.

**RDGMFEQ SID–PED placement.**
The residual is realized by pairing the SID free-charge density with the PED displacement field:

$$
\rho_{\mathrm{SID}}(x,t) -
\nabla_{\mathrm{PED}}\cdot\mathbf{D}_{\mathrm{PED}}(x,t) = 0,
$$

or componentwise

$$
\rho_{\mathrm{SID}}(x,t) -
\partial_i D_i(\mathrm{PED};x,t) = 0,
\qquad i \in \{x,y,z\}.
$$

By the residual convention fixed above,

$$
\rho_{\mathrm{SID}} \equiv \rho = \rho_{\mathrm{f}}.
$$

The PED divergence of $\mathbf{D}$ is therefore exactly equal to the SID free charge,
closing the source–field balance for Group (G). The identical $\rho_{\mathrm{SID}}$
(same algebraic sign) is carried forward into Group (H) continuity.

In short, Group (G) is Gauss’s law for free electricity under the Treatise residual
convention: the residual $\rho_{\mathrm{SID}} - \nabla_{\mathrm{PED}}\cdot\mathbf{D}_{\mathrm{PED}} = 0$
enforces that free charge is the divergence source of $\mathbf{D}$.
