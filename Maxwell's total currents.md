Maxwell's total currents (Group A, 3 equations) defines the *total* (or effective) current components as

$$
J'_x = J_x + \frac{dD_x}{dt},\quad
J'_y = J_y + \frac{dD_y}{dt},\quad
J'_z = J_z + \frac{dD_z}{dt}.
$$

This is essentially the decomposition

$$
\mathbf{J}' = \mathbf{J} + \frac{d\mathbf{D}}{dt},
$$

where $\mathbf{J}$ is the “conduction” (or free) current density and $\frac{d\mathbf{D}}{dt}$ is the displacement current density.

### 1. Compact RDG form of Group (A)

Define the **total current field** in SID/PED as a relational vector field

$$
\mathbf{J}' : \text{RDG} \to \text{SID}
$$

with components

$$
J'_i = J_i + \partial_t D_i,\quad i \in \{x,y,z\}.
$$

In RDG operator form (PED side),

$$
\mathbf{J}' = \mathbf{J} + \partial_t \mathbf{D},
$$

where $\partial_t$ is the PED time-evolution operator acting on the displacement field $\mathbf{D}$.

So Group (A) becomes, in RDGMFEQ SID/PED notation:

$$
J'_i(\text{SID}; t) = J_i(\text{SID}; t) + (\partial_t D_i)(\text{PED}; t),
\quad i = x,y,z.
$$

### 2. SID vs PED tagging

- **SID (Source–Interaction Domain):**  
  **Label:** $\mathbf{J}$  
  **Meaning:** Conduction/free current—direct source term in RDGMFEQ.

- **PED (Propagation–Evolution Domain):**  
  **Label:** $\partial_t \mathbf{D}$  
  **Meaning:** Displacement current—time-evolution contribution from the field configuration.

Thus, the **total SID current** that appears in the RDGMFEQ source side is

$$
\mathbf{J}'_{\text{SID}} = \mathbf{J}_{\text{SID}} + (\partial_t \mathbf{D})_{\text{PED}\to\text{SID}},
$$

i.e. the PED-evolved displacement field is functorially pushed into SID as an effective source.
