# 🧭 **Enshittification: A Overview**

**Enshittification** is an informal term describing the progressive degradation of a platform, product, or service as corporate incentives shift from delivering value to extracting profit. Although humorous in origin, the concept captures a serious and increasingly visible pattern across digital platforms, consumer goods, and modern business models.

At its core, enshittification reflects a structural economic dynamic: **products and services worsen not because technology regresses or engineers become less capable, but because economic incentives increasingly reward extraction over quality.** As firms mature, consolidate market power, and face pressure for continuous growth, user experience becomes subordinate to monetization.

---

## **Definition and Origins**

The term blends “shit” with the suffix “‑ification,” emphasizing the gradual transformation of once‑useful systems into frustrating, low‑quality experiences. Canadian writer **Cory Doctorow** popularized the term beginning in 2022, using it to describe the lifecycle of digital platforms that initially delight users, then pivot toward advertiser or merchant interests, and ultimately degrade service for all participants in pursuit of short‑term profit.

Technology analysts such as **Ben Thompson** have articulated similar lifecycle theories: platforms begin by prioritizing users, shift toward monetization once scale is achieved, and eventually decline as incentives favor revenue extraction over long‑term value creation.

---

## **Why Enshittification Happens**

### **Economic Incentives**
The root cause lies in structural economic pressures:

- **Shareholder primacy** prioritizes quarterly returns over durability or user satisfaction.  
- **Planned obsolescence** encourages products designed to fail on predictable schedules.  
- **Subscription creep** replaces ownership with perpetual rent‑seeking.  
- **Market consolidation** reduces consumer choice, enabling firms to degrade quality without losing customers.

These forces create an environment where degradation is not accidental—it is economically rational.

---

## **Technology as a Vehicle for Extraction**

Although technological capability continues to advance, innovation increasingly serves monetization rather than product improvement. When genuine breakthroughs slow, firms turn to:

- subscription models  
- lock‑in ecosystems  
- aggressive data extraction  
- cost‑cutting in materials and manufacturing  
- reduced repairability  
- friction‑based revenue strategies  

The result is a paradox: **technology improves, but products worsen.**

---

## **Role of Artificial Intelligence**

Artificial intelligence exemplifies this dynamic. While AI has the potential to enhance products and services, corporate deployment often focuses on:

- reducing labor costs  
- automating customer support  
- increasing margins  
- scaling extraction mechanisms  

Ethical and user‑centric applications of AI are possible, but they remain exceptions rather than the norm.

---

## 🧩 **Concept Map: Enshittification**

```
ROOT CAUSE: ECONOMIC INCENTIVES
│
├─ Shareholder primacy → short-term profit over quality
├─ Planned obsolescence → engineered failure cycles
├─ Subscription creep → rentership replaces ownership
└─ Market consolidation → captive consumers

ENSHITTIFICATION
│
└─ Technology used for extraction rather than improvement

ROLE OF AI
│
├─ Labor reduction
├─ Automated support
└─ Minimal product enhancement

META-POINT: FAILURE
│
├─ Mechanical failure → fixable
└─ Digital failure → locked, permanent

ECONOMIC ENDGAME
│
├─ More subscriptions
├─ Less ownership
├─ Lower quality
├─ Higher prices
└─ Fewer choices

WHAT CAN WE DO?
│
└─ PRACTICAL RESISTANCE
   ├─ Buy repairable goods
   ├─ Avoid subscriptions
   ├─ Support durable products
   ├─ Learn basic repairs
   └─ Choose companies that build things to last

FINAL QUESTION: IS IT WORTH IT?
→ Yes. Durability and autonomy are forms of resistance.
```

---

## **Digital and Physical Examples**

Enshittification manifests across industries:

### **Digital**
- Social networks increasing ad load  
- Marketplaces imposing higher seller fees  
- Streaming services fragmenting content and raising prices  
- Software shifting from one‑time purchase to subscription models  

### **Physical**
- Appliances designed with shorter lifespans  
- Cars burdened with unnecessary electronics and subscription‑locked features  
- Consumer goods manufactured with cheaper materials and reduced repairability  

---

## **Formal Notation (Platform Economics)**

The phenomenon aligns with established models of two‑sided markets:

| Symbol | Meaning |
|--------|---------|
| $n_u(t)$ | User mass at time $t$ |
| $n_m(t)$ | Merchant/advertiser/content‑provider mass |
| $g_u(n_m)$ | User‑side affinity from merchant participation |
| $g_m(n_u)$ | Merchant‑side affinity from user participation |
| $\varepsilon_1, \varepsilon_3$ | Attrition rates |
| $\varepsilon_2, \varepsilon_4$ | Growth intensities |
| $P_u, P_m$ | Platform extraction rates (fees, ads, subscriptions) |
| $Q(t)$ | Platform quality |
| $\pi$ | Platform profit |

These models predict the lifecycle Doctorow describes: early value creation, lock‑in, extraction, and eventual decline.

                           ┌──────────────────────────────┐
                           │     ENSHITTIFICATION         │
                           │  (Degradation for profit)    │
                           └───────────────┬──────────────┘
                                           │
                                           ▼
                   ┌────────────────────────────────────────────┐
                   │ TWO-SIDED MARKET STRUCTURE (R–T, Armstrong)│
                   └────────────────────────────────────────────┘
                                           │
                                           ▼
      ┌────────────────────────────────────────────────────────────────────┐
      │ PLATFORM = INTERMEDIARY BETWEEN TWO GROUPS                         │
      │ Users (u) ↔ Merchants/Advertisers/Content Providers (m)            │
      │ Network effects: g_u(n_m), g_m(n_u)                                │
      └────────────────────────────────────────────────────────────────────┘
                                           │
                                           ▼
      ┌────────────────────────────────────────────────────────────────────┐
      │ DYNAMICS (canonical form)                                          │
      │ n_u(t+1) = (1−ε₁)n_u(t) + ε₂ g_u(n_m(t))                           │
      │ n_m(t+1) = (1−ε₃)n_m(t) + ε₄ g_m(n_u(t))                           │
      │                                                                    │
      │ Interpretation:                                                    │
      │ - ε parameters = churn, growth, lock-in                            │
      │ - g functions = cross-side network effects                         │
      │ - n_u, n_m = masses locked into the platform                       │
      └────────────────────────────────────────────────────────────────────┘
                                           │
                                           ▼
                     ┌────────────────────────────────────────────┐
                     │ PHASE 1: VALUE CREATION                    │
                     │ (High g_u, high g_m → rapid growth)        │
                     └────────────────────────────────────────────┘
                                           │
                                           ▼
      ┌────────────────────────────────────────────────────────────────────┐
      │ PLATFORM SUBSIDIZES QUALITY                                        │
      │ - Low prices (P_u, P_m)                                            │
      │ - High service quality                                             │
      │ - No ads, no subscriptions                                         │
      │ - Strong engineering focus                                         │
      │                                                                    │
      └────────────────────────────────────────────────────────────────────┘
                                           │
                                           ▼
                     ┌────────────────────────────────────────────┐
                     │ PHASE 2: CRITICAL MASS                     │
                     │ (n_u, n_m large → switching costs rise)    │
                     └────────────────────────────────────────────┘
                                           │
                                           ▼
      ┌────────────────────────────────────────────────────────────────────┐
      │ LOCK-IN EMERGES                                                    │
      │ - Users depend on platform                                         │
      │ - Merchants depend on access to user base                          │
      │ - Switching costs ↑                                                │
      │                                                                    │
      └────────────────────────────────────────────────────────────────────┘
                                           │
                                           ▼
                     ┌────────────────────────────────────────────┐
                     │ PHASE 3: EXTRACTION                         │
                     │ (Profit-maximizing P_u, P_m adjustments)    │
                     └────────────────────────────────────────────┘
                                           │
                                           ▼
      ┌────────────────────────────────────────────────────────────────────┐
      │ PLATFORM RAISES PRICES / REDUCES QUALITY                           │
      │ - Increase P_u (subscriptions, fees)                               │
      │ - Increase P_m (ad rates, seller fees)                             │
      │ - Reduce service quality                                           │
      │ - Introduce friction intentionally                                 │
      │                                                                    │
      │ Formal mechanism:                                                  │
      │   Platform maximizes π(P_u, P_m, n_u, n_m) subject to participation│
      │   constraints. Once n_u, n_m are large, constraints loosen.        │
      │                                                                    │
      └────────────────────────────────────────────────────────────────────┘
                                           │
                                           ▼
                     ┌────────────────────────────────────────────┐
                     │ PHASE 4: ENSHITTIFICATION                  │
                     │ (Full extraction →  experience collapses)  │
                     └────────────────────────────────────────────┘
                                           │
                                           ▼
      ┌────────────────────────────────────────────────────────────────────┐
      │ FORMAL ECONOMIC INTERPRETATION                                     │
      │                                                                    │
      │ 1. g_u(n_m) and g_m(n_u) weaken                                    │
      │    (network effects become negative)                               │
      │                                                                    │
      │ 2. ε₁, ε₃ (attrition) rise                                         │
      │    (users and merchants churn, but slowly due to lock-in)          │
      │                                                                    │
      │ 3. Platform compensates by raising P_u, P_m further                │
      │    (accelerating degradation)                                      │
      │                                                                    │
      │ 4. Quality spirals downward                                        │
      │                                                                    │
      └────────────────────────────────────────────────────────────────────┘
                                           │
                                           ▼
                     ┌────────────────────────────────────────────┐
                     │ PHASE 5: ECONOMIC ENDGAME                  │
                     └────────────────────────────────────────────┘
                                           │
                                           ▼
      ┌────────────────────────────────────────────────────────────────────┐
      │ ENDGAME IN FORMAL TERMS                                            │
      │                                                                    │
      │ - n_u, n_m plateau (market saturation)                             │
      │ - g_u, g_m collapse (negative network effects)                     │
      │ - P_u, P_m rise until attrition outweighs lock-in                  │
      │ - Platform becomes rent-extraction machine                         │
      │                                                                    │
      └────────────────────────────────────────────────────────────────────┘

---

## 🛠️ Experiment: Restoring Old Technology
**Restoring Old Technology as Demonstration**

Restoring older, high‑quality technology—such as durable appliances or mechanically robust vehicles—illustrates what engineering looked like before profit extraction dominated design. These artifacts embody:
- longevity  
- repairability  
- material quality  
- user‑centric design  

Durable appliances, mechanically robust vehicles, tools, and instruments from earlier eras often embody longevity, repairability, higher material integrity in critical parts, and designs oriented toward the user’s ability to maintain and keep the object working. Modern counterparts frequently prioritize cost reduction, sealed modules, software lock-in, thin margins, and replacement cycles. The restoration process itself becomes the demonstration: you can still open, diagnose, source or fabricate parts for, and return many older machines to reliable service decades later. That is rarer with much of today’s consumer technology.

### Built to last vs. built to extract

Pre-planned-obsolescence and pre-extreme-cost-optimization designs accepted higher upfront material and labor costs because the product was expected to deliver years or decades of service and remain serviceable. Contemporary design frequently optimizes for first-sale margin, supply-chain simplicity, and recurring revenue (parts, subscriptions, forced upgrades). The result is accelerated product decay that is engineered rather than inevitable.

Tangible counterexamples matter more than abstract critique. A restored mechanical washing machine, tractor, typewriter, camera, or vehicle that still functions well after 40–70 years demonstrates what was once routine engineering practice. The same object’s modern equivalent often cannot be economically or practically restored to equivalent longevity.

Repairability is the clearest differentiator. Older machines commonly used standard fasteners, accessible assemblies, service manuals, and replaceable wear items. Many current products use proprietary fasteners, glued or welded modules, software authentication of parts, and designs that make independent repair uneconomical or impossible.

They serve as tangible counterexamples to modern product decay. The restoration becomes a metaphor:
- Old tech = built to last
- New tech = built to extract

### Practical demonstration value
Restoring such technology is not nostalgia for its own sake. It is an empirical check:
- Document the original design choices (materials, tolerances, modularity).
- Measure the effort, cost, and skill required to return it to service.
- Compare failure modes and remaining useful life against a contemporary equivalent.
- Note where modern materials or techniques actually improve on the old design (better seals, coatings, electronics when they are not locked down) and where they degrade it.

The restored object then stands as physical evidence rather than rhetoric. People can see and operate something that was engineered under different incentives. The pattern is not universal—some modern industrial and professional equipment remains highly durable and repairable — but in mass-market consumer goods the shift toward extraction is well-documented and observable. Restoring the older artifacts simply makes the difference visible and tactile.

---

## 📉 **Economic Implications**

Enshittification signals deeper structural issues:

1. **Extraction exceeds value creation.**  
2. **Competition collapses**, enabling degradation without consequence.  
3. **Ownership erodes**, replaced by perpetual payment models.  
4. **Long‑term sustainability declines**, even as short‑term profits rise.

Once users and complementary businesses are captured, the platform shifts from mutual value exchange to rent extraction—through ads that degrade utility, fees, data harvesting, or forced upgrades. Marginal revenue is prioritized over marginal user benefit. High switching costs, data moats, regulatory capture, or winner-take-most dynamics reduce the discipline that competition once imposed. Degradation carries little immediate penalty because alternatives are weaker, more expensive to reach, or nonexistent in practice. Durable purchase is replaced by subscriptions, licenses, cloud dependencies, and authenticated parts. The user pays continuously for access rather than acquiring a self-contained asset that can be maintained, modified, or transferred independently. Quarterly metrics improve through cost-cutting, planned degradation, or monetization of the user base, even as trust, product quality, and ecosystem health erode. The firm captures value that previously accrued to users or was reinvested in durability.

Understanding these dynamics helps consumers, developers, and analysts anticipate platform trajectories and evaluate business models beyond quarterly metrics.

---

## **Conclusion**

Enshittification provides a critical lens for examining modern products and platforms. It highlights the tension between profitability and quality, warns of the consequences of unchecked extraction, and underscores the importance of repairability, durability, and user‑centric design. While individuals cannot reverse systemic incentives, they can make choices that support long‑lasting goods and resist the economic pressures that drive product decay.
