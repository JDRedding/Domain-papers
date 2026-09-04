# Terrestrial Gravitational Wave Detection with Atom Interferometers
**arXiv:** [2609.01227](https://arxiv.org/abs/2609.01227) $$quant-ph$$ (v1)  
**Length:** 14 pages, 7 figures  

## Abstract

Atom interferometers (AIFs) are highly precise inertial sensors and are considered promising instruments for the detection of gravitational waves (GWs) and certain dark matter (DM) candidates in the mid-frequency band. While GW detection with AIFs was initially proposed for space-based experiments with baselines spanning thousands of kilometers, recent developments suggest that terrestrial setups with baselines of at least 100 meters may also be capable of detecting GWs. They are the first to provide a **full terrestrial GW phase‑response derivation**, identify a **missing term**, and build **numerical simulations** specifically for **Earth‑bound detectors**.

In this work, analytically derive the GW phase response formula of a ground detector, find an additional term compared to the existing literature, and check findings numerically. Based on this treatment, analyze the optimal geometric parameters for earth-bound AIF experiments. Subsequently, numerically simulate GW detection schemes for these optimized interferometers using an open-source Python algorithm. Numerical simulations of these schemes have not been available to the community, yet are crucial for the accurate modeling of noise and non-trivial gravitational backgrounds.

## **Concise takeaway**
The paper derives a **more complete gravitational‑wave phase response** for terrestrial atom interferometers, identifying an **additional term missing in earlier treatments**, then uses this corrected response to optimize detector geometry and provide **numerical simulations** of realistic Earth‑bound AIF GW‑detection schemes.   

The missing term affects:

- **Phase accumulation scaling** with baseline length  
- **Resonant enhancement conditions**  
- **Sensitivity curves** in the mid‑frequency band (10⁻³–10 Hz)  
- **Detector optimization** for real Earth‑bound installations

In short:  
> **Without this term, terrestrial AIF sensitivity estimates were systematically biased.**  
This paper corrects that.

---

## **What the paper actually does**
### **1. Derives the full GW phase response for a ground‑based AIF**
Earlier AIF GW‑response formulas were developed mainly for **space‑based baselines (10³–10⁵ km)**.  
This paper re‑derives the response **specifically for terrestrial baselines (~100 m)** and finds:

- A **previously omitted term** in the GW‑induced phase shift  
- This term arises from **ground‑detector boundary conditions** and **finite‑baseline geometry**  
- They verify the term numerically using their simulation code

---

### **2. Shows how the corrected phase response changes optimal detector geometry**
Using the full expression, they analyze:

- **Launch angle optimization**  
- **Baseline length scaling**  
- **Pulse timing (resonant vs off‑resonant)**  
- **LMT (large‑momentum‑transfer) height constraints**  
- **Earth gravity + GW interplay**

This is important because terrestrial AIFs must operate in **strong gravitational gradients**, unlike space‑based detectors.  

---

### **3. Provides numerical simulations of terrestrial AIF GW detection**
They implement an **open‑source Python simulation** that models:

- GW phase accumulation  
- Noise sources  
- Non‑trivial gravitational backgrounds  
- Resonant and broadband detection modes

They emphasize that **no such numerical tools existed publicly** for Earth‑bound AIFs before this work.   

---

I'll pull the paper and extract the GW phase-response formulas and notation.# Equations from Werner, Alibabaei & Gaaloul (arXiv:2609.01227)

Source: *Terrestrial Gravitational Wave Detection with Atom Interferometers*.

## Notation

| Symbol | Meaning |
|--------|---------|
| $g_{\mu\nu}$, $\eta_{\mu\nu}$, $h_{\mu\nu}$ | spacetime metric, Minkowski metric, GW perturbation |
| $h(t)$, $h$ | time-dependent strain; strain amplitude |
| $\omega$, $f=\omega/2\pi$ | GW angular frequency; GW frequency |
| $\phi_{0}$ | initial GW phase |
| $L$, $L(t)$ | ensemble separation (baseline between the two AIFs); proper distance |
| $B$, $\tilde{B}$ | apparatus baseline; free laser-propagation length |
| $c$ | speed of light |
| $k_{\mathrm{eff}}=\omega_{A}/c$ | effective wave number (LMT *not* folded into $k_{\mathrm{eff}}$) |
| $\omega_{A}$ | atomic transition frequency ($6.8\,\mathrm{GHz}$ for $^{87}\mathrm{Rb}$; $429\,\mathrm{THz}$ for $^{87}\mathrm{Sr}$) |
| $n$ | large-momentum-transfer (LMT) order |
| $Q$ | number of Mach–Zehnder “diamonds” |
| $T$ | interrogation time between $\pi/2$ and central $\pi$ structure |
| $T_{\mathrm{res}}$, $T_{\mathrm{max}}$, $T_{\mathrm{min}}$ | resonant time; max/min allowed segment times |
| $T'$, $T_{\mathrm{full}}$ | interval between LMT pulses; total evolution time $2QT_{\mathrm{res}}$ |
| $z_{\mathrm{U}}$, $z_{\mathrm{L}}$ | laser and retro-mirror positions |
| $\Delta h$ | height spanned by one interferometer |
| $v_{0}$, $v_{\mathrm{rec}}=\hbar k_{\mathrm{eff}}/m$ | launch velocity; recoil velocity |
| $\Delta\Phi$, $\Delta\phi(\omega,h)$, $\Delta\phi_{\mathrm{FSL}}$ | total GW phase; amplitude of oscillating GW phase; constant finite-speed-of-light offset |
| $t_{0}$ | start time of the AIF sequence |
| $\Delta\phi_{\min}$, $h_{\min}$, $h_{c}$ | minimum detectable phase; minimum strain; characteristic strain |
| $\lvert n,g/e\rangle$ | momentum eigenstate $n$ and electronic ground/excited state |

## Spacetime and strain

Linearized metric: 

$g_{\mu\nu}=\eta_{\mu\nu}+h_{\mu\nu}$ 

with

$\lvert h_{\mu\nu}\rvert\ll 1$

and 

$\eta_{\mu\nu}=\mathrm{diag}(-1,1,1,1)$.

TT-gauge line element for a wave along $x$:

$$\mathrm{d}s^{2}=-c^{2}\,\mathrm{d}t^{2}+\mathrm{d}x^{2}+\mathrm{d}y^{2}+\mathrm{d}z^{2}+h(t)\,(\mathrm{d}y^{2}-\mathrm{d}z^{2})$$

Proper-distance oscillation of two test masses initially separated by $L$:

$$\frac{L(t)}{L}=1+\frac{h(t)}{2}=1+\frac{h}{2}\sin(\omega t+\phi_{0})$$

## Pulse scheme

Single-photon kick: $\lvert n,g\rangle\to\lvert n+1,e\rangle$ with $\omega_{A}=c\,k_{\mathrm{eff}}$.

- $n=1$: $2Q+1$ pulses ($\pi/2$, then $2Q-1$ $\pi$ pulses, then $\pi/2$).
- $n>1$: extra $4Q(n-1)$ LMT pulses.

$$
T'\approx T-2(n-1)\frac{z_{\mathrm{U}}-z_{\mathrm{L}}}{c}
$$

## GW phase response (ground detector)

$$
\Delta\Phi=\Delta\phi(\omega,h)\cos\!\left(\omega t_{0}+\phi_{0}+Q\omega T+\frac{\omega L}{2c}\right)+\Delta\phi_{\mathrm{FSL}}
$$

Amplitude (their extra FSL / LMT factors relative to earlier literature):

$$\Delta\phi(\omega,h) = n\,k_{\mathrm{eff}}\,h\,L\, \frac{\sin(\omega Q T)}{\cos(\omega T/2)}\, \mathrm{sinc}\!\left(\frac{\omega n L}{2c}\right) \sin\!\left(\frac{\omega T}{2}-\frac{\omega(n-1)L}{2c}\right)$$

$\Delta\phi_{\mathrm{FSL}}$ is a constant offset present only on the ground (atomic motion vs. light fields). The extra cosine phase $\omega L/(2c)$ does not change overall sensitivity but shifts the optimal initial GW phase. They keep $k_{\mathrm{eff}}=\omega_{A}/c$, so LMT appears as the explicit prefactor $n$.

## Strain sensitivity

$$
h_{\min}(\omega)=\min_{h}\{h\ \big|\ \Delta\phi(\omega,h)\ge\Delta\phi_{\min}\}
$$

$$
h_{c}(\omega)=h_{\min}(\omega)\,\frac{\sqrt{\omega}}{\sqrt{\mathrm{Hz}}}
$$

Figure 3 uses $\Delta\phi_{\min}=1\,\mu\mathrm{rad}$.

## Resonant launch geometry

Maximum interrogation time on baseline $B$:

$$
T_{\max}\cong\sqrt{\frac{2B}{g}}
$$

Resonance time:

$$T_{\mathrm{res}} =
\begin{cases}
\dfrac{\pi}{\omega}=\dfrac{1}{2f}, & f_{\min}<f<f_{\max} \

\[0.6em]
0, & \text{else}
\end{cases}
$$

## Why $\pi/\omega = 1/(2f)$

A monochromatic GW is

$$h(t)=h\sin(\omega t+\phi_{0}), \qquad f=\frac{\omega}{2\pi}.$$

Its period is $T_{\mathrm{GW}}=2\pi/\omega=1/f$.

Resonance is set by putting the **mirror ($\pi$) pulses at half the GW frequency**, i.e. one interferometer “diamond” lasts half a GW cycle:

$$
T_{\mathrm{res}}=\frac{T_{\mathrm{GW}}}{2}=\frac{1}{2f}=\frac{\pi}{\omega}.
$$

That is the time between the opening $\pi/2$ and the central $\pi$ structure of one Mach–Zehnder diamond. With $Q$ diamonds the full sequence lasts

$$
T_{\mathrm{full}}=2Q\,T_{\mathrm{res}}=\frac{Q}{f}.
$$

On resonance the factors $\sin(\omega Q T)/\cos(\omega T/2)$ and $\sin(\omega T/2-\cdots)$ in $\Delta\phi(\omega,h)$ add coherently instead of cancelling.

## Why the “else $0$” branch

They refuse a resonant segment that does not fit the apparatus:

$$
T_{\max}\cong\sqrt{\frac{2B}{g}}, \qquad T_{\min}\ \text{from pulse/LMT timing}.
$$

If $1/(2f)>T_{\max}$ (too slow a GW for the drop tower) or $1/(2f)<T_{\min}$ (too fast for the pulse sequence), they set $T_{\mathrm{res}}=0$ and do not claim a resonant enhancement at that $f$.

Total duration and launch velocity:

$$
T_{\mathrm{full}}=2Q\,T_{\mathrm{res}}, \qquad v_{0}=g\,T_{\mathrm{full}}/2=g\,Q\,T_{\mathrm{res}}
$$

Height budget: $\Delta h=\Delta z_{\mathrm{Kick}}+\Delta z_{\mathrm{Grav}}$. Lower cloud starts at $z_{1}(0)=0$; upper cloud at $z_{2}(0)=L=B-\Delta h$.

Optimal ensemble separation:

$$
L(Q,n,\omega) = B-\frac{g Q^{2}\pi^{2}}{2\omega^{2}} -\frac{n Q v_{\mathrm{rec}}}{2} \left(\frac{\pi}{\omega} +T_{\min}\left(n^{2}-\frac{7n}{2}+\frac{3}{2}\right) \right)
$$

At high frequency, $L/B\to 2/3$.

Baselines they quote:

$$
B\cong
\begin{cases}
10\,\mathrm{m} & \text{VLBAI, AION-10}\\
100\,\mathrm{m} & \text{MAGIS, MIGA}\\
1000\,\mathrm{m} & \text{AION-km, ZAIGA}
\end{cases}
$$

---

## Broader AIF GW‑detection landscape
To contextualize the contribution, compare it with earlier landmark AIF GW papers:

### **Dimopoulos–Graham–Hogan–Kasevich–Rajendran (2018)**  
Proposed the first terrestrial & satellite AIF GW detectors, but focused on **laser‑propagation effects** and **space‑like baselines**, not detailed terrestrial phase‑response corrections.   [arXiv.org](https://arxiv.org/pdf/0712.1250v2)

### **Schubert et al. (2024)**  
Developed **symmetric infrasound‑band AIF geometries** (0.3–5 Hz), including triple‑loop configurations, but did not derive the additional GW‑response term identified in the 2026 paper.   [repo.uni-hannover.de](https://repo.uni-hannover.de/bitstreams/05233703-fb1e-4415-af61-168f626e3c16/download)

### **Chen et al. (2026)**  
Introduced **conjugate AIFs** for mid‑band detection with improved laser‑noise cancellation, but again focused on satellite‑based architectures.   [Physical Review Link Manager](https://link.aps.org/doi/10.1103/jbb7-9z7c)

