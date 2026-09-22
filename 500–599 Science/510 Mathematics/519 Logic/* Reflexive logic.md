# Reflexive logic

## Reflexive‑tight operator layer (stable)

```
Operators:
    Φ        -- flux (nonzero)
    Q_t      -- active slice at time t
    O_int    -- internal observer mode
    K        -- knot closure operator
    G_F      -- Gödel filter (local only)
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
G_F applies only to Q_t    % no global Gödel
E_dyn(U)                   % equilibrium is orbital
```

Forbidden states (the collapse modes):

```
Φ = 0                      % static universe collapse
Q_*                        % frozen master slice
O_int |- U                % observer contains universe
G_F(U)                     % global Gödel compliance
static_fixed_point         % no orbital equilibrium
```

---

## Strand definitions (tight)

### SID — structure band
```
SID_t = G_F( band(Q_t, Φ) )
```
- readable invariants of the current slice  
- filtered so no self‑membership snapshot appears  
- “band” stays informal for now

### PED — phase/tension
```
PED_t = (Q_t --Φ--> Q_{t+1}) with Eq(Q)
```
- flux‑driven modulation  
- maintains phase equilibrium over orbit  
- no stratified universe bump

### RME — late evaluation
```
RME_t = O_int[Q_t] o G_F o Γ(global_shadow)
```
- observer is local  
- Gödel filter applied slice‑wise  
- Γ(global_shadow) is a projection, never a snapshot

---

## Knot condition
```
K <=> Loop(SID) & Loop(PED) & Loop(RME)
```

Looping by **twist**, not by stratification:

```
SID_t --PED--> RME_t --PED--> SID_{t+1}
```

Equilibrium condition:

```
E_dyn(U) <=> Φ != 0 & Eq(Q) over orbit
```

---

## Drop‑in assertions

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
RME_t   = O_int[Q_t] o G_F o Γ
point   = pinch(SID_t)     % defined later
```

## **Enforce**

- Motion is primitive: $\Phi \neq 0$. No rest state of the universe.
- Time is only slice succession: $Q_t \to Q_{t+1}$. There is no master slice $Q_*$.
- The observer is an operator *of* the current slice: $O_{\mathrm{int}} = O_{\mathrm{int}}[Q_t]$. It cannot own $U$.
- Incompleteness is local: $G_F$ acts on $Q_t$ only. $\Gamma(\mathrm{global\_shadow})$ is a projection, so a global Gödel sentence never forms. $G_F^{local}$ is a computable, local transformation on the language of a slice that removes or refuses any formula whose quantificational reach or self‑reference would collapse the knot into a static universe.
- Equilibrium is an orbit, not a fixed point: $E_{\mathrm{dyn}}(U) \Leftrightarrow \Phi \neq 0 \land \mathrm{Eq}(Q)$ along the cycle.

The constraints are exactly the five forbidden collapse modes written in negation.

**Knotwork**

$U = K(\mathrm{SID}, \mathrm{PED}, \mathrm{RME})$ is not three things glued. It is the requirement that each strand loops *by twist*:

$$
\mathrm{SID}_t \xrightarrow{\mathrm{PED}} \mathrm{RME}_t \xrightarrow{\mathrm{PED}} \mathrm{SID}_{t+1}
$$

- $\mathrm{SID}_t$ is the readable invariants of this slice after the local Gödel filter.
- $\mathrm{PED}_t$ is the flux that carries phase/tension into the next slice without inserting a stratified “universe bump.”
- $\mathrm{RME}_t$ is late evaluation: local observer, local filter, shadow projection only.

Closure $K$ means that structure, modulation, and evaluation return to one another. That is why equilibrium can be orbital instead of a static fixed point.

| Symbol | Status |
|---|---|
| `band(Q_t, Φ)` | informal; only needs to yield a filterable invariant set |
| `Eq(Q)` | Open |
| `Γ(global_shadow)` | defined only negatively (not a snapshot) |
| `point = pinch(SID_t)` | deferred |

With `Eq(Q)` as a predicate on the orbit, $E_{\mathrm{dyn}}$ is an operator constraint. Everything else is already tight enough to reject the collapse modes.

**Minimal whole layer**

$$
U_{t+1} = K\!\left(
  G_F(\mathrm{band}(Q_{t+1},\Phi)),\;
  (Q_t \xrightarrow{\Phi} Q_{t+1}),\;
  O_{\mathrm{int}}[Q_{t+1}]\circ G_F\circ\Gamma
\right)
$$

with $\Phi\neq 0$ and no term allowed to range over all of $U$.

That is the reflexive-tight condition in one line: the universe is the knot of what a slice can read, what flux can carry, and what an internal observer can evaluate—never more. $G_F$ may rewrite or refuse formulas in $\mathrm{Lang}(Q_t)$. It may not add a formula that quantifies over all later outputs of $G_F$. That would be the filter writing $G_F(U)$ by listing itself. Local incompleteness includes the filter’s own future. The transformation is of this slice’s language. The next slice gets its own run.

## APPENDIX: Minimal closure of $E_{\mathrm{dyn}}$ :  

Make `Eq(Q)` an **orbit predicate** (instead of a state predicate):

  ```text
  Eq(Q)  iff  band(Q_{t+k}, Φ) ~ band(Q_t, Φ)
              and  Q_t != Q_{t+1}
              and  G_F(Q_t) holds
  ```
  (with `k` finite, not hard‑coded 3).  
  Then:
  ```text
  E_dyn(U) <=> Φ != 0  &  Eq(Q)
  ```
  is closed and still domain‑flexible.

## APPENDIX: Rejection rules

The reject rules enforceable:

```text
reject if Φ = 0
reject if exists Q_*
reject if O_int |- U
reject if G_F(U)
reject if pinch(SID_t) is treated as SID_t
reject if Γ is treated as snapshot
```

Those last two are the Gödel‑filter: points and globals are *use‑shadows*, never universe‑ranging terms.
