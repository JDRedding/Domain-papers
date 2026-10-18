# Maxwell’s Electric Elasticity

The essence of **Maxwell’s Group (E)**, known as ***Electric Elasticity***, is that the electromotive-force components $E_x, E_y, E_z$ are linearly proportional to the electric-displacement components $D_x, D_y, D_z$ through the constant $k$, which in modern notation is simply $1/\varepsilon$.

## Vector form of Group (E)

The three equations are

$$
E_x = k\,D_x,\quad
E_y = k\,D_y,\quad
E_z = k\,D_z.
$$

In compact vector form,

$$
\mathbf{E} = k\,\mathbf{D}.
$$

This is a linear constitutive relation (electric “elasticity”), with $k$ playing the role of an effective stiffness; in usual EM notation $k = 1/\varepsilon$. **Group (E)** is Maxwell’s constitutive law for a linear, isotropic dielectric, expressed in his original scalar-component form.

### Formal interpretation (RDG-compatible)

In the relational-geometry language, Group (E) is the Structure-side constitutive operator linking the SID electric-displacement mode to the PED electric-field mode:

$$
E_i = k\,D_i,\quad i\in\{x,y,z\}.
$$

This is a pure structural constraint—no dynamics, no interaction terms, no motional coupling, no MFE-flux involvement. It is the static elasticity law that defines how the medium stores electric displacement.

- $E_i$ is the **PED-Evaluation** component (field intensity).
- $D_i$ is the **SID-Structure** component (stored displacement).
- $k$ is the **medium elasticity constant**, equivalent to $1/\varepsilon$.

Thus, in RDG form:

$$
\text{PED.Eval}(i) = k\;\text{SID.Struct}(i).
$$

This is the simplest possible SID→PED mapping: a diagonal linear operator with constant coefficient $k$.

### Physical meaning

- **Electric displacement $D$** encodes how the medium polarizes.
- **Electric field $E$** encodes the force per unit charge.
- **Group (E)** states that the medium responds elastically and linearly to electric displacement.

In modern notation:

$$
\mathbf{E} = \frac{1}{\varepsilon}\mathbf{D}.
$$

Maxwell wrote it as three scalar component equations, consistent with his 20-equation formulation.

### Integration into TRUE / RME / MFE

Within the full TRUE v12.0 system:

- Group (E) belongs entirely to the **SID layer** (Structure).
- It provides the static constitutive map needed before any MFE-driven dynamics (PED-Dynamics) can evolve.
- It is the “elastic backbone” that the MFE bipolar flux engine pushes against.
- In the RME, this is part of the instantaneous diagnostic filter: it defines how raw displacement contributes to the electric-field portion of the survival-score operator.

No nonlinearities, no Q-mode slicing, no boundary resets—just a clean linear constitutive relation.

### Stable RDG rewrite

$$
\begin{aligned}
E_x &= k \cdot D_x,\\
E_y &= k \cdot D_y,\\
E_z &= k \cdot D_z.
\end{aligned}
$$

RDG-operator form:

```
PED.Eval = k * SID.Struct
```

Componentwise:

```
PED.Eval[x] = k * SID.Struct[x]
PED.Eval[y] = k * SID.Struct[y]
PED.Eval[z] = k * SID.Struct[z]
```

### RDGMFEQ SID–PED placement

- **PED field:**  
  Electric field $\mathbf{E}_{\mathrm{PED}}(x,t)$

- **SID/PED field:**  
  Electric displacement $\mathbf{D}_{\mathrm{PED}}(x,t)$ (which also appears on the SID side via the displacement current in Group (A))

Group (E) in RDGMFEQ SID/PED notation is simply

$$
\mathbf{E}_{\mathrm{PED}}(x,t) = k\,\mathbf{D}_{\mathrm{PED}}(x,t),
$$

or componentwise,

$$
E_i(\mathrm{PED};\, x,t) = k\,D_i(\mathrm{PED};\, x,t),\quad i \in \{x,y,z\}.
$$

Conceptually, $k$ is the constitutive functor mapping the displacement configuration 

$$
\mathbf{D}_{\mathrm{PED}}$ into the electric field $\mathbf{E}_{\mathrm{PED}}
$$

which then enters Group (D) (Maxwell's electromotive force) and the rest of the RDGMFEQ curl/div system.
