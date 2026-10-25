# Maxwell's magnetic vector potential group
- 537 Electricity and electronics / electromagnetism

Maxwell's Group (B) is the curl of the magnetic vector potential $\mathbf{A}$ that yields the magnetic field $\mathbf{H}$ (up to the factor $\mu$). These three equations are the Cartesian components of a single vector relation:

$$
\mu \mathbf{H} = \nabla \times \mathbf{A}.
$$

Written out:

- **x-component:**

$$
\mu H_x = \frac{\partial A_z}{\partial y} - \frac{\partial A_y}{\partial z}
$$

- **y-component:**

$$
\mu H_y = \frac{\partial A_x}{\partial z} - \frac{\partial A_z}{\partial x}
$$

- **z-component:**

$$
\mu H_z = \frac{\partial A_y}{\partial x} - \frac{\partial A_x}{\partial y}
$$

### Magnetic field from the vector potential in RDGMFEQ

In component form, Group (B) is

$$
\begin{aligned}
\mu H_x &= \frac{\partial A_z}{\partial y} - \frac{\partial A_y}{\partial z}, \\
\mu H_y &= \frac{\partial A_x}{\partial z} - \frac{\partial A_z}{\partial x}, \\
\mu H_z &= \frac{\partial A_y}{\partial x} - \frac{\partial A_x}{\partial y}.
\end{aligned}
$$

In compact vector form,

$$
\mu \mathbf{H} = \nabla \times \mathbf{A}.
$$

#### SID / PED tagging

- **PED side (field configuration):**  
  Vector potential $\mathbf{A}_{\mathrm{PED}}(x,t)$ — the propagating/evolving configuration field.

- **Derived PED field:**  
  Magnetic field $\mathbf{B}_{\mathrm{PED}} = \nabla \times \mathbf{A}_{\mathrm{PED}}$.

- **Constitutive mapping PED → SID:**  
  With $\mathbf{B} = \mu \mathbf{H}$,

$$
\mu \mathbf{H}_{\mathrm{SID}} = \mathbf{B}_{\mathrm{PED}} = \nabla \times \mathbf{A}_{\mathrm{PED}}.
$$

In index notation, Group (B) therefore reads

$$
\mu H_i(\mathrm{SID};\, x,t) = \epsilon_{ijk}\, \partial_j A_k(\mathrm{PED};\, x,t),
\quad i \in \{x,y,z\},
$$

where $\epsilon_{ijk}$ is the Levi-Civita symbol and $\partial_j$ is the PED spatial derivative. The constitutive relation $\mathbf{B} = \mu \mathbf{H}$ is the functor that takes the PED curl of $\mathbf{A}$ and presents it as the SID magnetic-force field $\mathbf{H}$.

---

The three equations are exactly Maxwell’s Group (B) from the 1865 paper — the *Magnetic Force* group — and they correspond component-by-component to the modern relation

$$
\mu\,\mathbf{H} = \nabla \times \mathbf{A}.
$$

Maxwell’s original scalar system simply spells out the curl in full Cartesian detail.

### Structural identity

Each line is the corresponding component of the curl of the vector potential $\mathbf{A}$:

$$
\nabla \times \mathbf{A} =
\begin{pmatrix}
\partial_y A_z - \partial_z A_y \\
\partial_z A_x - \partial_x A_z \\
\partial_x A_y - \partial_y A_x
\end{pmatrix}.
$$

Group (B) is thus the definition of the magnetic intensity $\mathbf{H}$ in terms of the vector potential $\mathbf{A}$, scaled by the permeability $\mu$.

### RDG-compatible interpretation

- $A$ is a momentum-like structural field (SID-Structure).
- $H$ is the interaction curvature extracted from $A$ (SID-Interaction).
- The operator $\nabla \times$ is a Q-mode antisymmetric structural lift that produces the rotational part of the field.
- The factor $\mu$ is a PED-Power scaling that links the geometry side (SID) to the field-intensity side (PED).

Thus Group (B) functions as the SID → PED transfer operator for magnetism.
