# Dining etiquette cutlery position rules
These visual cues originated in Western dining etiquette to silently communicate with servers in multi-course settings without verbal interruption, aiding smooth service flow.

| Signal | **S** (Structure) | **I** (Interaction) | **D** (Dynamics) | Canonical? |
|-------|--------------------|----------------------|------------------|------------|
| **Start** | Off‑plate baseline | None | Latent | Yes |
| **Pause** | V/tent | Still eating | Stable | **Yes** |
| **Next dish** | Vertical + horizontal | Undefined | Unstable | No |
| **Excellent** | Horizontal parallel | Undefined | Ambiguous | No |
| **Didn’t like it** | Crossed X | Undefined | Ambiguous | No |
| **Finished** | Parallel diagonal | Clear plate | Transition‑ready | **Yes** |

Only **Pause** and **Finished** produce stable, interpretable **I** and **D** across Western service training.

## Operational Rules 
**Real Dining Rooms**

In formal Western service, **only two signals are truly universal** — *Pause* and *Finished*. Everything else is decorative noise.

- **Never place utensils on the tablecloth** once the course begins.  
- **Pause** and **Finished** are the only signals reliably understood across hotels, Michelin service, and classical training.  
- Cultural variation exists (UK vs France vs US), but the parallel‑at‑4‑o’clock rule is nearly universal.  
- If uncertain, default to:
  - **Pause**  
  - **Finished**  

In relational terms, the dining table is a **relational manifold**, and cutlery positions are **state‑operators** that modulate server behavior. The two canonical signals correspond to **stable attractors** in the SID/PED dynamical space:

- **Pause** → stable fixed point  
- **Finished** → transition attractor  

All other viral signals fail because they do not produce a stable, shared **I** mapping across observers.

---

## Core  signals 
**Only two positions reliably communicate intent:**  
- **Pause/Resting** — *still eating*  
- **Finished** — *clear the plate*  

Everything else (Excellent, Didn’t like it, Next dish) is **non‑standard**, not taught in service training, and should be avoided in real fine dining.

---

## 1. Start Position (Initial Setting)
Utensils remain **outside the plate**, untouched.

```
  F               K
     (  Plate  )
```

- **Start position** signals nothing; it’s simply the pre‑meal layout.

---

## 2. Pause / Resting (Still Eating)
The only universally recognized “do not clear” signal.

```
     /\
    /  \
   F    K
 (  Plate  )
```

Technical notes:
- Handles rest on the plate edge; tips point inward.
- Often a **V** or inverted tent.
- In American style, fork may be tines‑up; Continental style often tines‑down.
- Servers are trained: **if utensils are separated or tented → guest is still eating.**

---

## 3. Next Dish (Informal / Viral)
Not part of classical etiquette; not taught in service manuals.

```
      |
   ---+---
      |
   (  Plate  )
(F vertical, K horizontal)
```

- Servers may misinterpret this as “finished” or “resting.”
- Use **only in casual contexts**, never in formal dining.

---

## 4. “Excellent” (Informal / Viral)
Parallel horizontal lines.

```
   ========
   ========
 (  Plate  )
```

- Not a recognized signal.
- In real service, this reads as **finished** or **resting**, depending on angle.

---

## 5. “Didn’t Like It” (Informal / Viral)
Crossed X.

```
    \ /
     X
    / \
 (  Plate  )
```

- Not standard; may be interpreted as “finished.”
- Considered rude in traditional etiquette.

---

## 6. Finished (Clear the Plate)
The only universally recognized “remove plate” signal.

```
      /
     /
    /
   / 
 (  Plate  )
```

Formal details:
- Fork and knife **parallel**, usually at **4–5 o’clock** (Continental) or **6 o’clock** (American).
- Fork tines up; knife blade facing inward.
- Handles together for easy pickup.
- Servers are trained: **parallel utensils = finished.**


## APPENDIX: Two‑Signal Cutlery Protocol 
**Formal Specification**

This protocol is a **binary relational code**: a two‑state operator that minimizes entropy in server interpretation. In RDG terms, **Pause** is a stable fixed point; **Finished** is a transition attractor. The system is intentionally low‑dimensional to prevent misreads in high‑noise environments.


| Signal | **S** | **I** | **D** | Status |
|-------|-------|--------|-------|--------|
| **Pause** | V/tent | retain plate | stable | canonical |
| **Finished** | parallel diagonal | clear plate | transition | canonical |

Everything else is undefined.

### Core Principle  
The dining table is treated as a relational manifold $\mathcal{M}_{\text{plate}}$.  
Cutlery positions encode a state  

$$
\Sigma = (S, I, D)
$$  

with **S** = geometric structure, **I** = communicative interaction, **D** = dynamical readiness.

Only two states are canonical:

1. **Pause / Resting** — *still eating*  
2. **Finished** — *clear plate*

---

### 1. PAUSE / RESTING  
**Meaning:** Still eating. Do not clear.

```
     /\
    /  \
   F    K
 (  Plate  )
```

#### SID  
- **Structure**

$$
S_{\text{pause}} = \{F, K\}_{\text{on‑plate}}^{\text{V‑form}}
$$

- **Interaction**  

$$
I_{\text{pause}} = \text{“retain plate”}
$$

- **Dynamics**  

$$
D_{\text{pause}} = \text{stable} \quad (\partial_t \Sigma \approx 0)
$$

#### PED  
- **Power:** Guest asserts control of plate.  
- **Evaluation:** Server must not clear.  
- **Dynamics:** State persists until utensils move.

---

### 2. FINISHED  
**Meaning:** Clear the plate.

```
      /
     /
    /
   / 
 (  Plate  )
```

#### SID  
- **Structure**  

$$
S_{\text{fin}} = F \parallel K \quad \text{diagonal at 4–5 o’clock}
$$

- **Interaction**  

$$
I_{\text{fin}} = \text{“clear plate”}
$$

- **Dynamics**  

$$
D_{\text{fin}} = \text{transition‑ready} \quad (\partial_t \Sigma > 0)
$$

#### PED  
- **Power:** Guest authorizes removal.  
- **Evaluation:** Server clears.  
- **Dynamics:** State triggers next course or end of service.

---

### Protocol Rules (Strict)

- **Only two states exist:**  
  - **Pause**  
  - **Finished**  

- **All other configurations are undefined** and treated as noise.

- **Utensils must remain on the plate** once the course begins.  
  Tablecloth placement is prohibited.

- **State transitions** are discrete:  

$$
\Sigma_{\text{pause}} \longrightarrow \Sigma_{\text{fin}}
$$  

Intermediate states are usually unrecognized.

- **Server behavior** is deterministic:  
  - If $\Sigma = \Sigma_{\text{pause}}$: retain plate.  
  - If $\Sigma = \Sigma_{\text{fin}}$: clear plate.

