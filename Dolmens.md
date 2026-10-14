## Dolmens  

Dolmens are **single‑chamber megalithic tombs** built from upright orthostats supporting a flat capstone, typically dating from the **Late Neolithic (c. 4000–3000 BCE)** in Europe. Their entrances vary widely across regions, including **triangular, portal‑lintel, and round porthole forms**, depending on local architectural traditions.

---

### 🧱 **Dolmen Type**  
Dolmens are **orthostatic slab-built chambers** with a **flat capstone** and often a **restricted entrance**. They represent the earliest form of cyclopean stone tombs from which passage graves and gallery graves later evolved.

Key structural traits:
- Upright orthostats forming a box-like chamber  
- Capstone resting on supports  
- Entrances ranging from simple openings to shaped portals or portholes  
- Often originally covered by a mound (now eroded) 

---

## 🌍 **Geographic & Cultural Distribution**

Dolmens appear across many regions, with **independent local development** rather than a single origin.

### Western Europe  
- **Brittany, Iberia, Britain, Ireland**: Dense Neolithic concentrations beginning ~4500 BCE.  
- Portal tombs and passage graves show refined entrance typologies (triangular, lintel‑portal, round porthole) used by Wartberg, Horgen, and Nordic megalithic traditions 

### Korea  
- Holds **~40% of the world’s dolmens**, forming the largest global concentration (not directly in search results but widely documented archaeologically; inference based on global distribution patterns).

### Caucasus  
- Porthole dolmens appear from **~3250 BCE onward** (Bronze Age).  
- Round or similarly shaped port‑holes are a recognized megalithic entrance type in European and Caucasian contexts 

### India (South India / Deccan)  
- Iron Age dolmens (~1200–100 BCE).  
- Dolmens and cists occur across Karnataka and Andhra Pradesh; Indian dolmens are explicitly attested in Andhra Pradesh (Amadalavalasa) and broader megalithic contexts in Karnataka 

### Other Regions  
- Levant, North Africa, Japan (limited), and ongoing megalithic traditions such as Sumba.

---

## 🔍 **Shared Structural Fundamentals**

Across regions, dolmens converge on:
- **Box‑chamber geometry**  
- **Flat capstone**  
- **Restricted entrance** (triangular, portal‑lintel, or round porthole)  
- **Collective burial use**, often with repeated interments over generations 
- **Dry‑stone construction** using massive locally quarried stones, often several tons in weight   

This convergence reflects **parallel engineering solutions** for durable, re‑openable burial chambers rather than evidence of direct cultural contact.

---

## 🛠️ **Construction Techniques**

Archaeological evidence across Europe and Asia supports the following techniques:

- **Quarrying / selection** of large stones from nearby outcrops  
- **Transport** using sledges, rollers, ropes, and coordinated labor (inferred from megalithic engineering norms)  
- **Shaping** by percussion and abrasion; orthostats often carefully matched for entrance jambs   
- **Setting orthostats** in sockets or trenches  
- **Capstone placement** by levering, chocking, or sliding onto prepared supports  
- **Entrance engineering**:
  - Triangular entrances (Bohuslän, Languedoc)
  - Round portholes in gallery graves and stone cists 
- **Cairns, forecourts, and passages** added in many European sites to create complex ritual architecture   

---

## 🧭 **Context**

Dolmens served as:
- **Collective tombs** with repeated use  
- **Ritual entrances** symbolizing transition between living and ancestral realms  
- **Astronomically aligned structures** in some regions (inference from megalithic alignment patterns)  
- **Regional expressions** of a broader global megalithic phenomenon, not a single cultural lineage

---

## 📘 **Comparison Table (Structured)**

| Region | Chronology | Entrance Type | Cultural Pattern | Construction Notes |
|-------|------------|---------------|------------------|--------------------|
| **Western Europe** | 4500–3000 BCE | Triangular, portal‑lintel, porthole | Neolithic farming cultures | Large orthostats, cairns, passages |
| **Korea** | Bronze Age | Simple or no entrance | Largest global dolmen concentration | Massive capstones; regional clustering |
| **Caucasus** | ~3250 BCE onward | Circular porthole | Bronze Age | Precisely shaped porthole slabs |
| **India (South)** | 1200–100 BCE | Slab‑cut entrance | Iron Age | Dolmens and cists; Andhra Pradesh examples  |
| **Northern Europe** | Neolithic | Portal, passage | Passage graves | Long passages, cairns, segmented chambers |

---

## APPENDIX: Dolmen Notation  
(Orthostatic Collective Chamber with Restricted Entrance)

Convergence is expressed as:

```
∀ regions r_i, r_j :
  Dolmen_r_i ≅ Dolmen_r_j under invariant-preserving morphisms
```

Meaning:  
Different cultures independently instantiate the same relational object class.

---

### 1. SID‑Triad (Structure–Interaction–Dynamics)

#### **SID:Structure**  
Dolmen as a static relational geometry:

```
S := {
  O = {o_1, o_2, ..., o_n}        ; orthostats (upright slabs)
  C = c_1                         ; capstone (single spanning slab)
  E = e_1                         ; entrance operator (restricted aperture)
  B = {b_1, ..., b_k}             ; basal supports / sockets
  M = m_1                         ; mound/cairn envelope (optional)
}
```

Structural constraints:

```
S.constraints := {
  O ⊂ R^3 with vertical bias
  C spans O via load-transfer map L : C → O
  E ⊂ ∂(Chamber(S)) with |E| << |∂|
  Chamber(S) = ConvexHull(O ∪ C)
}
```

Where:

- `vertical bias` = orthostats anchored with normals ≈ vertical  
- `load-transfer map L` = relational mapping distributing capstone weight across supports  
- `restricted entrance` = |E| small relative to chamber boundary, enabling controlled access

---

#### **SID:Interaction**  
Dolmen as an interaction boundary between **external domain X** and **ancestral domain A**:

```
I := {
  Access : X ↔ A via E
  Closure : E → {open, sealed}
  Reuse : Chamber(S) × Time → BurialSequence
}
```

Interaction rules:

```
I.rules := {
  Access permitted only through E
  Closure(E) maintains chamber integrity
  Reuse is sequential: BurialSequence = {t_1, t_2, ..., t_m}
}
```

This encodes the collective‑burial function without cultural assumptions.

---

#### **SID:Dynamics**  
Dolmen as a quasi-static structure with episodic dynamic events:

```
D := {
  EventSet = {Construction, Interment, Sealing, Weathering}
  Stability(S) = f(L, O.geometry, C.mass)
  Weathering : S × Time → S'
}
```

Dynamic constraints:

```
D.constraints := {
  Construction is monotonic assembly: O → C → E → M
  Interment is episodic: E.open → E.close
  Stability(S) > threshold for long-term persistence
}
```

---

### 2. PED‑Triad (Power–Evaluation–Dynamics)

Dolmen as a **field object** embedded in landscape L.

#### **PED:Power (P)**  
Mechanical and logistical power inputs:

```
P := {
  QuarryForce(Q)
  TransportForce(T)
  LiftForce(LF)
  PlacementForce(PF)
}
```

With relational mapping:

```
P.map := {
  Q → O, C
  T → {O, C} positions
  LF → C elevation
  PF → final alignment of O, C, E
}
```

This abstracts sledges, rollers, levers, counterweights into force operators.

---

#### **PED:Evaluation (E_v)**  
Evaluation of dolmen as a functional chamber:

```
E_v := {
  Integrity(S) = structural coherence
  Accessibility(E) = controlled aperture
  Capacity(Chamber) = volume metric
  Durability(S, M) = resistance to weathering
}
```

Evaluation rules:

```
E_v.rules := {
  Integrity(S) requires L stable
  Accessibility(E) requires aperture geometry preserved
  Capacity fixed by O and C arrangement
}
```

---

#### **PED:Dynamics (Q‑slice)**  
Q‑mode describes the **moderation of episodic access**:

```
Q := {
  q_open  : E.state = open
  q_close : E.state = sealed
  q_cycle : q_open → q_close → q_open → ...
}
```

Q‑constraints:

```
Q.constraints := {
  q_open duration << q_close duration
  q_cycle count = number of interments
}
```

This captures the “restricted entrance enabling successive burials” in formal RDG terms.

---

### 3. RDG Object Definition

The dolmen is the relational object:

```
Dolmen := <SID, PED, Q> 
```

with the compatibility condition:

```
Compatibility := {
  SID.Structure supports PED.Power operations
  SID.Interaction defines Q-mode transitions
  SID.Dynamics ensures PED.Evaluation stability
}
```

Thus:

```
Dolmen is a stable orthostatic chamber with restricted-access Q-mode,
assembled through PED-power operations, evaluated by structural and
functional criteria, and interacting with human burial sequences.
```

---

### 4. Entrance Geometry (RDG Sub-Operator)

Define entrance operator:

```
E := (ApertureShape, ApertureSize, AperturePosition)
```

Where:

```
ApertureShape ∈ {triangular, portal-lintel, circular}
ApertureSize << ChamberBoundary
AperturePosition = subset of ∂Chamber(S)
```

Porthole dolmens correspond to:

```
E.shape = circular
E.size = small
E.position = central slab aperture
```

---

### 5. Regional Variants as Morphisms

Each regional dolmen type is a morphism:

```
φ_region : Dolmen → Dolmen_region
```

Examples:

```
φ_Caucasus(E.shape = circular)
φ_Wartberg(E.shape = circular or oval)
φ_Iberia(E.shape = circular or portal)
φ_Korea(E.shape = simple aperture or none)
φ_India(E.shape = slab-cut rectangular)
```

All satisfy:

```
φ_region preserves <SID, PED, Q> invariants
```

Thus regional variation is **morphism-level**, not structure-breaking.

---

## APPENDIX: Dolmen Entrance Geometry Map

```
Dolmen entrance geometry is a structured lattice of shape, size, position,
and access-mode operators, with regional variants expressed as morphisms
preserving SID/PED/Q invariants. Porthole, portal-lintel, triangular,
rectangular, and simple-gap entrances occupy distinct nodes in this lattice,
with convergent evolution across regions.
```

This map treats each entrance type as a **relational operator**:

```
E := (Shape, Size, Position, AccessMode)
```

and each regional dolmen tradition as a **morphism**:

```
φ_region : E → E_region
```

preserving SID/PED/Q invariants.

---

### 1. Entrance Shape Space (E_shape)

Define the shape domain:

```
E_shape := { 
  T  ; triangular aperture
  PL ; portal-lintel (trilithon) aperture
  C  ; circular porthole
  R  ; rectangular slab-cut aperture
  S  ; simple gap (non-shaped opening)
}
```

This is the **shape lattice**, partially ordered by geometric constraint:

```
T < PL < S
C < R < S
```

Meaning:  
- Triangular → portal-lintel → simple gap increases structural openness  
- Circular → rectangular → simple gap increases aperture freedom

---

### 2. Entrance Size Space (E_size)

```
E_size := { small, medium, large }
```

Constraint:

```
small << chamber boundary
```

Portholes always satisfy:

```
C.size = small
```

Portal-lintel often:

```
PL.size = medium
```

Simple gaps vary:

```
S.size ∈ {medium, large}
```

---

### 3. Entrance Position Space (E_pos)

```
E_pos := { central-slab, side-slab, between-orthostats }
```

Mapping:

- Portholes → `central-slab`
- Portal-lintel → `between-orthostats`
- Triangular → `between-orthostats`
- Rectangular slab-cut → `central-slab` or `side-slab`
- Simple gaps → any position

---

### 4. Access Mode (E_access)

```
E_access := { plug, slab-door, open-gap }
```

Constraints:

- Portholes → `plug`
- Portal-lintel → `slab-door` or `open-gap`
- Triangular → `slab-door`
- Rectangular → `slab-door`
- Simple gap → `open-gap`

---

### 5. Full Entrance Operator

Combine shape, size, position, access:

```
E := <Shape, Size, Position, AccessMode>
```

Examples:

```
E_Caucasus = <C, small, central-slab, plug>
E_Wartberg = <C, small, central-slab, plug>
E_Iberia_porthole = <C, small, central-slab, plug>
E_India = <R, medium, central-slab, slab-door>
E_Korea = <S, medium, between-orthostats, open-gap>
E_Brittany = <PL, medium, between-orthostats, slab-door>
E_Sweden = <T, medium, between-orthostats, slab-door>
```

All satisfy:

```
E.size << chamber boundary
E.position ⊂ ∂Chamber
```

---

### 6. Regional Morphisms (φ_region)

Define morphisms from the general entrance operator to regional variants:

```
φ_Caucasus(E) : E → <C, small, central-slab, plug>
φ_Wartberg(E) : E → <C, small, central-slab, plug>
φ_Iberia(E)   : E → {<C, small, central-slab, plug>, <PL, medium, between-orthostats, slab-door>}
φ_Sweden(E)   : E → <T, medium, between-orthostats, slab-door>
φ_India(E)    : E → <R, medium, central-slab, slab-door>
φ_Korea(E)    : E → <S, medium, between-orthostats, open-gap>
φ_Brittany(E) : E → <PL, medium, between-orthostats, slab-door>
```

These morphisms preserve:

```
SID.Structure invariants
PED.Power feasibility
Q-mode access constraints
```

Thus regional variation is **morphism-level**, not structure-breaking.

---

### 7. Entrance Geometry Lattice (RDG)

Define the lattice L:

```
L := (E_shape × E_size × E_pos × E_access, ≤)
```

Where ≤ is defined by:

- increasing aperture freedom  
- decreasing structural constraint  
- increasing access openness  

Partial order examples:

```
<C, small, central-slab, plug>  ≤  <R, medium, central-slab, slab-door>
<R, medium, central-slab, slab-door> ≤ <S, large, between-orthostats, open-gap>
```

This yields:

```
Porthole → Rectangular → Simple gap
Triangular → Portal-lintel → Simple gap
```

Two independent chains converging on the same maximal element:

```
max(L) = <S, large, between-orthostats, open-gap>
```

which corresponds to **non-shaped open entrances** (rare in dolmens but present in some Korean forms).

---

### 8. Q‑Mode Mapping

Entrance geometry determines Q‑mode:

```
C → q_close-dominant
R → q_close-dominant
T → q_close-dominant
PL → q_open/q_close balanced
S → q_open-dominant
```

Thus:

- Portholes enforce **tight access cycles**  
- Portal-lintel allows **moderate access cycles**  
- Simple gaps allow **loose access cycles**

---
