# **Aviation safety rates and risk metrics** 

These are typically expressed per million flights (or per million sectors). Below are the standard formulas with the associated notation, applied to the IATA figures.  These are the principal equations used to quantify commercial aviation safety from aggregate flight and accident data.

### Core rate formulas

Let:
- $A$ = number of accidents
- $F$ = number of fatal accidents
- $D$ = number of onboard fatalities
- $N$ = number of flights (or sectors)

**All-accident rate** (accidents per million flights):

$$
R_{\text{all}} = \frac{A}{N} \times 10^6
$$

**Fatal accident rate** (fatal accidents per million flights):

$$
R_{\text{fatal}} = \frac{F}{N} \times 10^6
$$

**Fatality rate** (onboard fatalities per million flights):

$$
R_{\text{fatality}} = \frac{D}{N} \times 10^6
$$

### IATA-style fatality risk

IATA’s fatality risk metric (sometimes called “passenger fatality risk”) is a probability-weighted measure of the chance of a fatal outcome on a randomly selected flight. It is not identical to the simple fatality rate above. Conceptually:

$$
\text{Fatality risk} = \sum_{i=1}^{A} p_i \cdot \frac{d_i}{n_i}
$$

where:
- $p_i$ is the probability weight of accident $i$ (often approximated by flight exposure),
- $d_i$ is the number of fatalities in accident $i$,
- $n_i$ is the number of people exposed on that flight.

In practice IATA publishes the resulting aggregate value (per million flights).

### Numerical illustration (IATA data)

- $N = 38.7 \times 10^6$
- $A = 51$
- $F = 8$
- $D = 394$ (onboard)

$$
R_{\text{all}} = \frac{51}{38.7 \times 10^6} \times 10^6 \approx 1.32 \quad \text{(accidents per million flights)}
$$

$$
R_{\text{fatal}} = \frac{8}{38.7 \times 10^6} \times 10^6 \approx 0.207 \quad \text{(fatal accidents per million flights)}
$$

$$
R_{\text{fatality}} = \frac{394}{38.7 \times 10^6} \times 10^6 \approx 10.18 \quad \text{(onboard fatalities per million flights)}
$$

These match the published IATA 2025 figures (all-accident rate 1.32; fatality risk reported as 0.17).

### Related probability expressions

**Approximate probability of a fatal accident on a single flight**:

$$
P(\text{fatal}) \approx \frac{F}{N} = \frac{8}{38.7 \times 10^6} \approx 2.07 \times 10^{-7}
$$

**Five-year average comparison** (IATA 2021–2025):
- Average fatal accident rate ≈ 1 per 5.6 million flights  

$$
R_{\text{fatal, 5yr}} = \frac{1}{5.6 \times 10^6} \times 10^6 \approx 0.179
$$
