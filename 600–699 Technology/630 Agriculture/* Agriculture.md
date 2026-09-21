# Agriculture
- 630 Agriculture

**Agriculture** is the science, art, and business of cultivating soil, growing crops, and raising livestock. It produces food, fiber, fuel, and other goods that sustain human life and economies. Farming, cultivation, husbandry, tillage, agronomy are all in agriculture as both a craft and a science: the work of fields and herds, and the organized knowledge that supports it. In the United States, states such as Kansas and Missouri are major producers of corn, soybeans, and wheat, and of livestock—evidence of agriculture’s place in the regional economy. Agriculture remains both a source of nourishment and a base for economic growth, technical change, and the stewardship of land.

## Overview

Agriculture includes crop production, animal husbandry, and the management of land and water. It is among the oldest human practices and remains a foundation of most societies, shaping work, trade, settlement, and culture.

The English word comes from Latin *agricultura*: *ager* (field) + *cultura* (cultivation). Related terms include *farming*, *husbandry*, and *agronomy* (the science of crop and soil management). Related fields include horticulture, forestry, and soil science.

### Etymology

From Latin *agricultura*: *ager* / *agrī* (“field, land”) + *cultura* (“cultivation”). The English word is recorded from the late Middle Ages and became common in the seventeenth century.

1. **The practice.** Tilling soil, producing crops, and rearing animals for food, fiber, and other goods.  
2. **The science.** Systematic study and management of crops, soils, and livestock (closely related to *agronomy*).  
3. **The business.** Farming as an economic enterprise, including large-scale *agribusiness*.  
4. **The people.** Those whose work or class position is growing food.  
5. **A government department** (capitalized). In the United States, the Department of Agriculture (USDA), established in 1862.

### Related Terms

| Term | Meaning |
| --- | --- |
| Agronomy | Science of crop and farm management |
| Horticulture | Cultivation of gardens, fruits, flowers, vegetables |
| Husbandry | Farming, especially the care of animals; older sense: thrift |
| Pastoralism | Herding as a primary way of life |
| Transhumance | Seasonal movement of livestock between highland and lowland |
| Monoculture | Growing a single crop on a given land |
| Mixed farming | Crops and livestock on the same farm |
| Subsistence farming | Production mainly for the household, not the market |
| Hydroponics | Growing plants in nutrient solution without soil |
| Tillage | Working the land for crops |

Other specialized words include *citriculture* (citrus), *pomiculture* (fruit trees), *arboriculture* (trees), and *agrogeology* (soils and land suitability).

### Forms

- **Adjective:** agricultural  
- **Adverb:** agriculturally  
- **Person:** agriculturist, agriculturalist  

## Key Components

- **Crop production.** Planting, tending, and harvesting cereals, vegetables, fruits, and other plants, from traditional field farming to hydroponics and precision methods.
- **Animal husbandry.** Raising cattle, poultry, sheep, pigs, and other animals for meat, milk, eggs, wool, and related products.
- **Soil and water management.** Fertilizers, irrigation, drainage, and crop rotation used to keep land fertile and water use sustainable.
- **Agroforestry and mixed systems.** Combining trees with crops or livestock to support biodiversity, soil health, and lower environmental cost.

Specialized forms include dairy farming, ranching, market gardening, subsistence farming, mixed farming, and soilless culture (hydroponics).

## Modern Practices

Contemporary agriculture uses technology to raise yields and efficiency:

- **Mechanization.** Tractors, harvesters, and other machinery
- **Biotechnology.** Including improved and genetically modified varieties and pest resistance
- **Precision agriculture.** GPS, drones, and data used to guide planting, irrigation, and fertilization
- **Organic and sustainable methods.** Reduced synthetic inputs and attention to ecosystems

## Importance

- **Food security.** A stable supply of food for growing populations
- **Economic development.** Employment, rural livelihoods, and export commodities
- **Environment.** Farming shapes soil, water, and biodiversity; sustainable practice is needed for long-term balance


## APPENDIX: Mathematical formulas

Core mathematical formulas used in agriculture, grouped by topic, with standard notation. These are the workhorse identities. The Penman–Monteith, USLE, and fertilizer-adjustment equations are the ones most often implemented in software and extension recommendations. 

## Crop stand and seed rate

Plant population per hectare:

$$
PP = \frac{10{,}000}{r \times p}
$$

where $r$ is row spacing (m) and $p$ is plant spacing within the row (m). If spacings are in cm:

$$
PP = \frac{\text{Area (m}^2\text{)} \times 10{,}000}{\text{row spacing (cm)} \times \text{plant spacing (cm)}}
$$

Seed rate (kg ha$^{-1}$):

$$
SR = \frac{PP \times TW}{1000 \times G \times P}
$$

where $TW$ is thousand-seed (test) weight (g), $G$ is germination fraction, and $P$ is purity fraction.

## Yield and growth

Biological yield and harvest index:

$$
Y_e = Y_b \times HI
$$

$$
HI = \frac{Y_e}{Y_b}
$$

where $Y_e$ is economic (grain, fruit) yield, $Y_b$ is total aboveground biomass, and $HI$ is harvest index.

Growing degree days (heat units):

$$
GDD = \sum_{i=1}^{n} \max\left(0,\ \frac{T_{\max,i}+T_{\min,i}}{2}-T_b\right)
$$

where $T_b$ is the crop base temperature.

Crop growth rate (CGR) and net assimilation rate (NAR):

$$
CGR = \frac{W_2-W_1}{t_2-t_1}\cdot\frac{1}{A}
$$

$$
NAR = \frac{W_2-W_1}{t_2-t_1}\cdot\frac{\ln L_2-\ln L_1}{L_2-L_1}
$$

where $W$ is dry weight, $L$ is leaf area, $A$ is ground area, and $t$ is time.

A simple diminishing-returns yield response to nitrogen:

$$
Y = a + bN - cN^2
$$

Mitscherlich-type response:

$$
Y = A\left(1-e^{-c(x+b)}\right)
$$

where $A$ is maximum yield, $x$ is nutrient applied, $c$ is an efficiency coefficient, and $b$ is residual soil nutrient.

## Water and irrigation

Crop evapotranspiration (FAO approach):

$$
ET_c = ET_o \times K_c
$$

Under water stress:

$$
ET_{c,adj} = ET_o \times K_c \times K_s
$$

where $ET_o$ is reference evapotranspiration, $K_c$ is the crop coefficient, and $K_s$ is a stress coefficient ($0\le K_s\le 1$).

FAO Penman–Monteith reference ET (standard form):

$$
ET_o = \frac{0.408\Delta(R_n-G)+\gamma\frac{900}{T+273}u_2(e_s-e_a)}{\Delta+\gamma(1+0.34u_2)}
$$

where
- $R_n$ is net radiation (MJ ${m}^{-2}$ ${d}^{-1}$ )
- $G$ is soil heat flux
- $T$ is mean air temperature (°C)
- $u_2$ is wind speed at 2 m (m $s^{-1}$)
- $e_s-e_a$ is vapor-pressure deficit (kPa)
- $\Delta$ is the slope of the saturation vapor-pressure curve
- $\gamma$ is the psychrometric constant

Total available water in the root zone:

$$
TAW = 1000(\theta_{FC}-\theta_{WP})Z_r
$$

Readily available water:

$$
RAW = p\cdot TAW
$$

where $\theta_{FC}$ and $\theta_{WP}$ are volumetric water contents at field capacity and wilting point, $Z_r$ is rooting depth (m), and $p$ is the depletion fraction.

Net irrigation requirement (depth):

$$
NIR = (FC-PWP)\times BD\times D\times 10
$$

with $FC$, $PWP$ in percent by weight, $BD$ bulk density (g cm$^{-3}$), $D$ root-zone depth (cm), $NIR$ in mm.

Gross irrigation:

$$
GIR = \frac{NIR}{E_a}
$$

where $E_a$ is application efficiency.

Water productivity:

$$
WP = \frac{Y}{W}
$$

yield per unit of water applied or consumed (e.g. kg m$^{-3}$).

Leaching requirement (steady-state salinity):

$$
LR = \frac{EC_{iw}}{5\,EC_e-EC_{iw}}
$$

where $EC_{iw}$ is irrigation-water salinity and $EC_e$ is the desired soil-extract salinity.

## Fertilizer and nutrients

Mass of fertilizer material:

$$
F = \frac{N_{req}}{f}
$$

where $N_{req}$ is the required nutrient rate (kg ha$^{-1}$) and $f$ is the nutrient fraction in the product (e.g. 0.46 for urea-N).

Oxide–element conversions (common):

$$
P = 0.437\times P_2O_5,\qquad K = 0.830\times K_2O
$$

Target-yield fertilizer adjustment (soil-test based):

$$
F_N = aT - b\,SN
$$

and analogous forms for $P_2O_5$ and $K_2O$, where $T$ is target yield and $SN$ is soil-test nutrient.

Agronomic efficiency of a nutrient:

$$
AE = \frac{Y_{fert}-Y_{control}}{\text{nutrient applied}}
$$

## Soil erosion (USLE / RUSLE)

Average annual soil loss:

$$
A = R\cdot K\cdot LS\cdot C\cdot P
$$

where
- $A$ is soil loss (t ${ha}^{-1}$ ${yr}^{-1}$ or ton ${acre}^{-1}$ ${yr}^{-1}$)
- $R$ is rainfall–runoff erosivity
- $K$ is soil erodibility
- $LS$ is the combined slope-length and slope-steepness factor
- $C$ is cover–management
- $P$ is support-practice factor

## Livestock and rationing

Pearson square / two-feed mix for a target nutrient $T$:

If feeds have concentrations $A>T>B$,

$$
\text{parts of } A = T-B,\qquad \text{parts of } B = A-T
$$

Simultaneous protein and energy (two feeds $X,Y$):

$$
p_x X + p_y Y = P
$$
$$
e_x X + e_y Y = E
$$

Feed conversion ratio:

$$
FCR = \frac{\text{feed intake}}{\text{liveweight gain}}
$$

Crude protein from nitrogen:

$$
CP = N\times 6.25
$$

## Farm economics (simple)

Gross margin:

$$
GM = P\cdot Y - VC
$$

Break-even yield:

$$
Y_{BE} = \frac{FC+VC}{P}
$$

where $P$ is price, $Y$ yield, $VC$ variable cost, $FC$ fixed cost.

---
