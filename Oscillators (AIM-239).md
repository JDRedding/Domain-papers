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

**II. Crystal Fundamental Oscillator (Transistor, TTL Drive)**

On the plate: BJT, crystal, 1 M feedback, 2.7 k to +5 V, TTL buffer. Marked $X_C\sim 1\,\text{k}$ = capacitive reactance at the operating frequency.

Drives ≥ 1 TTL load (original). $\pm 50$ ppm is not in HAKMEM.

$$
f_L\approx f_s\left(1+\frac{C_m}{2(C_0+C_L)}\right)
$$

**III. CMOS Crystal Oscillator (CD4001AE)**

On the plate: ¼ CD4001AE NOR, 1–10 pF trim, 1 M, 100 pF to ground, gated buffers, 1 TTL load.

Original numbers: $\approx 330\,\mu\text{A}$ unloaded at 5.4 V; $\approx 10\,\text{Hz/V}$ with a 165 kHz, 32 pF crystal.

$$
\Delta f\approx 10\,\text{Hz/V}\times\Delta V_{DD}
$$

**IV. IC Crystal Oscillator (Integrated Pierce)**

On the plate: two inverters + crystal; same skeleton as V.

Roe: be careful and lucky — it may run on holder capacitance instead of the crystal.

$$
C_L'=C_L+C_s \quad\Rightarrow\quad
f_L'=f_s\left(1+\frac{C_m}{2(C_0+C_L')}\right)
$$

**V. Non-Crystal Oscillator (RC / 7404)**

On the plate: **7404** TTL hex inverter, two 560 Ω resistors, two capacitors $C$, extra inverter out. Not CMOS.

Written on the drawing:

- $100\,\text{pF}\to\sim 10\,\text{MHz}$
- $1300\,\text{pF}\to\sim 0.5\,\text{MHz}$

$$
f\approx\frac{1}{RC}\quad\text{or}\quad f\approx\frac{k}{RC}\ (0.5\le k\le 1)
$$

Comparison baseline for IV.

**VI. Blocking Oscillator (Transformer-Coupled)**

Not on the I–V plate. Separate paragraph + $V_b$ graph in AIM-239.

Turns ratio must keep $-V_b\le BV_{EBO}$ ($\sim 5\,\text{V}$ for Si).

$$
T\approx R_1 C_1\ln\left(1+\frac{V_{CC}}{V_{BE}}\right)
$$
