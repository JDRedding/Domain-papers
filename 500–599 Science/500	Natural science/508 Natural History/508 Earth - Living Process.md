# TYPE Earth = Living_Process
- 508 Natural History / Earth System Science
- 551.6 — Climatology (energy balance, albedo, greenhouse factor)
- 551.48 — Hydrology (water budget equations)
- 577 — Ecology (biosphere feedback loops)
- 574.5 — Biogeochemical cycles (C, N, P, H2O)
- 113 — Cosmology / philosophy of nature (Earth-as-organism metaphor)


## RELATION
```
  Life is not just on Earth — it is Earth.
  We are not outside managing a resource.
  We are cells inside the body.
  Caring for Earth = self-care.
```

### CORE
```
  food            : Sunlight
  blood           : Water
  bones           : Rock
  breath          : Atmosphere
  sensing         : Life  (microbes → forests → us)
  digestion       : CarbonCycle + WaterCycle
  memory          : Ice | Stone | DNA | Culture
  regulation      : Adapt + Heal + Homeostasis
```
### FUNDAMENTALS
```
  food            : Sunlight
  blood           : Water (oceans, rivers, ice, tides)
  bones           : Rock (continents, mountains, mantle)
  skin            : Soil
  breath          : Atmosphere (lungs + voice)
  heartbeat       : Inner heat (primordial + radioactive)
  aura            : Magnetism
  sensing         : Biosphere (microbes, fungi, plants, animals, humans)
  synapses        : Mycelial networks
  sense_organs    : Forests + Reefs
  digestion       : Carbon + Nitrogen + Water + Phosphorus cycles
  memory          : Ice cores | Stone layers | Fossils | DNA | Culture
  regulation      : Homeostasis (temperature, chemistry, salinity)
```
### VARIABLES
```
  emotions        : Storms
  moods           : Seasons (tilt + orbit)
  impulses        : Migrations
  pulse           : Tides
  circulation     : Ocean currents
  cells           : Humans
  new_tissue      : Cities + Networks + Economies
  wounds          : Volcanoes + Human force
  age_state       : Young → Aged → Surviving
```
### CYCLE
```
  ENERGY (Sun)
    → LIFE (Biosphere)
    → TRANSFORMATION (Atmosphere + Oceans)
    → STRUCTURE (Land + Rock)
    → PERCEPTION (Life + Minds)
    → REFLECTION (Humans)
    → RENEWAL (Future)
```

## NOTATION
```
  S, S0     solar constant / incoming solar flux          [W m^{-2}]
  A, α      planetary albedo (reflectivity)               [0–1]
  σ         Stefan–Boltzmann constant                     5.67e-8 W m^{-2} K^{-4}
  T, Te     effective radiating temperature               [K]
  ε         effective IR emissivity / greenhouse factor
  L         solar luminosity factor (Daisyworld)
  αb, αw    fractional area black / white daisies
  αg, x     fractional bare fertile ground
  β         temperature-dependent growth rate
  γ         death rate
  M_i       mass of reservoir i (C, H2O, …)
  J_in, J_out  fluxes into / out of a reservoir
  P         precipitation
  E         evapotranspiration
  ΔS        change in storage
```
────────────────────────────────────────
### FOOD  (sunlight as energy input)

  Planetary energy balance (zero-dimensional):

      (1 − A) · (S0 / 4)  =  ε σ T^4

  Effective temperature:

      T_e  =  [ (1 − A) S0 / (4 σ) ]^{1/4}

  Energy imbalance (warming / cooling):

      EEI  ≡  ASR − OLR
      ASR  =  (1 − A) · (S0 / 4)

────────────────────────────────────────
### BREATH  (atmosphere as lungs)

  Same energy balance, with greenhouse encoded in ε
  (lower ε → stronger greenhouse → higher surface T).

  Daisyworld radiation balance:

      σ (T_e + 273)^4  =  S L (1 − A)

  Planetary albedo as area-weighted mix:

      A  =  α_g A_g  +  α_b A_b  +  α_w A_w

────────────────────────────────────────
### BLOOD  (water as circulation)

  Continuity / water-budget equation:

      dS/dt  =  I(t) − Q(t)

  Lumped hydrologic balance:

      P − E − R  =  ΔS

      P   precipitation
      E   evaporation + transpiration
      R   runoff (surface + groundwater)
      ΔS  change in storage (oceans, ice, soil, aquifers)

  Global constraint: evaporation ≈ precipitation
  (total water mass conserved; only partitioned).

────────────────────────────────────────
### DIGESTION / METABOLISM  (C, N, P, H2O cycles)

  Reservoir mass balance:

      dM_i / dt  =  Σ J_ji  −  Σ J_ij
                 =  J_in − J_out

  Linear sink approximation:

      J_out  =  k_out M
      dM/dt  =  J_in − k_out M

  Atmospheric carbon (schematic):

      dC_atm / dt  =  E_fossil + LU − S_land − S_ocean

  Photosynthesis / respiration pair (stoichiometry):

      6 CO2 + 6 H2O  →  C6H12O6 + 6 O2     (photosynthesis)
      C6H12O6 + 6 O2  →  6 CO2 + 6 H2O     (respiration)

  Land vegetation / soil (example):

      dC_veg  / dt  =  GPP − RES − LIT
      dC_soil / dt  =  LIT − DEC

────────────────────────────────────────
### REGULATION / HOMEOSTASIS  (Gaia / Daisyworld)

  Area change of daisies:

      dα_b / dt  =  α_b ( x β_b − γ )
      dα_w / dt  =  α_w ( x β_w − γ )

      x  =  p − α_b − α_w     (available fertile ground)

  Growth vs local temperature (parabola, peak at 22.5 °C):

      β  =  1 − 0.003265 (22.5 − T_local)^2
      (β ≤ 0 outside ~5–40 °C)

  Local temperature offset from planetary mean:

      T_b,w  =  q' (A − A_b,w) + T_e

  Negative feedback: black daisies warm the planet,
  white daisies cool it; coverage shifts so T stays
  near the growth optimum as L (solar input) changes.

────────────────────────────────────────
### NERVOUS SYSTEM / SENSING  (life as feedback)

  Growth rate β(T) is the sensor:
  life measures local T and changes albedo,
  which changes planetary T, which changes β.

  Closed loop (schematic):

      T  →  β(T)  →  α_life  →  A  →  T

  Homeostasis when dT/dt ≈ 0 over a wide range of L.


## Future Work 
- Gaia Hypothesis details
- Deep Ecology
- Regenerative Design principles
- Daisyworld simulation code
- Earth System Models
