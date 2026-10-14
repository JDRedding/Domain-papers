# Full RDG equation construction

### 1. Choose a concrete balance

Take the simple scalar balance

$$
F:\quad x+y=z.
$$

We treat this not as a *naive* tuple $(x,y,z)$ but as a directed relational geometry $G=(\mathrm{Obj},\mathrm{Rel})$ with a neutral manifold $F=0$ (the balance) living on it.

---

### 2. Objects of the RDG

Define the object set $\mathrm{Obj}$ as:

- **Quantities:**

$$
x,\ y,\ z
$$

- **Expression nodes:**

$$
e_L := x+y,\qquad e_R := z
$$

- **Role nodes:**

$$
r_L,\ r_R
$$

  where $r_L$ is the “left‑hand” role, $r_R$ the “right‑hand” role.

- **Balance node:**

$$
F
$$

  representing the neutral manifold $F=0$ (the equality constraint).

- **Carrier/symmetry nodes (optional but useful):**

  - **Carrier:** $c$ (the underlying scalar field, e.g. $\mathbb{R}$).
  - **Symmetry group node:** $G_{\text{sym}}$ (encodes allowed role symmetries).

So

$$
\mathrm{Obj}=\{x,y,z,e_L,e_R,r_L,r_R,F,c,G_{\text{sym}}\}.
$$

---

### 3. Definitional layer $S(G)$

#### 3.1 Definitional edges $\mathrm{Rel}_S$

These construct expressions and roles:

- **Expression construction:**

$$
(x,e_L),\ (y,e_L),\ (z,e_R)
$$

  meaning “ $x$ is a constituent of $e_L$ ”, etc.

- **Role assignment:**

$$
(e_L,r_L),\ (e_R,r_R)
$$

- **Balance incidence:**

$$
(r_L,F),\ (r_R,F)
$$

- **Carrier typing:**

$$
(x,c),\ (y,c),\ (z,c),\ (e_L,c),\ (e_R,c)
$$

- **Symmetry registration:**

$$
(r_L,G_{\text{sym}}),\ (r_R,G_{\text{sym}})
$$

Collect these as

$$
\mathrm{Rel}_S=\{\text{edges above}\}.
$$

#### 3.2 Skeleton $S(G)$

$S(G)$ is the subgeometry induced by $\mathrm{Rel}_S$ on $\mathrm{Obj}$.  

Role‑symmetry minimality: the symmetry group $G_{\text{sym}}$ contains at least one non‑trivial automorphism $\sigma$ such that

- $\sigma(r_L)=r_R,\ \sigma(r_R)=r_L$,
- $\sigma(e_L)=e_R,\ \sigma(e_R)=e_L$,
- $\sigma$ preserves carrier typing and balance incidence,

and $S(G)$ is minimal with respect to this invariance (no finer role distinctions that break symmetry, no coarser identifications that collapse the structure).

---

### 4. Operational layer $I(G)$

#### 4.1 Operational edges $\mathrm{Rel}_I$

These encode the couplings used by the equality/symmetry:

- **Balance coupling:**

$$
(e_L,F),\ (e_R,F)
$$

  meaning “ $e_L$ and $e_R$ are coupled through the balance $F=0$ ”.

- **Role‑consistent equality:**

$$
(r_L,r_R)
$$

  as an operational edge: “roles are paired by the equality”.
- **Symmetry‑respecting operations:**
  - Addition and evaluation edges:

$$
(x,y)\to e_L,\quad (e_L,c)\to \text{‘sum in carrier’}
$$

  (conceptually: edges from constituents to expression through the addition operator, typed by $c$).
  - Identity coupling for $z$:

$$
(z,e_R)
$$

  already definitional, but now used operationally in the balance.

Formally, we extend $\mathrm{Rel}_S$ by these operational couplings:

$$
\mathrm{Rel}_I=\mathrm{Rel}_S\cup\{\text{balance and equality edges above}\}.
$$

#### 4.2 Operational closure $I(G)$

$I(G)$ is the subgeometry induced by $\mathrm{Rel}_I$.  

Operational closure requires:

- Every role‑symmetric configuration (swap $r_L\leftrightarrow r_R$, $e_L\leftrightarrow e_R$) leaves the set of admissible couplings invariant.
- The balance node $F$ sees both sides through operational edges; there is no side disconnected from $F$.

---

### 5. Inferred layer $D(G)$

#### 5.1 Inferred edges $\mathrm{Rel}_D$

These are paths closed by substitution or rewriting, but **never leaving $G$**:

- **Substitution paths:**
  - From $x$ to $z$ via the balance:

$$
x \to e_L \to F \to e_R \to z
$$

  which we summarize as an inferred edge

$$
(x,z)\in\mathrm{Rel}_D.
$$

  - Similarly for $y$:

$$
(y,z)\in\mathrm{Rel}_D.
$$

- **Rewriting of the balance:**
  - From $z$ back to $x$ or $y$ via the rearranged equation:

$$
z-x=y,\quad z-y=x
$$

   encoded as inferred edges

$$
(z,x),\ (z,y)\in\mathrm{Rel}_D.
$$

- **Role‑symmetric inferred paths:**
  - Any path obtained by applying $\sigma\in G_{\text{sym}}$ to an existing inferred path is also in $\mathrm{Rel}_D$.

Thus

$$
\mathrm{Rel}_D=\mathrm{Rel}_I\cup\{\text{substitution/rewrite edges above}\}.
$$

#### 5.2 Path completion $D(G)$

$D(G)$ is the subgeometry induced by $\mathrm{Rel}_D$.  

Path completion requires:

- Any admissible rewrite of the equation (e.g. $x=z-y$, $y=z-x$) corresponds to a closed path in $D(G)$.
- No inferred edge introduces a new object; all endpoints lie in $\mathrm{Obj}$.

---

### 6. SID nesting and triadic closure

We now have:

- **Skeleton:** $S(G)$ from $\mathrm{Rel}_S$.
- **Operational closure:** $I(G)$ from $\mathrm{Rel}_I$, with

$$
S(G)\subseteq I(G).
$$

- **Path completion:** $D(G)$ from $\mathrm{Rel}_D$, with

$$
I(G)\subseteq D(G)\subseteq G.
$$

Canonical inequalities:

$$
|S|\le|I|\le|D|.
$$

Triadic closure $\Omega(G)$ holds when:

- The incidence graph on the three layers has $|V|\ge 2$.
- The graph is connected under $\mathrm{Rel}_I\cup\mathrm{Rel}_D$: every quantity and expression is reachable through operational or inferred edges from the balance structure.

For the equation $x+y=z$, with the edges above, this connectivity condition is satisfied, so $\Omega(G)$ is true and the RDG is admissible.

---

### 7. External PED/Q and solution set (briefly)

- **PED:** acts on $F=0$ to evaluate and redistribute flux (here, scalar “amounts”) so that the operational couplings in $I(G)$ remain admissible (e.g. conservation of total quantity).
- **Q:** moderates continuity and higher‑order admissibility (e.g. differentiability if $x,y,z$ are functions).
- **Solution set:**

$$
\mathcal{S}(R)=\{(x,y,z)\mid x+y-z=0\},
$$

  computed by an external $\Gamma$ that updates values of $x,y,z$ but does not enlarge $\mathrm{Obj}$.

None of PED, Q, or $\Gamma$ is part of $\mathrm{SID}(G)$; they operate on the already‑constructed RDG.
