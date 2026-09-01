# Chemistry
540 Chemistry

Chemistry is the branch of science that studies the composition, structure, properties, and changes of matter. It explores how substances interact, combine, and transform under various conditions. Chemistry plays a fundamental role in understanding the world around us and is often referred to as the **“central science”** because it connects physics, biology, geology, and environmental science.
Chemistry is a dynamic and practical science that affects nearly every aspect of our lives, from technology and industry to health and the environment.

## Key Areas of Chemistry

- **Organic Chemistry** — Focuses on compounds primarily containing carbon.  
- **Inorganic Chemistry** — Deals with inorganic compounds, including metals, minerals, and salts.  
- **Physical Chemistry** — Studies how physical principles like energy, thermodynamics, and kinetics apply to chemical systems.  
- **Analytical Chemistry** — Involves techniques to identify and quantify matter, such as spectroscopy or chromatography.  
- **Biochemistry** — Combines chemistry and biology to understand molecules of life like proteins, DNA, and enzymes.  

## Examples of Chemistry in Daily Life

- Cooking and baking, where heat causes chemical reactions (e.g., caramelization, Maillard reaction).  
- Cleaning products, where acids, bases, or surfactants interact with stains and dirt.  
- Medicine and pharmaceuticals, where chemical compounds are developed to treat diseases.  
- Environmental chemistry, which studies pollution, water treatment, and sustainability.  

Chemistry relies on a large set of mathematical relations that connect measurable quantities (mass, volume, pressure, temperature, concentration, energy, potential, etc.) to one another. Below is a structured catalogue of the most widely used equations, written in standard IUPAC-style notation together with the meaning of every symbol.

### 1. Amount of substance and stoichiometry
Number of moles:

$$
n = \frac{m}{M} = \frac{N}{N_A}
$$

- $n$: amount of substance (mol)  
- $m$: mass (g or kg)  
- $M$: molar mass (g mol$^{-1}$)  
- $N$: number of entities  
- $N_A$: Avogadro constant $\approx 6.022 \times 10^{23}$ mol$^{-1}$

Molarity (amount concentration):

$$
c = \frac{n}{V} \quad \text{(often written } [A]\text{)}
$$
Molality:

$$
b = \frac{n_{\text{solute}}}{m_{\text{solvent}}}
$$

Mole fraction:

$$
x_i = \frac{n_i}{\sum n_j}
$$

### 2. Gases
Ideal-gas law:

$$
PV = nRT
$$

- $P$: pressure  
- $V$: volume  
- $R$: gas constant ($8.314$ J mol$^{-1}$ K$^{-1}$ or $0.08206$ L atm mol$^{-1}$ K$^{-1}$)  
- $T$: absolute temperature (K)

Combined / general gas law (constant $n$):

$$
\frac{P_1 V_1}{T_1} = \frac{P_2 V_2}{T_2}
$$

Dalton’s law of partial pressures:

$$
P_{\text{total}} = \sum_i P_i = P_{\text{total}} \sum_i x_i
$$

van der Waals equation (real gases):

$$
\left(P + \frac{an^2}{V^2}\right)(V - nb) = nRT
$$

Root-mean-square speed:

$$
u_{\text{rms}} = \sqrt{\frac{3RT}{M}}
$$

### 3. Thermodynamics
First law:

$$
\Delta U = q + w
$$

(work of expansion $w = -P_{\text{ext}}\Delta V$)

Enthalpy definition and relation:

$$
H = U + PV, \qquad \Delta H = \Delta U + \Delta n_g RT
$$

Heat capacities:

$$
C_V = \left(\frac{\partial U}{\partial T}\right)_V, \quad C_P = \left(\frac{\partial H}{\partial T}\right)_P, \quad C_P - C_V = R \quad\text{(ideal gas)}
$$

Entropy (reversible process):

$$
\Delta S = \frac{q_{\text{rev}}}{T}
$$

Gibbs and Helmholtz energies:

$$
G = H - TS, \qquad A = U - TS
$$

$$
\Delta G = \Delta H - T\Delta S
$$

$$
\Delta G^\circ = -RT\ln K
$$

$$
\Delta G = \Delta G^\circ + RT\ln Q
$$

Clausius–Clapeyron equation:

$$
\frac{\mathrm{d}\ln P}{\mathrm{d}T} = \frac{\Delta_{\text{vap}}H}{RT^2}
$$

### 4. Chemical equilibrium
For $aA + bB \rightleftharpoons cC + dD$:

$$
K_c = \frac{[C]^c[D]^d}{[A]^a[B]^b}, \qquad K_p = \frac{(P_C)^c(P_D)^d}{(P_A)^a(P_B)^b}
$$

$$
K_p = K_c(RT)^{\Delta n}
$$

where $\Delta n = (c+d)-(a+b)$ (gaseous species only).

van ’t Hoff equation:

$$
\ln\frac{K_2}{K_1} = -\frac{\Delta H^\circ}{R}\left(\frac{1}{T_2}-\frac{1}{T_1}\right)
$$

### 5. Acids, bases and buffers

$$
\mathrm{pH} = -\log_{10}[\mathrm{H}^+], \qquad \mathrm{pOH} = -\log_{10}[\mathrm{OH}^-]
$$

$$
K_w = [\mathrm{H}^+][\mathrm{OH}^-] = 1.0\times 10^{-14}\quad(25^\circ\mathrm{C})
$$

$$
\mathrm{pH} + \mathrm{pOH} = 14
$$

Henderson–Hasselbalch equation:

$$
\mathrm{pH} = \mathrm{p}K_a + \log_{10}\frac{[\mathrm{A}^-]}{[\mathrm{HA}]}
$$

### 6. Chemical kinetics
Rate law (general):

$$
v = k[A]^m[B]^n
$$

Integrated rate laws  
- zero order: $[A]_t = [A]_0 - kt$  
- first order: $\ln\frac{[A]_t}{[A]_0} = -kt$  
- second order: $\frac{1}{[A]_t} - \frac{1}{[A]_0} = kt$

Half-life (first-order):

$$
t_{1/2} = \frac{\ln 2}{k} \approx \frac{0.693}{k}
$$

Arrhenius equation:

$$
k = A\exp\left(-\frac{E_a}{RT}\right)
$$

or

$$
\ln\frac{k_2}{k_1} = \frac{E_a}{R}\left(\frac{1}{T_1}-\frac{1}{T_2}\right)
$$

### 7. Electrochemistry
Gibbs energy and cell potential:

$$
\Delta G = -nFE, \qquad \Delta G^\circ = -nFE^\circ
$$

Nernst equation:

$$
E = E^\circ - \frac{RT}{nF}\ln Q
$$

At $25^\circ\mathrm{C}$:

$$
E = E^\circ - \frac{0.0591}{n}\log_{10} Q
$$

- $n$: number of electrons transferred  
- $F$: Faraday constant $\approx 96485$ C mol$^{-1}$

### 8. Atomic structure and quantum chemistry
Photon energy:

$$
E = h\nu = \frac{hc}{\lambda}
$$

de Broglie wavelength:

$$
\lambda = \frac{h}{p} = \frac{h}{mv}
$$

Heisenberg uncertainty principle:

$$
\Delta x\cdot\Delta p \ge \frac{\hbar}{2}
$$

Time-independent Schrödinger equation:

$$
\hat{H}\psi = E\psi
$$

Bohr energies (hydrogen-like atoms):

$$
E_n = -\frac{13.6\,Z^2}{n^2}\;\mathrm{eV}
$$

Rydberg formula:

$$
\frac{1}{\lambda} = R_\infty Z^2\left(\frac{1}{n_1^2}-\frac{1}{n_2^2}\right)
$$

### 9. Spectroscopy and colligative properties
Beer–Lambert law:

$$
A = \varepsilon\,l\,c
$$

Boiling-point elevation / freezing-point depression:

$$
\Delta T_b = iK_b b, \qquad \Delta T_f = iK_f b
$$

Osmotic pressure:

$$
\pi = i\,cRT
$$

Raoult’s law:

$$
P_{\text{solution}} = x_{\text{solvent}}P^\circ_{\text{solvent}}
$$

These relations, together with the associated standard symbols, constitute the core mathematical language of chemistry. Specialized sub-disciplines (statistical mechanics, computational chemistry, spectroscopy of polyatomic molecules, etc.) introduce additional operators and partition functions, but they rest on the equations listed above.
