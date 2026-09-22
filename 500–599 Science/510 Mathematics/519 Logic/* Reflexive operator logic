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
