```
+-----------------------------------+
|      EARTHING vs GROUNDING        |
+-----------------------------------+
|  EARTHING (IEC / UK / Global)     |
|  * Non-current-carrying metal     |
|  * Discharges fault/leakage       |
|  * Human touch-voltage safety     |
|                                   |
|  GROUNDING (NEC / IEEE / US)      |
|  * Neutral / live circuit return  |
|  * System zero-volt reference     |
|  * Overvoltage/surge stabilization|
+-----------------------------------+

```

### Technical Review & Standard Clarifications

The distinction highlighted touches on one of the most common debates in power engineering: **regional nomenclature (NEC vs. IEC)** versus **functional application (Equipment Protection vs. System Reference)**.

**1. Regional Vocabulary vs. Functional Definitions**

* **NEC / IEEE Standard (North America):** The term **Grounding** is used across the board.
* *Equipment Grounding:* Connecting non-current-carrying metal parts to the ground to clear faults (what IEC calls earthing).
* *System Grounding:* Connecting a current-carrying conductor (usually the transformer neutral) to ground to establish a zero-volt reference.
* *Bonding:* Electrically interconnecting conductive parts together to ensure electrical continuity and equal potential.


* **IEC / BS 7671 Standard (UK, Europe, International):**
* **Earthing:** Physically connecting metallic enclosures directly to the mass of the earth via an earth electrode.
* **Bonding (Equipotential):** Linking metallic structures together so no dangerous potential difference can exist between two simultaneously accessible parts.

**2. Accuracy of the Distinction**

| Feature | Earthing (Chassis / Equipment) | Grounding (System / Neutral) |
| --- | --- | --- |
| **Connected Path** | Enclosures, chassis, conduit | Transformer neutral ($N$), zero reference |
| **Normal Operation** | Carries zero current | Can carry unbalanced return current |
| **Fault Role** | Provides low impedance to trip breaker | Limits voltage spikes and stabilizes phase voltages |
| **Primary Goal** | Human life protection (shocks) | Grid/circuit equipment protection |

**3. Engineering Recommendations for the Post**

* **Clarify the Standard:** Mention that *Earthing* is primarily IEC terminology, whereas *Grounding* is standard in NEC regions.
* **Emphasize Bonding:** A copper rod driven into the earth does **not** clear circuit breakers during a line-to-chassis fault by itself (earth impedance is too high). A low-impedance metallic **bonded return path** back to the neutral source is what actually trips the overcurrent protective device (OCPD).
