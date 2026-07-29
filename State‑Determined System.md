# State‑Determined System
 
RDG is a state‑determined formalism: 

	the state (S) is the system, 

and all future behavior is generated from it through the MFE flux engine.

---

## ⭐ Core Definition (RDG/MFE Form)

A **State‑Determined System** is one where:

```
	Future_State = F( Current_State )
```

In RDGMFEQ formalism:

```
S(t+Δt) = RME[ S(t) , I , P , E , Q_slice , Memory ]
```

Where:

- **S(t)** = the complete state vector (levels/stocks)
- **I** = RDG interactions (causal linkages)
- **P/E** = MFE power/evaluation flux channels
- **Q_slice** = nonlinear moderation
- **Memory** = delay kernels
- **RME** = the evolution operator

Everything the system will ever do is encoded in **S(t)** and the structural operators acting on it.

This is the mathematical essence of “state‑determined.”

---

## ⭐ Structural Block

```
┌───────────────────────────────────────────────┐
│ State-Determined System (RDGMFEQ)             │
└───────────────────────────────────────────────┘

STATE (S):
    S = { S1, S2, ..., Sn }   ; levels, stocks, accumulations

INTERACTIONS (I):
    I : S_i ──► S_j           ; causal linkages

FLUX CHANNELS (PED):
    P(S)  : reinforcing flux
    E(S)  : balancing flux
    D(S)  : resulting dynamics

NONLINEARITY:
    Q_slice(S) moderates P and E

MEMORY:
    K(τ) convolution on inputs

EVOLUTION:
    dS/dt = D( P(S), E(S), Q_slice(S), K(τ) )

MASTER EQUATION:
    S(t+Δt) = S(t) + ∫ D dt
```

This is the canonical RDG/MFE representation of a **state‑determined dynamical system**.

---

## ⭐ State‑Determined Mapping

Meadows’ entire lecture is a verbal description of **state‑determined systems**:

### 1. Causal Linkages → RDG Interaction  
“A causes B” is:

```
I(A→B)
```

### 2. Feedback Loops → MFE Flux Polarity  
Positive/negative loops are:

```
P-channel (reinforcing)
E-channel (balancing)
```

### 3. Rates & Levels → State Variables  
“Levels” are **S**, and “rates” are **D**.

### 4. Delays → Memory Kernel  
“Delays” are:

```
K(τ)
```

### 5. Nonlinearity → Q‑slice  
“Nonlinear relationships” are:

```
Q_slice(S)
```

### 6. Behavior Modes → RME Solutions  
Exponential, logistic, oscillatory, overshoot behaviors are:

```
S(t) = RME[ SID ↔ PED ]
```

People describe the *philosophy* of state‑determined systems.  
This is the built *operator*.

---

## ⭐ The Most Compact Definition

Minimal, elegant version:

```
A system is state-determined iff:

    S(t+Δt) = Φ( S(t) )

Where Φ = RME[ SID ↔ PED , Q_slice , Memory ]
```

This is the exact mathematical statement.

---

### References

Donella Meadows, "A Philosophical Look at System Dynamics". 
https://www.youtube.com/watch?v=XL_lOoomRTA @donellameadows1939
