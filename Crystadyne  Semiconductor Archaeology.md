# Semiconductor Archaeology  
***Tribute to Unknown Precursors***

In the beginning of the radio era, listeners received transmissions on a **crystal set**. The set consisted of an aerial, a tuned circuit, a detector, and an earphone.

## Classical crystal sets

The detector used an anisotropic crystal of **galena** (lead sulphide) locked in a small cup. One or more flexible metallic wires — the “cat whiskers” — made contact with the crystal. The wires were gold, brass, copper, or steel. The junction let current flow more readily in one direction than the other. This “unilateral conductivity” rectified a high-frequency signal and extracted an audible message.

The rectifying property of certain crystals is credited to **F. Braun** in 1874.

By 1938 the mechanism was still not settled. Molecular physics and solid-state chemistry were incomplete. Some thought the effect was thermal; others thought it was electrical. In 1920–1922 there was substantial amateur and laboratory work in Russia and the United States. Then vacuum tubes advanced so quickly that early crystal knowledge was almost forgotten.

Serious semiconductor research resumed after 1945 and produced devices that define modern electronics, among them:

- the point-contact transistor of Bardeen, Brattain, and Shockley (Nobel Prize, 1956)  
- the tunnel effect of Esaki (Nobel Prize, 1973)  

## Detectors

Three kinds were used:

1. Contact between a crystal and a conductive pin  
2. Contact (or junction) between two identical crystals  
3. Contact (or junction) between two different crystals  

> Crystal cup and whisker: Performance depended on contact pressure and on finding a “hot spot” on the surface.

A galena “cat whisker” detector is the ancestor of the modern diode: a mineral cup, a spring contact, and a point that must be hunted until the junction rectifies.

### Crystals tested

Bornite, carborundum (silicon carbide), cassiterite, cerussite, chalcopyrite, galena, “ghane,” graphite, hessite, hematite, hertzite, malachite, molybdenite, pyrite, silicon, bismuth sulphide, tellurium, ullmannite, zincite, and others.

### Popular contacts

| Contact | Materials |
| --- | --- |
| Galena–metal | Copper, brass, or silver |
| Molybdenite–metal | Silver ribbon |
| Iron pyrite–metal | Gold |
| Carborundum–metal | Steel |
| Copper–silicon | Copper against silicon |
| Zincite–metal | Steel (sometimes carbon) |

### Popular junction

**Chalcopyrite–zincite**, sold as **Perikon** (also spelled Pericon).

These devices are what we now call **diodes**. Electrical and mechanical behavior depended on contact pressure and, sometimes, on a bias voltage. A commercial Perikon-style detector used two minerals in contact rather than a whisker on a single crystal.

Early characteristic curves  
- I — Perikon (zincite–chalcopyrite)  
- II — Carborundum–steel  
- III — Zincite–steel  

Zincite was prepared from natural zinc oxide (ZnO), heated in an electric arc in the presence of manganese peroxide or manganese dioxide.

The most interesting pair, in this account, is **zincite and steel** (sometimes carbon). The old curve in Figure 2 does not show its most striking feature. In 1923 an experimenter built a high-frequency generator from such a detector under bias. That implies a region of **negative slope** on the I–V curve—the same qualitative behavior later associated with the **tunnel diode**. Ordinary diode versus tunnel diode. On the tunnel-diode curve, a negative-slope region appears between about 200 and 300 mV.

---

## Crystadyne systems

Unknown precursors used that negative-resistance region to build semiconductor circuits long before the transistor era:

- heterodynes  
- regenerative receivers  
- low-frequency modulators  
- autodynes  
- low-frequency amplifiers  
- high-frequency generators (about 8–12 MHz)  
- transceivers  

These layouts belonged to what was called **Crystadyne** (also spelled Crystodyne / Cristadyne) technology.

Vacuum tubes were easier to manufacture and more consistent, so the crystal circuits were ignored and then forgotten.

Original Crystadyne schematics printed before 1938:

- Zincite heterodyne  
- Crystadyne receiver  
- Zincite heterodyne for short waves  
- Zincite modulator — low-frequency “tikker”  

---

## Historical note

Later research identifies the main practical worker as **Oleg Losev** (Nizhny Novgorod Radio Laboratory, from 1922). Hugo Gernsback popularized the name **Crystodyne** in the West. Losev used biased zincite–steel or zincite – carbon contacts as oscillators, amplifiers, and regenerative receivers — solid-state circuits about twenty-five years before the transistor. 

---

## References 

Adapted from *Semiconductor Archaeology, or Tribute to Unknown Precursors*  
[pe2bz / Cristadyne page](https://pe2bz.philpem.me.uk/Comm/-%20Receivers/-%20Crystal/-%20CrystalDesign/History/Pre1/cristadyne.html)

## APPENDIX: Notation

Notation is chosen so the same symbols work from a 1920s zincite contact through a modern NDR-oscillator model. Losev did not publish a closed semiconductor band theory; he measured I–V curves and stated that oscillation occurs only on the **falling** part of the characteristic. The formulas are the ones that make that statement quantitative.  Early “theory” was a microscopic voltaic-arc / negative temperature-coefficient story; by the later 1920s he favored electronic processes in the contact. The circuit mathematics above is the part that is independent of that microscopic guess and is the same mathematics later used for tunnel, Gunn, and IMPATT oscillators.

---

## 1. Symbols

| Symbol | Meaning |
| --- | --- |
| $V$, $v(t)$ | Voltage across the contact (DC + AC) |
| $I$, $i(t)$ | Current through the contact |
| $V_B$, $I_Q$ | Bias voltage and quiescent current (operating point) |
| $r_d$ | Differential (small-signal) resistance of the contact |
| $g_d = 1/r_d$ | Differential conductance |
| $r$ | Magnitude of **negative** differential resistance when $r_d < 0$ |
| $R$ | Positive series resistance of the tank + load + ballast |
| $L$, $C$ | Tank inductance and capacitance |
| $\omega_0$, $f_0$ | Undamped resonant frequency |
| $\alpha$ | Growth/decay constant of the oscillation envelope |
| $Q$ | Quality factor of the tank |

---

## 2. Rectifier (ordinary crystal detector)

A passive galena / Perikon contact is a nonlinear resistor. The simplest phenomenological law is

$$
I = I_s\left(e^{V/\eta V_T}-1\right)
$$

with $V_T = kT/q$ the thermal voltage and $\eta$ an ideality factor. Braun-era workers did not write this; they only required **unilateral conductivity**

$$
I(V) \neq -I(-V).
$$

For a weak RF carrier $v_{\mathrm{RF}}(t)=V_c\cos\omega_c t$ plus audio modulation, the quadratic term of a Taylor expansion of $I(V)$ produces the audio envelope (square-law detection):

$$
i_{\mathrm{audio}}\propto \frac{1}{4}\frac{d^2 I}{dV^2}\Big|_{V_B} V_c^2(t).
$$

---

## 3. Differential resistance — the Crystadyne condition

Define

$$
r_d(V)=\frac{dV}{dI}=\left(\frac{dI}{dV}\right)^{-1}.
$$

Losev’s 1922 statement: the contact **amplifies or oscillates only where**

$$
r_d < 0
\quad\text{i.e.}\quad
\frac{dI}{dV}<0
$$

on the measured volt–ampere curve (the “falling” or N-shaped / S-shaped branch). That is **negative differential resistance** (NDR), not a negative static resistance $V/I$.

Small-signal linearization about the bias point $(V_B,I_Q)$:

$$
v = r_d\, i,\qquad r_d = r_d(V_B).
$$

When $r_d = -r$ with $r>0$, the contact is a source of AC energy.

A cubic caricature of an N-type NDR diode (tunnel-diode style; same shape as the old zincite–steel curves) is

$$
I = aV + bV^3,\qquad a<0,\; b>0
$$

so

$$
r_d(V)=\frac{1}{a+3bV^2},
$$

which is negative for $|V|<\sqrt{-a/3b}$.

---

## 4. Series-tank Crystadyne oscillator

The Gernsback / Losev RF layout is a **series** $L$–$C$ circuit in series with the contact and a positive resistance $R$ (coil loss, phones, ballast). Bias is applied through a potentiometer so the AC loop sees $-r$.

Kirchhoff’s voltage law for the AC current $i(t)$:

$$
L\frac{di}{dt}+(R-r)\,i+\frac{1}{C}\int i\,dt=0.
$$

Differentiate once:

$$
\frac{d^2 i}{dt^2}+\frac{R-r}{L}\frac{di}{dt}+\frac{1}{LC}\,i=0.
$$

Compare with the standard form

$$
\frac{d^2 i}{dt^2}-2\alpha\frac{di}{dt}+\omega_0^2 i=0
$$

to read off

$$
\omega_0=\frac{1}{\sqrt{LC}},\qquad
\alpha=\frac{r-R}{2L}.
$$

Solution:

$$
i(t)=i_0\,e^{\alpha t}\cos(\omega t+\phi),
\qquad
\omega=\sqrt{\omega_0^2-\alpha^2}.
$$

| Condition | Envelope | Meaning |
| --- | --- | --- |
| $r>R$ $\Rightarrow$ $\alpha>0$ | grows | start-up |
| $r=R$ $\Rightarrow$ $\alpha=0$ | constant | steady oscillation |
| $r<R$ $\Rightarrow$ $\alpha<0$ | decays | damped |

Frequency of the ideal lossless tank (and the first approximation for the RF Crystadyne):

$$
f_0=\frac{1}{2\pi\sqrt{LC}}.
$$

Periodical sources give the demonstration values $L_1=5\,\mathrm{mH}$, $C_1=10\,\mathrm{pF}$ (RF) and $L_2=1\,\mathrm{H}$, $C_2=2\,\mu\mathrm{F}$ (audio search tone), $R\approx 3\,\mathrm{k}\Omega$, $V_B\sim 4$–$30\,\mathrm{V}$. Those numbers put $f_{\mathrm{RF}}$ in the low-megahertz range, consistent with the historical claims.

Steady-state amplitude is **not** fixed by the linear model. Saturation of $r(A)$ (the NDR shrinks as the swing $A$ grows) enforces

$$
r(A_0)=R
$$

at the limit cycle. That is why the I–V curve must be nonlinear: linear NDR would produce an unbounded exponential.

Impedance form of the same start-up / steady-state pair:

$$
Z_{\mathrm{device}}(A,\omega)+Z_{\mathrm{tank}}(\omega)=0,
$$

i.e.

$$
R_N(A,\omega)+R=0,\qquad X_N(A,\omega)+X_L(\omega)+X_C(\omega)=0.
$$

Start-up requires $|R_N(0,\omega)|>R$; steady state requires equality.

---

## 5. Parallel-tank dual (negative conductance)

If the contact is across a parallel $LC$ (some regenerative layouts), use conductance $g_d=1/r_d=-g$ with $g>0$:

$$
C\frac{dv}{dt}+\left(G-g\right)v+\frac{1}{L}\int v\,dt=0,
$$

$$
\alpha=\frac{g-G}{2C},\qquad \omega_0=\frac{1}{\sqrt{LC}}.
$$

Oscillation when the negative conductance exceeds the tank conductance $G=1/R_{\parallel}$.

---

## 6. Regeneration and heterodyne

Just below the oscillating point ($\alpha$ small and negative, or $r$ slightly less than $R$) the effective tank resistance is

$$
R_{\mathrm{eff}}=R-r
$$

and the loaded $Q$ rises:

$$
Q_{\mathrm{eff}}=\frac{\omega_0 L}{R-r}.
$$

Voltage gain of a high-$Q$ tank driven by an induced emf $\mathcal{E}$ is of order $Q_{\mathrm{eff}}$. That is the Crystadyne regenerative receiver: approach the falling characteristic until signals swell, stop short of a whistle.

A local oscillator at $f_{\mathrm{LO}}$ mixed with a signal at $f_{\mathrm{s}}$ in the same nonlinear contact produces the difference (heterodyne / autodyne) tone

$$
f_{\mathrm{IF}}=\lvert f_{\mathrm{s}}-f_{\mathrm{LO}}\rvert.
$$

The quadratic or cubic term of $I(V)$ is the mixer.

---

## 7. Resonance and reactance of the tank

Series impedance of the passive tank:

$$
Z(\omega)=R+j\left(\omega L-\frac{1}{\omega C}\right).
$$

Resonance when the imaginary part vanishes:

$$
\omega_0 L=\frac{1}{\omega_0 C}\quad\Rightarrow\quad\omega_0=\frac{1}{\sqrt{LC}}.
$$

Quality factor and 3 dB bandwidth:

$$
Q=\frac{\omega_0 L}{R}=\frac{1}{R}\sqrt{\frac{L}{C}},\qquad
\Delta\omega=\frac{\omega_0}{Q}.
$$

---

## 8. What Losev measured

He did **not** write $I=I_s(e^{qV/kT}-1)$. He recorded static characteristics $I=I(V)$ of zincite–steel and zincite–carbon, noted a region with

$$
\frac{dV}{dI}<0,
$$

and showed that a series (or switchable audio/RF) tank connected there produces undamped oscillation at a frequency equal to, or slightly below, the tank’s own frequency, depending on the chosen point on the curve.
