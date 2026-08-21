# Dryer - Runs but No Heat  
A concise diagnostic workflow for confirming heating‑circuit failures on electric dryers. This writeup provides a repeatable, technician‑friendly reference for diagnosing Samsung dryers that run but do not heat. 

## Overview  
When a dryer **tumbles but does not produce heat**, the failure is almost always inside the heating circuit. Samsung heaters are wired in a **series chain**, meaning **one open component disables the entire heater**.

```
L2 → Thermal Fuse → High‑Limit Thermostat → Heating Element → Neutral
```

This writeup documents the three primary components to test and the expected meter readings.

---

## 🔧 Components to Test (Continuity)

### 1. **Thermal Fuse**  
- Location: Heater housing  
- Expected reading: **0 Ω (closed)**  
- Notes: If open, the dryer will run normally but never energize the heater.

### 2. **High‑Limit Thermostat**  
- Location: Heater housing  
- Expected reading: **0 Ω (closed)** at room temperature  
- Notes: Opens only during overheating; if open, heat is disabled.

### 3. **Heating Element Coil**  
- Location: Heater assembly  
- Expected reading: **8–12 Ω**  
- Notes: If the coil is broken/open, the dryer tumbles but produces no heat.

---

## Diagnostic Summary  
Checking continuity on these three components is the fastest way to confirm whether the heating circuit is open. If **all three pass**, the next suspects are:

- **Power supply** (missing one leg of 240 V)  
- **Heater relay / control board**  
- **Wiring harness damage** in the heater circuit

