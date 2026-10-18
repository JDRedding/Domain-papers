# **RDGMFEQ: SID↔PED Morphism Specification**  
*(Stable GitHub Specification)*

## 1. Overview
This document specifies the **SID→PED morphism** in the RDGMFEQ architecture and formalizes the dual placement of the electric displacement field **D** in both ${SID.Dynamics}$ and ${PED.Dynamics_{slice}}$. The morphism is a structure‑preserving map between the geometry‑side triad **SID** and the field‑side triad **PED**, aligning their operator slots and enabling bidirectional transport of dynamical information.

---

## 2. Triad Definitions

### 2.1 SID Triad (Structure–Interaction–Dynamics)
```
SID = {
    Structure,      // geometric substrate
    Interaction,    // coupling rules
    Dynamics        // stored dynamical configuration
}
```

### 2.2 PED Triad (Power–Evaluation–Dynamics)
```
PED = {
    Power,          // field power modes
    Evaluation,     // residual/evaluation operators
    Dynamics        // dynamic-slice evolution
}
```

---

## 3. Morphism Definition

### 3.1 Component-wise mapping
```
SID.Structure    → PED.Power
SID.Interaction  → PED.Evaluation
SID.Dynamics     → PED.Dynamics
```

The mapping is strict: each component of SID is transported into the corresponding component of PED.

---

## 4. Dynamics-Slot Identification

### 4.1 Statement
The displacement field **D** occupies both:
- `SID.Dynamics(D)`
- `PED.Dynamics(D)`

This is not duplication; it is identification under the morphism.

### 4.2 Formal identification
```
SID.Dynamics(D)  ≡  PED.Dynamics(D)
```

The substrates differ (geometry versus field), but the operator slot is the same.

---

## 5. Pushforward: SID → PED

### 5.1 Purpose
Transport the geometry-side displacement configuration into the field-side slice.

### 5.2 Activation
```
D_SID  →  D_PED
```

### 5.3 Operators applied on the PED side
```
FluxResidual(D)        = ∇·D
DisplacementMomentum(D) = ∂t D
```

These operators require the PED-side representation.

---

## 6. Pullback: PED → SID

### 6.1 Purpose
Return field-side dynamical outputs to the geometry-side source ledger.

### 6.2 Effective source update
```
J_total = J + ∂t D
```

The displacement-momentum term is treated as a SID-side source contribution.

---

## 7. Consistency Conditions

### 7.1 Dynamics-slot coherence
The morphism must satisfy:
```
Dynamics_SID(D) → Dynamics_PED(D)
```
and the reverse influence:
```
Dynamics_PED(∂t D) → SID source update
```

### 7.2 No single-side confinement
The architecture forbids confining **D** to only SID or only PED. Dual placement is required for:
- polarization memory,
- field activation,
- residual consistency,
- source reconciliation.

---

## 8. Implementation Notes (RDG-Compatible)

### 8.1 Operator-clean ASCII form
All operators must be expressed in RDG-stable ASCII:
```
div(D)
dt(D)
J + dt(D)
```

### 8.2 Dynamic-slice alignment
PED.Dynamics must expose the dynamic-slice representation of **D** for integration into the MFE-side dynamical engine.

### 8.3 Morphism as functor
The SID→PED mapping is treated as a functor:
```
F : SID → PED
F(D) = D
```
with identity on the dynamical component.

---

## 9. Minimal Example Block
```
SID.Dynamics(D) → PED.Dynamics(D)
PED.Dynamics(∂t D) → SID source update

Flux: div(D)
Displacement momentum: dt(D)
Total momentum: J_total = J + dt(D)
```

---

## 10. Status
This specification is stable and ready for inclusion in the RDGMFEQ.

---
