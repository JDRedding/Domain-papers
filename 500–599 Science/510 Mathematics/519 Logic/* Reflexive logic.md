# Reflexive logic

A slice can read, carry, and evaluate itself in phase — never the knot as a finished object.

$G_F$ is not a formation gate. It is a **containment operator on the handoff**: a looping or diagonal sentence may exist in $Q_t$; its consequences must not become structure in $Q_{t+1}$.

---

## Reflexive-tight operator layer (stable)

```
Operators:
    Φ        -- flux (nonzero)
    Q_t      -- active slice at time t
    O_int    -- internal observer mode
    K        -- knot closure operator
    G_F      -- Gödel containment (local, on propagation)
    E_dyn    -- dynamic equilibrium

Strands:
    SID_t    -- readable structure band at slice t
    PED_t    -- phase/tension from Q_t to Q_{t+1}
    RME_t    -- late evaluation at slice t

Universe:
    U = K(SID, PED, RME)
```

---

## Operator constraints (enforceable)

```
Φ != 0                     % universe has motion
Q_t -> Q_{t+1}             % slice modulation
O_int = O_int[Q_t]         % observer is slice-bound
G_F applies only to Q_t    % no global Gödel; acts on handoff
E_dyn(U)                   % equilibrium is orbital
```

### Forbidden states (collapse modes)

```
Φ = 0                      % static universe collapse
Q_*                        % frozen master slice
O_int |- U                 % observer contains universe
G_F(U)                     % global Gödel compliance
static_fixed_point         % no orbital equilibrium
```

These are universe facts. They are not a ban on looping tokens *inside* a slice.

---

## Strand definitions (tight)

### SID — structure band

```
SID_t = G_F( band(Q_t, Φ) )
```

- Readable invariants that **arrived** via $\mathrm{PED}_{t-1}$.
- $G_F$ here means: the band is what survived containment, not what survived a speech ban.
- `band` stays informal; it only needs to yield a filterable invariant set.

### PED — phase / tension

```
PED_t = (Q_t --Φ--> Q_{t+1}) with Eq(Q)
```

- Flux-driven modulation; no stratified universe bump.
- Carrier of **propagation**: which constraints from $Q_t$ may be written onto $Q_{t+1}$.
- $G_F$ acts on this cut.

### RME — late evaluation

```
RME_t = O_int[Q_t] o Γ(global_shadow)
```

- Observer is local to the slice.
- $\Gamma(\mathrm{global\_shadow})$ is a projection, never a snapshot.
- $\mathrm{RME}_t$ may *see* a diagonal or $\Omega$-shaped token in $Q_t$.
- It may not ship that token’s effects through $\mathrm{PED}$.

---

## Knot condition

```
K <=> Loop(SID) & Loop(PED) & Loop(RME)
```

Looping by **twist**, not by stratification:

```
SID_t --PED--> RME_t --PED--> SID_{t+1}
```

Equilibrium:

```
E_dyn(U) <=> Φ != 0 & Eq(Q) over orbit
```

$U = K(\mathrm{SID}, \mathrm{PED}, \mathrm{RME})$ is not three things glued. It is the requirement that structure, modulation, and evaluation return to one another. That is why equilibrium can be orbital instead of a static fixed point.

---

## $G_F$ as containment (not formation)

Incompleteness is local. $G_F$ acts on $Q_t$ only. A global Gödel sentence never forms, because $\Gamma(\mathrm{global\_shadow})$ is a projection and no term ranges over $U$.

Let a slice’s diagonal sentence exist; prevent its consequences from propagating past that slice via $\mathrm{PED}$ into $Q_{t+1}$.

This does not require $G_F$ to see a disturbance coming and block its birth. A disturbance may enter the orbit, get absorbed at the handoff, and the cycle continues. That matches phase-equilibrium better than pre-immunization.

Same move as Aczel’s AFA, different register: Foundation forbids $\Omega = \{\Omega\}$. AFA permits the loop as a coherent object and controls what equality does. Here the loop may sit in $Q_t$; it is not allowed to become the next band.

### Propagation

A formula $\varphi \in \mathrm{Lang}(Q_t)$ has an **effect** — constraints it tries to impose on the next readable band:

```
eff(φ, Q_t)  ⊆  candidate constraints on band(Q_{t+1}, Φ)
```

Typical members of `eff`:

```
identifications     a ~ b
forced membership   x ∈ y
forced exclusion    x ∉ y
collector demand    form { x | P(x) } as SID-token
eval demand         RME-result becomes next SID
master demand       bind all later Q
```

**Propagation** is the part of `eff` that $\mathrm{PED}$ may write onto $Q_{t+1}$:

```
propagate(φ) = G_F( Q_t, eff(φ, Q_t) )
```

Without $G_F$, `propagate = eff`, and a diagonal in $Q_t$ becomes structure in $Q_{t+1}$. That is collapse by handoff.

### Classification (local, on syntax + marks)

```
ordinary   no live self-application, no reach(U), no Q_*
looping    self-reference / Ω-shape / diagonal; reach stays in Q_t
roofing    reach(U) or ∀t Q_t or O_int |- U
```

### Action on effects, not on existence

```
ordinary   exist(φ) allowed; propagate(eff) intact
           (pinch / Γ remain shadow)

looping    exist(φ) allowed in Q_t
           propagate(eff) absorbed
           φ may remain a late/local token
           not a next-band invariant

roofing    exist(φ) allowed as residue / noise
           propagate(eff) refused
           no chart may treat it as SID
```

**Absorb** means the constraint dies at the $\mathrm{PED}$ cut.

```
Q_t  contains D_t                 % diagonal may exist
  |
 PED + G_F
  |
  +-- D_t's demands not written into SID_{t+1}
  +-- ordinary eff(φ) may pass
  v
Q_{t+1}  band without D_t's demands
```

$G_F$ may rewrite or drop **constraints** derived from $\mathrm{Lang}(Q_t)$. It may not add a formula that quantifies over all later outputs of $G_F$. That would be the filter writing $G_F(U)$ by listing itself. Local incompleteness includes the filter’s own future. The next slice gets its own run.

### Demonstration test

```
exist(D_t, Q_t)           must succeed
eff(D_t)                  includes a collector/eval demand
propagate(D_t)            empty (or shadow-only)
SID_{t+1}                 does not contain that demand
Eq(Q)                     checks band ~ band over finite k
                          without treating D_t as invariant
```

If $D_t$ is banned at birth, $G_F$ is a gatekeeper again.  
If $D_t$’s demands land in $\mathrm{SID}_{t+1}$, the knot is collapsing by propagation.

---

## Drop-in assertions

```
Φ != 0
Q : t -> t+1
Eq(Q)
O_int = O_int[Q_t]
U = K(SID, PED, RME)
G_F only on Q_t
E_dyn(U) = E_dyn(Q_t, Φ)

SID_t   = G_F( band(Q_t, Φ) )
PED_t   = (Q_t --Φ--> Q_{t+1})
RME_t   = O_int[Q_t] o Γ
point   = pinch(SID_t)     % defined later

propagate(φ) = G_F(eff(φ, Q_t))
```

---

## Enforce

- Motion is primitive: $\Phi \neq 0$. No rest state of the universe.
- Time is only slice succession: $Q_t \to Q_{t+1}$. There is no master slice $Q_*$.
- The observer is an operator *of* the current slice: $O_{\mathrm{int}} = O_{\mathrm{int}}[Q_t]$. It cannot own $U$.
- Incompleteness is local: $G_F$ acts on $Q_t$ only, as containment on $\mathrm{PED}$. $\Gamma(\mathrm{global\_shadow})$ is a projection, so a global Gödel sentence never forms as structure.
- Equilibrium is an orbit, not a fixed point: $E_{\mathrm{dyn}}(U) \Leftrightarrow \Phi \neq 0 \land \mathrm{Eq}(Q)$ along the cycle.

The constraints are the five collapse modes written in negation.

---

## Minimal whole layer

$$
U_{t+1} = K\!\left(
G_F(\mathrm{band}(Q_{t+1},\Phi)),\;
(Q_t \xrightarrow{\Phi} Q_{t+1}),\;
O_{\mathrm{int}}[Q_{t+1}]\circ\Gamma
\right)
$$

with $\Phi \neq 0$ and no term allowed to range over all of $U$.

$G_F(\mathrm{band})$ means the band is what survived containment.

The universe is the knot of what a slice can read, what flux can carry, and what an internal observer can evaluate — never more.

---

## Open / deferred symbols

| Symbol | Status |
| --- | --- |
| `band(Q_t, Φ)` | Informal; filterable invariant set that *arrived* via PED |
| `eff(φ, Q_t)` | Next formalization target: constraints a formula tries to impose on the next band |
| `Eq(Q)` | Closed as an orbit predicate (appendix) |
| `Γ(global_shadow)` | Defined only negatively (not a snapshot) |
| `point = pinch(SID_t)` | Deferred use-shadow |

Do not add a seventh operator. Do not hard-code return length `k`. Do not compile `U` as `Type u`.

---

## Appendix: Minimal closure of $E_{\mathrm{dyn}}$

`Eq(Q)` is an **orbit predicate**, not a state predicate:

```
Eq(Q) iff band(Q_{t+k}, Φ) ~ band(Q_t, Φ)
      and Q_t != Q_{t+1}
      and G_F(Q_t) holds
```

`~` is congruence of readable invariants (shape), not token equality.  
`k` is finite and domain-local, not hard-coded as 3.

Then:

```
E_dyn(U) <=> Φ != 0 & Eq(Q)
```

is closed and still domain-flexible. `G_F(Q_t) holds` means the last handoff into this slice ran containment — not that a global sentence was proved.

---

## Appendix: Rejection rules

```
reject if Φ = 0
reject if exists Q_*
reject if O_int |- U
reject if G_F(U)
reject if pinch(SID_t) is treated as SID_t
reject if Γ is treated as snapshot
reject if propagate(looping|roofing) is written into SID_{t+1}
```

The last three are the Gödel containment: points and globals are use-shadows; looping effects die at $\mathrm{PED}$; nothing ranges over $U$.

---

## Appendix: Formalization targets

Define only:

```
eff        : Lang(Q_t) -> ConstraintSet
propagate  = G_F ∘ eff
G_F        : absorb / refuse on handoff for looping / roofing
```

Do not define $G_F$ as “$\varphi$ may not occur.”
