# **Plants (Botany)**
- 580 Plants (Botany)

Plants are defined in botany as **photosynthetic, multicellular eukaryotes** with **cellulose cell walls**, **chloroplasts**, and **life cycles featuring alternation of generations**. They include everything from mosses and ferns to towering trees and flowering crops.

| Domain | Subject |
|--------|---------|
| 580 | Plants (Botany) |
| 581 | Specific topics in natural history of plants |
| 582 | Plants noted for characteristics & flowers |
| 583 | Dicotyledons |
| 584 | Monocotyledons |
| 585 | Gymnosperms; conifers |
| 586 | Seedless plants |
| 587 | Vascular seedless plants |
| 588 | Bryophytes |
| 589 | [Unassigned] |

# 🌸 **Plants (Kingdom Plantae)**

In botany, plants are **multicellular, photosynthetic, eukaryotic organisms** belonging to the kingdom **Plantae**. They are characterized by **cellulose cell walls**, **chlorophyll‑based photosynthesis**, and **life cycles featuring alternation of generations**.

Plants make their own food through photosynthesis, have rigid cellulose cell walls, and develop from embryos retained within parental tissue—traits that distinguish them from fungi, animals, and most algae.

---

## 🌱 **Core Botanical Characteristics**

- **Eukaryotic cells** — plant cells contain membrane‑bound organelles, including chloroplasts.  
- **Chlorophyll a and b** — pigments enabling photosynthesis, converting sunlight, water, and CO₂ into sugars and oxygen.  
- **Cellulose cell walls** — provide rigidity and structural support.  
- **Embryophyte development** — land plants develop from a multicellular embryo protected by the parent plant.  
- **Alternation of generations** — life cycle alternates between haploid gametophyte and diploid sporophyte stages.  
- **Mostly multicellular and autotrophic** — most plants produce their own food, though parasitic species exist.  

---

## 🌳 **Major Groups of Plants**

Botanists divide the kingdom **Plantae** into several major evolutionary lineages:

- **Bryophytes** — mosses, liverworts, hornworts; non‑vascular and moisture‑dependent.  
- **Seedless vascular plants** — ferns and lycophytes; vascular tissue present, reproduction via spores.  
- **Gymnosperms** — conifers, cycads, ginkgo; produce “naked” seeds not enclosed in fruit.  
- **Angiosperms** — flowering plants; the most diverse group, producing seeds enclosed in fruits.  

These groups reflect adaptations for water conservation, structural support, and reproductive efficiency on land.

---

## 🌾 **What Plants Are Not**

Understanding plants also means distinguishing them from similar organisms:

- **Fungi** — lack chlorophyll and absorb nutrients rather than photosynthesize.  
- **Algae** — many algae belong to other kingdoms; only green algae are closely related to land plants.  
- **Animals** — lack cell walls and cannot photosynthesize.  

---

## 🌍 **Ecological Importance**

Plants are foundational to Earth’s ecosystems because they:

- **Produce oxygen** through photosynthesis  
- **Form the base of most food webs**  
- **Regulate climate** by absorbing carbon dioxide  
- **Create habitats** and stabilize soils

## Mathematical equation and formulas
These are the equations you will meet first in plant physiology, crop modelling, and forest ecology. If you need the expanded FvCB electron-transport equations, the Penman–Monteith transpiration formula, or Höfler / pressure–volume curve relations, they will be found in specific paper or domain.

Botany uses a relatively small set of core equations from physiology, biophysics, and growth analysis. Below are the ones that appear most often, with standard notation.

### Photosynthesis (overall reaction)

The net photosynthetic equation for C3 plants is

$$
6\,\mathrm{CO}_2 + 6\,\mathrm{H}_2\mathrm{O} \;\xrightarrow{\text{light}}\; \mathrm{C}_6\mathrm{H}_{12}\mathrm{O}_6 + 6\,\mathrm{O}_2
$$

More generally one writes the molar balance as net assimilation of $\mathrm{CO}_2$.

### Water potential

Total water potential $\Psi$ (usually in MPa) is the sum of its components:

$$
\Psi = \Psi_s + \Psi_p + \Psi_g + \Psi_m
$$

| Symbol | Meaning |
|--------|---------|
| $\Psi$ | total water potential |
| $\Psi_s$ or $\Psi_\pi$ | solute (osmotic) potential |
| $\Psi_p$ | pressure (turgor / hydrostatic) potential |
| $\Psi_g$ | gravitational potential |
| $\Psi_m$ | matric potential |

In many leaf and cell calculations gravity and matric terms are dropped:

$$
\Psi = \Psi_s + \Psi_p
$$

Water flows from higher $\Psi$ to lower $\Psi$.

### Solute potential (van ’t Hoff)

For dilute solutions:

$$
\Psi_s = -iCRT
$$

| Symbol | Meaning | Typical units |
|--------|---------|---------------|
| $i$ | ionization (van ’t Hoff) factor | dimensionless |
| $C$ | molar concentration of solute | mol L$^{-1}$ or mol m$^{-3}$ |
| $R$ | gas constant | 8.314 J mol$^{-1}$ K$^{-1}$ or 0.0831 L bar mol$^{-1}$ K$^{-1}$ |
| $T$ | absolute temperature | K |

### Farquhar–von Caemmerer–Berry (FvCB) C3 photosynthesis model

Net assimilation $A$ is the minimum of the Rubisco-limited and electron-transport-limited rates, minus mitochondrial respiration:

$$
A = \min(A_c, A_j) - R_d
$$

Rubisco-limited rate:

$$
A_c = V_{c\max}\frac{c_i - \Gamma^*}{c_i + K_m} - R_d
$$

(with $K_m = K_c(1 + O/K_o)$ in the full form).

| Symbol | Meaning |
|--------|---------|
| $A$ | net $\mathrm{CO}_2$ assimilation rate (µmol m$^{-2}$ s$^{-1}$) |
| $A_c$ | Rubisco-limited rate |
| $A_j$ | RuBP-regeneration (electron-transport) limited rate |
| $V_{c\max}$ | maximum carboxylation rate |
| $c_i$ | intercellular $\mathrm{CO}_2$ mole fraction or partial pressure |
| $\Gamma^*$ | $\mathrm{CO}_2$ compensation point in the absence of $R_d$ |
| $K_c, K_o$ | Michaelis–Menten constants of Rubisco for $\mathrm{CO}_2$ and $\mathrm{O}_2$ |
| $R_d$ | day (mitochondrial) respiration |
| $J$ or $J_{\max}$ | electron-transport rate / its maximum |

### Canopy light attenuation (Beer–Lambert)

Light intensity declines exponentially with leaf area index:

$$
I = I_0\,e^{-k\,\mathrm{LAI}}
$$

or, for intercepted radiation,

$$
I_{\mathrm{abs}} = I_0\bigl(1 - e^{-k\,\mathrm{LAI}}\bigr)
$$

| Symbol | Meaning |
|--------|---------|
| $I, I_0$ | irradiance inside / above the canopy |
| $\mathrm{LAI}$ | leaf area index (m$^2$ leaf m$^{-2}$ ground) |
| $k$ | extinction coefficient (typically 0.4–0.8) |

A more geometric form uses the projection function $G(\theta)$:

$$
P(\theta) = \exp\bigl(-G(\theta)\,\mathrm{LAI}/\cos\theta\bigr)
$$

### Classical plant-growth analysis

Relative growth rate:

$$
\mathrm{RGR} = \frac{1}{W}\frac{\mathrm{d}W}{\mathrm{d}t} = \frac{\ln W_2 - \ln W_1}{t_2 - t_1}
$$

Net assimilation rate (unit leaf rate) and leaf-area ratio:

$$
\mathrm{RGR} = \mathrm{NAR}\times\mathrm{LAR}
$$

$$
\mathrm{LAR} = \frac{A}{W},\qquad \mathrm{SLA} = \frac{A}{W_{\mathrm{leaf}}}
$$

| Symbol | Meaning |
|--------|---------|
| $W$ | plant dry mass |
| $A$ | leaf area |
| $\mathrm{RGR}$ | relative growth rate (time$^{-1}$) |
| $\mathrm{NAR}$ | net assimilation rate (mass area$^{-1}$ time$^{-1}$) |
| $\mathrm{LAR}$ | leaf-area ratio |
| $\mathrm{SLA}$ | specific leaf area |

### Allometry

Power-law scaling of one organ or trait with another:

$$
Y = a X^b
$$

Common predictors $X$ are stem diameter $D$ or $D^2H$.

### Hydraulic flow (Darcy / pipe analogy)

Volumetric flow along a pathway:

$$
q = \frac{k}{\eta}\Delta\Psi
$$

Water therefore moves down a water-potential gradient, opposed by viscosity $\eta$ and limited by hydraulic conductivity $k$.


