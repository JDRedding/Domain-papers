# Maxwell's Electric Resistance

The three equations of Maxwell’s **Group (F)**: the constitutive relation between **electromotive force** and **true conduction current**, expressed through **specific resistance** $\varrho$. 

### Vector form of Group (F)

The three equations are

$$
E_x = -\varrho\,J_x,\quad
E_y = -\varrho\,J_y,\quad
E_z = -\varrho\,J_z.
$$

In compact vector form,

$$
\mathbf{E} = -\varrho\,\mathbf{J}.
$$

This is Ohm’s law in resistive form, with $\varrho$ the resistivity (inverse conductivity). The concise takeaway is that Maxwell treats Ohm’s law as a *local linear material law* linking the **E‑field** to the **conduction current density**.

---

### 🧩 Formal Structure of Group (F)
Each component begins with the constitutive operator:

- **Ohmic relation** — $E_x = -\varrho\, J_x$
- **Material response** — $E_y = -\varrho\, J_y$
- **Conduction current** — $E_z = -\varrho\, J_z$

These are **three scalar equations**, one per spatial axis, and they define how the medium converts electric field into conduction current.

---

### 🔍 Significance inside Maxwell’s 1865 system
Maxwell’s original paper treats **$J$** (true conduction current) separately from **displacement current** $\frac{dD}{dt}$. Group (F) therefore:

- **Defines the constitutive law** for conduction only  
- **Does not include displacement current** (that appears in Group (A, Total Currents))
- **Assumes linear, isotropic resistance**  
- **Uses specific resistance** $\varrho = 1/\sigma$ rather than conductivity $\sigma$

This is a **material equation**, not a dynamical one. It closes the system by specifying how matter responds to fields.

---

### 🧮 Relation to modern notation
If one rewrites Maxwell’s form using modern conductivity:

$$
E_i = -\varrho J_i = -\frac{1}{\sigma} J_i
\quad\Rightarrow\quad
J_i = \sigma E_i
$$

So Group (F) is the precursor of the **Ohm’s law in differential form**:

- **Differential Ohm’s law** — $\mathbf{J} = \sigma \mathbf{E}$

The minus sign in Maxwell’s original form is a matter of convention: he defines $\varrho$ as *specific resistance*, and his sign conventions for electromotive force differ slightly from modern field conventions.

---

### 🔗 Interaction with other groups
Group (F) interacts directly with:

- **Group (A)** — total current $J' = J + \frac{dD}{dt}$
- **Group (C)** — Ampère’s law uses $J'$
- **Group (D)** — electromotive force includes motional and potential terms

Thus Group (F) supplies the **material constitutive closure** needed for Ampère’s law to determine field evolution.

---

### RDGMFEQ SID–PED placement

- **SID source field:**  
  **Conduction current:** $\mathbf{J}_{\text{SID}}(x,t)$

- **PED field:**  
  **Electric field:** $\mathbf{E}_{\text{PED}}(x,t)$

Then Group (F) in RDGMFEQ SID/PED notation is

$$
\mathbf{E}_{\text{PED}}(x,t) =
-\varrho\,\mathbf{J}_{\text{SID}}(x,t),
$$

or componentwise,

$$
E_i(\text{PED}; x,t) =
-\varrho\,J_i(\text{SID}; x,t),
\quad i \in \{x,y,z\}.
$$

So $\varrho$ is the constitutive map that takes the SID conduction current 

$$
\mathbf{J}_{\text{SID}} 
$$

and presents it as a PED electric field 

$$
\mathbf{E}_{\text{PED}}
$$

to be combined with the other contributions from Groups (D, Electromotive Force) and (E, Electric Elasticity).
