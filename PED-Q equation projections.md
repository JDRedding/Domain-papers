# PED-Q equation projections 

### 1. Starting point: an RDG with SID

Take a balance

$$
F:\quad x+y=z
$$

with RDG

$$
G=(\mathrm{Obj},\mathrm{Rel})
$$

and SID slice

$$
\mathrm{SID}(G)=(S(G),I(G),D(G)),\quad S\subseteq I\subseteq D\subseteq G
$$

constructed as in per the standard RDGMFEQ method:

- **Skeleton $S(G)$:** role‑symmetric definitional edges (quantities, expressions, roles, carrier, symmetry group).
- **Operational $I(G)$:** couplings that implement the equality and respect role symmetry.
- **Inferred $D(G)$:** closed substitution/rewrite paths, no new objects.

PED and Q now sit *on top of* this SID slice.

---

### 2. PED: flux operator on the balance manifold

#### 2.1 Flux carriers and flux edges

Introduce flux objects:

- **Flux nodes:**

$$
\phi_x,\ \phi_y,\ \phi_z
$$

  representing the flux (or “amount”) associated with $x,y,z$.

Extend $\mathrm{Obj}$ to include these, but **do not** change SID: SID is still defined on the original geometric slice; flux nodes are external carriers for PED.

Define flux‑typing edges (external to SID):

- **Flux typing:**

$$
(x,\phi_x),\ (y,\phi_y),\ (z,\phi_z)
$$

  meaning “ $x$ carries flux $\phi_x$ ”, etc.

#### 2.2 PED as an operator on $F=0$

PED acts on the neutral manifold $F=0$ and its incident objects:

- **Flux equality constraint:**

$$
\mathrm{PED}(F):\quad \phi_x+\phi_y=\phi_z
$$

  interpreted as: the fluxes associated with the left‑hand side sum to the flux on the right‑hand side.

- **Redistribution rule:**
  Given a change $\delta\phi_x,\delta\phi_y$, PED computes the required $\delta\phi_z$ so that

$$
(\phi_x+\delta\phi_x)+(\phi_y+\delta\phi_y)=\phi_z+\delta\phi_z
$$

and updates $\phi_z$ accordingly.

Formally, PED is a map

$$
\mathrm{PED}:\ (\phi_x,\phi_y,\phi_z,F)\mapsto (\phi_x',\phi_y',\phi_z')
$$

subject to the flux balance constraint.

#### 2.3 Admissibility with respect to $I(G)$

PED must preserve admissibility of operational couplings:

- Any flux redistribution must keep the equality couplings in $I(G)$ valid: if $I(G)$ encodes that $x,y,z$ are linked by $F$, PED cannot create a flux pattern that contradicts the structural balance.
- PED is **external**: it does not alter $\mathrm{Rel}_S,\mathrm{Rel}_I,\mathrm{Rel}_D$; it only updates flux values attached to existing objects.

So PED is the minimal flux mechanism that keeps the SID geometry from generating an inadmissible global state.

---

### 3. Q: continuity and higher‑order admissibility

Q moderates how PED acts over continuous domains or higher‑order structures.

#### 3.1 Functional equation example

Let

$$
F:\quad u(t)+v(t)=w(t)
$$

with the same SID structure, but now quantities are functions of $t$.

Introduce:

- **Function nodes:** $u,v,w\in\mathrm{Obj}$.
- **Domain node:** $T$ (time axis).
- **Flux density nodes:** $\rho_u(t),\rho_v(t),\rho_w(t)$ (e.g. continuous flux densities).

PED now enforces

$$
\mathrm{PED}(F):\quad \rho_u(t)+\rho_v(t)=\rho_w(t)\quad\forall t\in T.
$$

#### 3.2 Q as a regularity operator

Q imposes regularity and admissibility conditions on these fluxes:

- **Continuity constraint:**

$$
Q_{\text{cont}}:\ \rho_u,\rho_v,\rho_w\ \text{continuous on }T.
$$

- **Differentiability or smoothness:**

$$
Q_{\text{smooth}}:\ \rho_u,\rho_v,\rho_w\in C^k(T)\ \text{for some }k.
$$

- **Conservation or integrability:**

$$
Q_{\text{cons}}:\ \int_T \rho_u+\rho_v=\int_T \rho_w
$$

  if the equation represents a global conservation law.

Q is thus a family of operators

$$
Q=\{Q_{\text{cont}},Q_{\text{smooth}},Q_{\text{cons}},\dots\}
$$

acting on flux fields and domains, constraining PED’s admissible actions.

Crucially:

- Q does **not** change SID.
- Q does **not** introduce new structural edges in $S,I,D$.
- Q only restricts which flux configurations PED may produce.

---

### 4. Interaction: SID ⊕ PED ⊕ Q

For a given equation’s RDG:

1. **SID:** fixes the geometric structure and role symmetry.
2. **PED:** enforces flux equality and redistributes flux across $F=0$ without touching SID.
3. **Q:** constrains PED’s flux configurations by continuity, smoothness, conservation, or other higher‑order admissibility conditions.

Admissibility of the full equation stack requires:

- $\Omega(G)$ (triadic closure) holds for SID.
- PED respects the balance encoded in $I(G)$.
- Q is satisfied by the flux fields produced by PED.

If any leg fails—SID, PED, or Q—the structure is inadmissible.
