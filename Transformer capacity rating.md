# Transformer’s **true capacity rating**

---
### 🧠 **Capacity** 

kVA is the transformer’s **true capacity rating** because it reflects heating limits (I²R + core losses) independent of load type, while kW varies with power factor. A transformer is “full” at its kVA limit even if the real power (kW) delivered is lower under inductive or capacitive loads.

Even though kVA is the rating, **the internal copper losses are actually proportional to I²**, not kVA directly. kVA is just a convenient way to express the maximum allowable current at a given voltage without having to specify PF. It’s a *proxy* for thermal limits, not a fundamental physical quantity.


### 🔌 Why transformer nameplates use **kVA**, not kW

- **kVA** — simply **V × I**, no power factor.  
  - Heating in copper windings is proportional to **I²R**, and core heating is tied to **voltage**.  
  - Neither depends on whether the load is resistive, inductive, or capacitive.  
  - So kVA is the stable, physics‑aligned measure of “how hard the transformer is being pushed.”

- **kW** — **V × I × PF**, real power delivered to the load.  
  - PF varies with load type.  
  - Same transformer, same current, same voltage → **different kW** depending on PF.

---

### 🔧 Rated

- A transformer rated at **10 kVA** can always supply **10 kVA**, regardless of load type.  
- But the **real power (kW)** you get depends on the **power factor**:

$$
\text{kW} = \text{kVA} \times \text{PF}
$$

Examples for a 10 kVA transformer:

| PF | Real Power (kW) | Meaning |
|----|------------------|---------|
| 1.0 | 10 kW | Purely resistive load |
| 0.8 | 8 kW | Typical motor load |
| 0.6 | 6 kW | Heavily inductive load |
| 0.5 | 5 kW | Ugly PF, same heating, less usable power |

The transformer hits its **heating limit** at 10 kVA no matter what.  
The **usable real power** shrinks as PF drops.

---

### 🔥 Why this matters in the field
- A transformer doesn’t care about your load’s PF — it only “feels” **current** and **voltage** as heat.  
- But system cares, because poor PF means you’re getting fewer watts out of the same kVA.  
- This is why utilities penalize low PF: it wastes transformer capacity.

## Future work
- kVA derating for nonlinear loads  
- How PF correction increases usable kW  
- Why motor starting stresses transformers
