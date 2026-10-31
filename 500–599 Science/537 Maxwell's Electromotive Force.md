# Maxwell's Electromotive Force
- 537 Electricity and electronics / electromagnetism

Maxwell's Group (D) - Electromotive Force (3 equations; includes motion) is a generalized form that mixes motion and potentials.

$$
\begin{aligned}
E_x &= \mu\left(H_z \frac{dy}{dt} - H_y \frac{dz}{dt}\right) - \frac{dA_x}{dt} - \frac{\partial \Psi}{\partial x} \\
E_y &= \mu\left(H_x \frac{dz}{dt} - H_z \frac{dx}{dt}\right) - \frac{dA_y}{dt} - \frac{\partial \Psi}{\partial y} \\
E_z &= \mu\left(H_y \frac{dx}{dt} - H_x \frac{dy}{dt}\right) - \frac{dA_z}{dt} - \frac{\partial \Psi}{\partial z}
\end{aligned}
$$

If we define the velocity vector

$$
\mathbf{v} = \left(\frac{dx}{dt}, \frac{dy}{dt}, \frac{dz}{dt}\right)
$$

and the magnetic field

$$
\mathbf{H} = (H_x, H_y, H_z),
$$

then the cross product $\mathbf{v} \times \mathbf{H}$ has components

$$
\mathbf{v} \times \mathbf{H} =
\left(
v_y H_z - v_z H_y,\;
v_z H_x - v_x H_z,\;
v_x H_y - v_y H_x
\right),
$$

which matches the $\mu(\dots)$ terms in the three equations.

So the set can be written as

$$
\mathbf{E} = \mu\,(\mathbf{v} \times \mathbf{H}) - \frac{d\mathbf{A}}{dt} - \nabla \Psi.
$$

That’s a generalized electromotive field combining:

- **Motion term:** $\mu\,(\mathbf{v} \times \mathbf{H})$ — a kind of motional EMF term.
- **Vector potential term:** $-\dfrac{d\mathbf{A}}{dt}$.
- **Scalar potential term:** $-\nabla \Psi$.

### Vector form of Group (D)

The three equations are

$$
E_x = \mu\,(H_z \dot y - H_y \dot z) - \frac{dA_x}{dt} - \frac{\partial \Psi}{\partial x}
$$

$$
E_y = \mu\,(H_x \dot z - H_z \dot x) - \frac{dA_y}{dt} - \frac{\partial \Psi}{\partial y}
$$

$$
E_z = \mu\,(H_y \dot x - H_x \dot y) - \frac{dA_z}{dt} - \frac{\partial \Psi}{\partial z}.
$$

In compact vector form:

$$
\mathbf{E} =
\mu\,(\mathbf{H} \times \dot{\mathbf{r}}) -
\frac{d\mathbf{A}}{dt} -
\nabla \Psi.
$$

Here $\dot{\mathbf{r}} = ( \dot x, \dot y, \dot z )$ is the motion (velocity) of the material element / charge.

---

### RDGMFEQ SID–PED placement

- **PED fields:**
  - **Magnetic field:** $\mathbf{H}_{\text{PED}}(x,t)$
  - **Vector potential:** $\mathbf{A}_{\text{PED}}(x,t)$
  - **Scalar potential:** $\Psi_{\text{PED}}(x,t)$
  - **Electric field:** $\mathbf{E}_{\text{PED}}(x,t)$

- **SID kinematics:**
  - **Velocity field:** $\dot{\mathbf{r}}_{\text{SID}}(x,t)$

Then Group (D) in RDGMFEQ SID/PED notation is

$$
\mathbf{E}_{\text{PED}}(x,t) =
\mu\,\big(\mathbf{H}_{\text{PED}}(x,t) \times \dot{\mathbf{r}}_{\text{SID}}(x,t)\big) -
\partial_t \mathbf{A}_{\text{PED}}(x,t) -
\nabla_{\text{PED}} \Psi_{\text{PED}}(x,t).
$$

Componentwise:

$$
E_i(\text{PED}; x,t) =
\mu\,\epsilon_{ijk}\,H_j(\text{PED}; x,t)\,\dot r_k(\text{SID}; x,t) -
(\partial_t A_i)(\text{PED}; x,t) -
\partial_i \Psi(\text{PED}; x,t),
\quad i \in \{x,y,z\}.
$$

So in RDGMFEQ, Group (D) is the **electromotive-force mapping** that combines:

- a **motional term**

$$
\mu\,\mathbf{H}_{\text{PED}} \times \dot{\mathbf{r}}_{\text{SID}}
$$

(SID–PED coupling),

- the **potential-form field term**

$$
-\partial_t \mathbf{A}_{\text{PED}} - \nabla_{\text{PED}} \Psi_{\text{PED}}
$$

to yield the effective electric field $\mathbf{E}_{\text{PED}}$ that then feeds the rest of the curl/div system.
