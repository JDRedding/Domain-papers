# Oscillators
AIM-239 (Roe). Formula commentary.

**I. Crystal Overtone Oscillator (Transistor)**

On the plate: BJT, crystal (diamond) in the base loop, collector tank $L_1$, 1 M / 220 k bias, 1 k emitter with 0.01 µF bypass.

The tank selects the 3rd/5th overtone. The diamond is the crystal, not a limiter diode.

$$
f_s=\frac{1}{2\pi\sqrt{L_m C_m}},\qquad
f_n\approx n\,f_s\ (n=3,5,\dots),\qquad
f_\text{tank}=\frac{1}{2\pi\sqrt{L_1 C}}
$$

```
Variables:
  R1 = bias resistor
  R2 = emitter resistor
  C1 = feedback capacitor
  L1 = tank coil
  D1 = amplitude limiter

Fundamentals:
  Operates on odd overtone (n = 3, 5, ...).
  Frequency ≈ overtone × fundamental.
  Collector tank selects overtone.

Crystal series resonance:
  fs = 1 / (2π * sqrt(Lm * Cm))

Odd overtone:
  fn ≈ n * fs

Collector tank:
  f_tank = 1 / (2π * sqrt(L1 * C))

```

**II. Crystal Fundamental Oscillator (Transistor, TTL Drive)**

On the plate: BJT, crystal, 1 M feedback, 2.7 k to +5 V, TTL buffer. Marked $X_C\sim 1\,\text{k}$ = capacitive reactance at the operating frequency.

Drives ≥ 1 TTL load (original). $\pm 50$ ppm is not in HAKMEM.

$$
f_L\approx f_s\left(1+\frac{C_m}{2(C_0+C_L)}\right)
$$

```
Variables:
  R1 = bias resistor
  R2 = emitter resistor
  C1 = coupling capacitor
  XTAL = fundamental-mode crystal

Fundamentals:
  Pierce configuration.
  Drives ≥ 1 TTL load.
  Typical stability ±50 ppm.

Load-resonant Pierce frequency:
  fL ≈ fs * (1 + Cm / (2 * (C0 + CL)))

Where:
  CL = effective load capacitance.

```

**III. CMOS Crystal Oscillator (CD4001AE)**

On the plate: ¼ CD4001AE NOR, 1–10 pF trim, 1 M, 100 pF to ground, gated buffers, 1 TTL load.

Original numbers: $\approx 330\,\mu\text{A}$ unloaded at 5.4 V; $\approx 10\,\text{Hz/V}$ with a 165 kHz, 32 pF crystal.

$$
\Delta f\approx 10\,\text{Hz/V}\times\Delta V_{DD}
$$

```
Variables:
  R1, R2 = feedback resistors
  XTAL = low-frequency crystal

Fundamentals:
  CMOS Pierce oscillator.
  Draws ≈ 330 µA no-load.
  Supply pushing ≈ 10 Hz/V.

Supply pushing:
  Δf ≈ 10 Hz/V * ΔVDD

Pierce relation same as section II.

```

**IV. IC Crystal Oscillator (Integrated Pierce)**

On the plate: two inverters + crystal; same skeleton as V.

Roe: be careful and lucky — it may run on holder capacitance instead of the crystal.

$$
C_L'=C_L+C_s \quad\Rightarrow\quad
f_L'=f_s\left(1+\frac{C_m}{2(C_0+C_L')}\right)
$$

```
Variables:
  R1 = feedback resistor
  XTAL = fundamental crystal

Fundamentals:
  IC-based Pierce oscillator.
  Sensitive to stray capacitance Cs.
  Poor layout can force spurious mode.

Stray-capacitance-modified load:
  CL' = CL + Cs

Modified frequency:
  fL' = fs * (1 + Cm / (2 * (C0 + CL')))

```

**V. Non-Crystal Oscillator (RC / 7404)**

On the plate: **7404** TTL hex inverter, two 560 Ω resistors, two capacitors $C$, extra inverter out. Not CMOS.

Written on the drawing:

- $100\,\text{pF}\to\sim 10\,\text{MHz}$
- $1300\,\text{pF}\to\sim 0.5\,\text{MHz}$

$$
f\approx\frac{1}{RC}\quad\text{or}\quad f\approx\frac{k}{RC}\ (0.5\le k\le 1)
$$

Comparison baseline for IV.

```
Variables:
  R1 = feedback resistor
  C1 = timing capacitor

Fundamentals:
  Free-running RC oscillator.
  Approx frequency:
    f ≈ 1 / (R1 * C1)

Typical values:
  100 pF → ~10 MHz
  1300 pF → ~0.5 MHz

Refined inverter-chain approximations:
  f ≈ 1 / (2.2 * R * C)
  f ≈ k / (R * C)   (0.5 ≤ k ≤ 1)

```

**VI. Blocking Oscillator (Transformer-Coupled)**

Not on the I–V plate. Separate paragraph + $V_b$ graph in AIM-239.

Turns ratio must keep $-V_b\le BV_{EBO}$ ($\sim 5\,\text{V}$ for Si).

$$
T\approx R_1 C_1\ln\left(1+\frac{V_{CC}}{V_{BE}}\right)
$$

```
Variables:
  L1 = primary coil
  L2 = feedback coil
  R1 = base resistor
  C1 = timing capacitor

Fundamentals:
  Regenerative pulse oscillator.
  Ensure -Vb ≤ BV_EBO (~5 V for Si).
  Used in pulse generators, SMPS startup.

First-order pulse period:
  T ≈ R1 * C1 * ln(1 + VCC / VBE)

Note:
  Exact pulse width also depends on
  magnetizing inductance and core reset.
```
