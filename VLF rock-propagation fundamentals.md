# VLF propagation fundamentals (through‑rock)
A through‑rock, very‑low‑frequency (VLF) magnetic loop communicator: a battery‑powered transmitter and receiver pair that use near‑field magnetic coupling instead of conventional RF radiation. 

**Key points:**

- **Near‑field magnetic coupling:** at VLF/ELF, the wavelength is huge (tens to hundreds of kilometers), so underground links behave like loosely coupled transformers rather than classic RF links.  
- **Magnetic field dominance:** electric field components are heavily attenuated; the magnetic field penetrates deeper, especially in low‑conductivity rock.  
- **Geometry matters:** cave and mine geometry, rock layering, and moisture content strongly affect effective conductivity and thus skin depth.  
- **Frequency trade‑off:** lower $f$ → larger $\delta$ (better penetration) but larger antennas and lower data rate; higher $f$ → smaller antennas but shallow penetration.

---

## Mine and cave rescue applications

**Use cases:**

- **Post‑accident communication:** when wired systems are damaged and conventional VHF/UHF radios fail, VLF magnetic loop systems can provide low‑bit‑rate messaging (Morse, short codes) through tens of meters of rock.   
- **Surface‑to‑cave links:** hand‑built transceivers in the LF/MF band (hundreds of kHz) have demonstrated hundreds of meters of through‑rock communication in cave experiments.  
- **Locator beacons:** trapped teams can deploy a loop beacon; surface teams sweep with a receiver loop to detect direction and approximate depth.

**Design priorities for emergency use:**

- **Robustness:** simple keying (on/off, slow Morse), minimal controls, clear indicators.  
- **Battery life:** duty‑cycled transmission (e.g. beacon bursts) to conserve power.  
- **Portability:** collapsible loop frames (e.g. flexible wire on lightweight supports).  
- **Redundancy:** multiple frequencies (e.g. 1 kHz, 3 kHz, 10 kHz) to adapt to varying rock conductivity.

## Overview

### Core physics and notation

#### Skin depth in rock

**Definition:**

$$
\delta = \sqrt{\frac{2}{\omega \mu \sigma}}
$$

- **$\delta$:** skin depth (m)  
- **$\omega$:** angular frequency $= 2\pi f$ (rad/s)  
- **$f$:** frequency (Hz)  
- **$\mu$:** magnetic permeability of medium (H/m), often $\mu \approx \mu_0 = 4\pi \times 10^{-7}$ H/m for non‑magnetic rock  
- **$\sigma$:** electrical conductivity (S/m)

**Attenuation with depth $z$:**

$$
|H(z)| = |H_0| e^{-z/\delta}
$$

- **$H_0$:** magnetic field amplitude at surface  
- **$z$:** depth into rock (m)

**Rule of thumb:** useful penetration is typically up to about $2\delta$–$3\delta$ before signals become very weak.

#### Example: limestone at VLF

Assume:

- **Limestone conductivity:** $\sigma \approx 0.01\ \text{S/m}$ (dry) to $0.1\ \text{S/m}$ (wet; cave conditions vary)  
- **Frequency:** $f = 3\ \text{kHz}$ (VLF, good compromise for loop size vs penetration)

Compute:

$$
\omega = 2\pi f = 2\pi \times 3000 \approx 1.885 \times 10^{4}\ \text{rad/s}
$$

Take $\mu = \mu_0 = 4\pi \times 10^{-7}\ \text{H/m}$.

For $\sigma = 0.01\ \text{S/m}$:

$$
\delta = \sqrt{\frac{2}{\omega \mu \sigma}} = \sqrt{\frac{2}{(1.885 \times 10^{4})(4\pi \times 10^{-7})(0.01)}}
$$

Compute denominator:

$$
\omega \mu \sigma \approx (1.885 \times 10^{4})(1.2566 \times 10^{-6})(0.01)
\approx 2.37 \times 10^{-4}
$$

So:

$$
\delta \approx \sqrt{\frac{2}{2.37 \times 10^{-4}}} = \sqrt{8.44 \times 10^{3}}
\approx 91.9\ \text{m}
$$

For wetter limestone, say $\sigma = 0.1\ \text{S/m}$:

$$
\omega \mu \sigma \approx 2.37 \times 10^{-3}
\quad\Rightarrow\quad
\delta \approx \sqrt{\frac{2}{2.37 \times 10^{-3}}} = \sqrt{8.44 \times 10^{2}}
\approx 29.0\ \text{m}
$$

So at $f \approx 3\ \text{kHz}$,  might expect tens of meters of useful penetration in moist limestone, more in dry rock.

---

### Magnetic loop antenna model

#### Loop parameters

- **$N$:** number of turns  
- **$A$:** loop area (m$^2$)  
- **$I(t)$:** loop current (A)  
- **$r$:** distance from loop center (m)  
- **$\hat{n}$:** unit vector normal to loop plane  
- **$\theta$:** angle between $\hat{n}$ and observation direction

For a small loop (radius $a$ with $a \ll \lambda$), magnetic dipole moment:

$$
m = N I A
$$

Near‑field magnetic flux density along axis (simplified, quasi‑static):

$$
B(r) \approx \frac{\mu_0 m}{2\pi r^3}
$$

More generally, in the quasi‑static regime (ELF/VLF, distances much less than wavelength), the magnetic field scales roughly as:

$$
H(r) \propto \frac{N I A}{r^3}
$$

Receiver loop induced voltage:

$$
V_{\text{ind}} = -N_{\text{rx}} \frac{d\Phi}{dt}
$$

with flux:

$$
\Phi = \int B \cdot dA \approx B(r) A_{\text{rx}} \cos\theta
$$

Assuming sinusoidal current:

$$
I(t) = I_0 \cos(\omega t)
\quad\Rightarrow\quad
B(t) \propto I_0 \cos(\omega t)
$$

Then:

$$
V_{\text{ind}} \propto N_{\text{rx}} A_{\text{rx}} \omega I_0 \frac{\mu_0 N_{\text{tx}} A_{\text{tx}}}{r^3} e^{-z/\delta}
$$

Key dependencies:

- **Increase:** $N_{\text{tx}}, N_{\text{rx}}, A_{\text{tx}}, A_{\text{rx}}, I_0, \omega$  
- **Decrease:** $r^3$ and $e^{-z/\delta}$

---

### Transmitter circuit (4060B + 4093B + loop)

#### Functional blocks

- **Battery:** e.g. 12 V or 9 V pack  
- **4060B:** CMOS oscillator + binary counter (RC clock)  
- **4093B:** quad Schmitt NAND, used for shaping, keying, and buffering  
- **Power driver:** MOSFET or push‑pull stage to drive loop current  
- **Loop antenna:** multi‑turn copper wire loop, possibly resonated with capacitor

#### Frequency generation (4060B)

Let:

- **$R_{\text{osc}}$:** timing resistor  
- **$C_{\text{osc}}$:** timing capacitor  
- **$f_{\text{osc}}$:** base oscillator frequency

For the 4060B RC oscillator (approximate):

$$
f_{\text{osc}} \approx \frac{1}{2.2 R_{\text{osc}} C_{\text{osc}}}
$$

The 4060B divides this down via internal counters:

$$
f_{\text{out}} = \frac{f_{\text{osc}}}{2^n}
$$

- **$n$:** selected output stage (e.g. Q4, Q5, …)

Choose $f_{\text{out}}$ in the 1–10 kHz range for VLF through‑rock signaling.

#### Signal shaping and keying (4093B)

Use 4093B gates as:

- **Oscillator buffer:** square‑up the 4060B output  
- **Keying gate:** apply on/off modulation (Morse, low‑rate FSK, or simple on/off emergency beacon)

Let:

- **$s(t)$:** base square wave at $f_{\text{out}}$  
- **$k(t)$:** keying function (0 or 1)

Transmitter drive signal:

$$
x(t) = k(t) \cdot s(t)
$$

4093B Schmitt inputs help maintain clean transitions even with noisy supply or long lines.

#### Loop drive and resonance

To maximize current:

- **Series resonance:** loop inductance $L$ with capacitor $C_{\text{loop}}$

Resonant frequency:

$$
f_0 = \frac{1}{2\pi \sqrt{L C_{\text{loop}}}}
$$

Set:

$$
f_0 \approx f_{\text{out}}
$$

Loop current amplitude (simplified):

$$
I_0 \approx \frac{V_{\text{drive}}}{R_{\text{loop}}}
$$

at resonance, where $R_{\text{loop}}$ is the effective series resistance (wire + losses). In practice,  may add a series resistor or use a current‑limited driver to avoid overheating.

---

### Receiver circuit (TL074 + loop)

#### Front‑end loop and preamp

- **Loop antenna:** similar geometry to transmitter, but optimized for sensitivity  
- **TL074:** low‑noise JFET input quad op‑amp, powered from ± supply or single‑supply with virtual ground  
- **Band‑pass filter:** centered at $f_{\text{out}}$ to reject noise

Let:

- **$V_{\text{loop}}(t)$:** induced voltage from magnetic field  
- **$G$:** preamp gain

Preamp output:

$$
V_{\text{pre}}(t) = G \cdot V_{\text{loop}}(t)
$$

Typical gain:

$$
G = \frac{R_f}{R_{\text{in}}}
$$

for a simple non‑inverting or inverting TL074 stage.

#### Band‑pass filter design

Use a 2nd‑order active band‑pass:

Center frequency:

$$
f_c = \frac{1}{2\pi \sqrt{R_1 R_2 C_1 C_2}}
$$

Quality factor $Q$ and gain set by resistor ratios. Choose:

- **$f_c \approx f_{\text{out}}$**  
- **Bandwidth:** narrow enough to reject most noise, but wide enough for modulation (e.g. ±10–20% of $f_c$)

#### Detection and output

Options:

- **Envelope detector:** rectify and low‑pass filter to recover on/off keying  
- **Comparator:** threshold detection for digital output (LED, buzzer, or microcontroller input)

Let:

$$
V_{\text{det}}(t) = \text{LPF}(|V_{\text{pre}}(t)|)
$$

Then:

$$
\text{Alarm} =
\begin{cases}
\text{ON}, & V_{\text{det}} > V_{\text{th}} \\
\text{OFF}, & V_{\text{det}} \le V_{\text{th}}
\end{cases}
$$

---

### Skin depth graphs (conceptual, copy‑friendly)

 can sketch or code plots using these relationships:

1. **Skin depth vs frequency:**

   For fixed $\sigma, \mu$:

$$
\delta(f) = \sqrt{\frac{2}{2\pi f \mu \sigma}}
$$

   This is a decreasing function of $f$. Plot $\delta$ on the y‑axis, $f$ (log scale) on the x‑axis.

2. **Attenuation vs depth:**

   For fixed $f$:

$$
\frac{|H(z)|}{|H_0|} = e^{-z/\delta}
$$

   Plot normalized field vs depth $z$. At $z = \delta$, amplitude is about $e^{-1} \approx 0.37$ of surface; at $z = 3\delta$, about 0.05.

3. **Material comparison:**

   For different $\sigma$ (dry limestone, wet limestone, sandstone):

$$
\delta(f, \sigma) = \sqrt{\frac{2}{2\pi f \mu \sigma}}
$$

   Plot multiple curves on the same axes to show how wetter, more conductive rock reduces penetration.

---
