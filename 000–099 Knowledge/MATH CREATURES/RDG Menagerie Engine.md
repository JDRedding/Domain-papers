# **RDG Menagerie Engine**  
**Ruleset (Surface Loop + Macro Dynamics)**

A two-player (or solo) card game that uses the creature cards generated.  
Surface play stays simple. The deeper cosmology lives in the shared Flux track, polarity state, and coupling loop.

---

### 1. Core Components

**Card Categories (from the sets we built)**

| Layer | Cards | Role |
|-------|-------|------|
| **SID Triad** | Structure Stag, Interaction Ibex, Dynamics Darter, Coarse-Grain Gryphon, Relation Raccoon | Structure, stability, formation |
| **PED Triad** | Power Panther, Evaluation Eagle, Dynamics Drake, Momentum-Flux Fox, Boundary-Reset Ram | Force, evaluation, momentum |
| **Q Set** | Positive-Q Quoll, Negative-Q Nighthawk, Boundary-Q Beetle, Mixed-Q Mongoose, Stability Stoat | Polarity, risk, volatility |
| **Operator Layer** | Merge-Morphism Manta, Tensor-Tapir, Adjoint Antelope, Composition Coyote, Inversion Ibis | Composition & transformation |
| **Field Layer** | Gradient Gecko, Divergence Dolphin, Curl Crane, Relational-Flow Ferret, Field-Falcon | Vector / flow effects |
| **State Layer** | State-Space Stork, Phase-Porpoise, Manifold Marmot, Slice-Salamander, Orbit-Ocelot | Positioning & recurrence |
| **Coupling Layer** | Coupling Cougar, Saturation Seal, Threshold Thrush, Fold-Falcon, Impulse Ibex | Bridges & thresholds |
| **Signal Layer** | Noise-Numbat, Filter-Fox, Signal-Swan, Residual-Raven, Norm-Narwhal | Noise, filtering, magnitude |
| **Memory Layer** | Master-Equation Moose, Memory-Hysteresis Hyena, Survival-Score Serpent, Nonlinear-Nexus Newt, Fresh-Input Falcon | Long-arc scoring |

Do not need every card. A playable set can be built from any 30–40 cards across these layers.

---

### 2. Shared Board Elements

**Flux Track** (5–7 spaces)  
A shared track in the center of the table.  
- Starts in the middle (neutral).  
- Cards push it left (toward Q– / stability) or right (toward Q+ / volatility).  
- Current position modifies global rules each turn (see Flux Effects below).

**Player States**  
Each player tracks:  
- **Q Polarity**: Q+, Q–, or Q0  
- **Momentum Stability** (long-arc score, starts at 0)

---

### 3. Turn Structure (Simple Surface Loop)

1. **Draw** – Draw 1 card (or 2 if Flux is at extreme right).  
2. **Play** – Play up to 1 card from hand (or 2 if pay a cost set by current Flux).  
3. **Activate** – Choose one:  
   - Activate a card’s basic effect, **or**  
   - Perform **Coarse-Graining** (once per turn), **or**  
   - Shift Q Polarity (costs resources).  
4. **Resolve** – Apply Flux movement, polarity effects, and any delayed triggers.  
5. **Score** – Adjust Momentum Stability based on the turn’s balance.

---

### 4. Core Macro Systems

**A. SID ↔ PED Coupling Loop**  
This is the engine.

- SID cards generate **Forms** (tokens or temporary markers).  
- PED cards convert Forms into **Actions** (damage, draw, Flux push, polarity shift, etc.).  
- Q Polarity modifies conversion efficiency:  
  - Q+ → more Actions from fewer Forms (high tempo, risk of overshoot)  
  - Q– → fewer but more stable Actions  
  - Q0 → balanced 1:1 conversion

**B. Q Polarity (Risk/Reward Dial)**  
Current polarity changes how cards behave:

| Polarity | Tempo | Stability | Special Effect |
|----------|-------|-----------|----------------|
| **Q+** | High | Low | Extra draw or damage, but Flux drifts right more easily |
| **Q–** | Low | High | Stronger defense / Flux resistance, slower resource gain |
| **Q0** | Medium | Medium | Clean conversion, no extremes |

Polarity can be shifted by certain cards (especially Mixed-Q Mongoose, Stability Stoat, Boundary-Q Beetle) or by Coarse-Graining.

**C. Flux Track Effects** (example 7-step track)

| Position | Global Modifier |
|----------|-----------------|
| Far Left (Stable) | Cards cost less; Q– effects stronger |
| Near Left | Mild stability bonus |
| Center | Neutral |
| Near Right | Mild volatility bonus |
| Far Right (Volatile) | Extra draw; Q+ effects stronger; risk of forced polarity flip |

Cards from PED, Field, and Coupling layers push the track. SID and Memory layers resist movement.

**D. Coarse-Graining (Once-per-turn Macro Action)**  
May collapse 2–3 cards or tokens into a single higher effect:

- Combine low-tier SID + PED into a strong Action  
- Convert Flux position into resources or Stability points  
- Reset polarity for a burst (with a cost)  
- “Fold” a temporary advantage into permanent Momentum Stability

This is the big RDG move. It feels powerful but is limited to once per turn.

**E. Momentum Stability (Long-arc Scoring)**  
At the end of each turn, adjust Stability score based on:

- Balance between SID and PED played  
- Current Q Polarity alignment with Flux  
- Successful Coarse-Graining  
- Residual/error cards (Residual-Raven, Noise-Numbat) can subtract points

The player with the higher Momentum Stability at the end of the agreed number of turns (or when the deck empties) wins.

---

### 5. Basic Card Behaviors (Surface Layer)

- **SID cards**: Create Forms, stabilize Flux, enable structure.  
- **PED cards**: Spend Forms to push Flux, deal effects, or generate tempo.  
- **Q cards**: Directly modify polarity or react to current polarity.  
- **Operator cards**: Transform other cards or change how Forms convert.  
- **Field / State cards**: Move Flux, create recurring effects, or lock positions.  
- **Coupling cards**: Bridge SID↔PED or force threshold events.  
- **Signal / Memory cards**: Filter noise, score residuals, or lock in long-term points.

Exact numbers (damage, draw, Flux steps) can be tuned later. The important part is the loop: **SID makes Forms → PED spends them → Q changes the exchange rate → Flux and Coarse-Graining reshape the board**.

---

### 6. Win Condition

After a set number of turns (recommended 8–12) or when both players’ decks are empty:

Highest **Momentum Stability** wins.  
Ties are broken by:  
1. Who controlled the center of the Flux track more often  
2. Who performed the most successful Coarse-Grainings  
3. Final Q Polarity alignment with the final Flux position

---

### Optional Solo Mode
Play against an automated “Flux Drift” opponent that always pushes the track toward the opposite of polarity and scores Stability based on how much overshoot.
