# Maxwell's magnetostatics
Maxwell's curl of $\mathbf{H}$ in components — that’s exactly Ampère’s law in magnetostatics (without displacement current):

$$
\nabla \times \mathbf{H} = \mathbf{J}'.
$$

In Cartesian coordinates:

$$
\begin{aligned}
\frac{\partial H_z}{\partial y} - \frac{\partial H_y}{\partial z} &= J'_x, \\
\frac{\partial H_x}{\partial z} - \frac{\partial H_z}{\partial x} &= J'_y, \\
\frac{\partial H_y}{\partial x} - \frac{\partial H_x}{\partial y} &= J'_z.
\end{aligned}
$$

So Group (C) is the component form of that single vector equation.

### 1. Maxwell Group (C) in compact form

The three equations are

$$
\begin{aligned}
\frac{\partial H_z}{\partial y} - \frac{\partial H_y}{\partial z} &= J'_x, \\
\frac{\partial H_x}{\partial z} - \frac{\partial H_z}{\partial x} &= J'_y, \\
\frac{\partial H_y}{\partial x} - \frac{\partial H_x}{\partial y} &= J'_z.
\end{aligned}
$$

Vectorially,

$$
\nabla \times \mathbf{H} = \mathbf{J}'.
$$

With Group (A),

$$
\mathbf{J}' = \mathbf{J} + \partial_t \mathbf{D}.
$$

Thus the RDGMFEQ Ampère–Maxwell law is

$$
\nabla \times \mathbf{H} = \mathbf{J} + \partial_t \mathbf{D}.
$$

### 2. SID / PED decomposition

- **PED fields:**
  - Magnetic field $\mathbf{H}_{\mathrm{PED}}(x,t)$
  - Electric displacement $\mathbf{D}_{\mathrm{PED}}(x,t)$

- **SID sources:**
  - Conduction current $\mathbf{J}_{\mathrm{SID}}(x,t)$
  - Total current $\mathbf{J}'_{\mathrm{SID}}(x,t)$

Group (C) in RDGMFEQ SID/PED notation is then

$$
\epsilon_{ijk}\,\partial_j H_k(\mathrm{PED};\, x,t) =
J'_i(\mathrm{SID};\, x,t) =
J_i(\mathrm{SID};\, x,t) +
(\partial_t D_i)(\mathrm{PED}\to\mathrm{SID};\, x,t),
\quad i \in \{x,y,z\},
$$

where:

- $\epsilon_{ijk}$ is the Levi-Civita symbol,
- $\partial_j$ is the PED spatial derivative operator,
- $\partial_t$ is the PED time-evolution operator,
- the arrow $(\mathrm{PED}\to\mathrm{SID})$ indicates the functorial push of the displacement-current term into the SID source side.

In one RDGMFEQ line:

$$
\nabla_{\mathrm{PED}} \times \mathbf{H}_{\mathrm{PED}} =
\mathbf{J}_{\mathrm{SID}} +
\partial_t \mathbf{D}_{\mathrm{PED}\to\mathrm{SID}}.
$$
