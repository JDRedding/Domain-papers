# Oscillators
AIM-239

**I. Crystal Overtone Oscillator (Transistor)**

Variables:  
$R_1$ = bias resistor, $R_2$ = emitter resistor, $C_1$ = feedback capacitor, $L_1$ = tank coil, $D_1$ = amplitude limiter.

Fundamentals:  
Operates on crystal overtone (3rd or 5th). Frequency $\approx$ overtone $\times$ fundamental. Stable, high-frequency reference.

Crystal series resonance  

$$
f_s=\frac{1}{2\pi\sqrt{L_m C_m}}
$$

Odd overtone ($n=3,5,\dots$)  

$$
f_n\approx n\,f_s
$$

Collector tank used to select the overtone  

$$
f_\text{tank}=\frac{1}{2\pi\sqrt{L_1 C}}
$$

**II. Crystal Fundamental Oscillator (Transistor, TTL Drive)**

Variables:  
$R_1$ = bias resistor, $R_2$ = emitter resistor, $C_1$ = coupling capacitor, XTAL = fundamental-mode crystal.

Fundamentals:  
Pierce configuration. Drives $\ge 1$ TTL load. Frequency stability $\pm 50$ ppm typical.

Load-resonant (Pierce) frequency  

$$
f_L\approx f_s\left(1+\frac{C_m}{2(C_0+C_L)}\right)
$$

where $C_L$ is the effective load capacitance seen by the crystal.

**III. CMOS Crystal Oscillator (CD4001AE)**

Variables:  
$R_1,R_2$ = feedback resistors, XTAL = low-frequency crystal.

Fundamentals:  
CMOS Pierce oscillator. Draws $\approx 330\,\mu\text{A}$ no-load. Frequency shift $\approx 10\,\text{Hz/V}$ supply.

Same Pierce relation as above. Supply pushing is an empirical first-order term  

$$
\Delta f\approx 10\,\text{Hz/V}\times\Delta V_{DD}
$$

**IV. IC Crystal Oscillator (Integrated Pierce)**

Variables:  
$R_1$ = feedback resistor, XTAL = fundamental crystal.

Fundamentals:  
IC-based Pierce oscillator. Sensitive to stray/holder capacitance. May oscillate at a parasitic frequency if layout is poor.

Frequency still follows the load-capacitance formula. Extra stray $C_s$ appears as  

$$
C_L'=C_L+C_s\qquad\Rightarrow\qquad f_L'=f_s\left(1+\frac{C_m}{2(C_0+C_L')}\right)
$$

A poorly laid-out board can therefore pull the oscillator onto a spurious mode or an overtone.

**V. Non-Crystal Oscillator (RC/CMOS)**

Variables:  
$R_1$ = feedback resistor, $C_1$ = timing capacitor.

Fundamentals:  
Free-running RC oscillator. Frequency $\approx 1/(R_1\times C_1)$.  
$100\,\text{pF}\to\sim 10\,\text{MHz}$; $1300\,\text{pF}\to\sim 0.5\,\text{MHz}$.

Post approximation  

$$
f\approx\frac{1}{R_1 C_1}
$$

Common two-/three-inverter refinement  

$$
f\approx\frac{1}{2.2\,R C}\quad\text{or}\quad f\approx\frac{k}{RC}\quad(0.5\le k\le 1)
$$

**VI. Blocking Oscillator (Transformer-Coupled)**

Variables:  
$L_1$ = primary coil, $L_2$ = feedback coil, $R_1$ = base resistor, $C_1$ = timing capacitor.

Fundamentals:  
Regenerative pulse oscillator. Ensure $-V_b\le BV_{EBO}$ ($\sim 5\,\text{V}$ for Si). Used in pulse generators and SMPS start-up.

First-order pulse period  

$$
T\approx R_1 C_1\ln\left(1+\frac{V_{CC}}{V_{BE}}\right)
$$

(the exact width also depends on magnetizing inductance and core reset).
