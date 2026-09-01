# Plumbing
 - 628 Plumbing

Plumbing is the system of pipes, fixtures, and other apparatus required for the distribution of water and the removal of wastewater in buildings and infrastructure.
Plumbing work is typically performed by licensed plumbers, who install, repair, and maintain these systems. Modern plumbing has significantly improved quality of life compared to historical reliance on wells, cisterns, or open drainage systems.

## Importance of Plumbing

Proper plumbing is critical for:

- **Health and sanitation:** Prevents contamination and spread of disease.  
- **Comfort and convenience:** Provides running water for daily activities.  
- **Property protection:** Prevents water damage, leaks, and flooding.  

Plumbing refers to the network of pipes, valves, fixtures, and fittings installed in homes, businesses, and other structures to provide clean water for drinking, cooking, and bathing, and to remove wastewater and sewage safely. It is an essential part of modern construction and public health systems. Plumbing ensures that water flows efficiently to where it is needed and that wastewater is disposed of correctly, preventing health hazards and property damage.

Plumbing design is an application of incompressible fluid mechanics (plus some empirical sizing rules). The governing relations fall into a few groups: conservation laws, friction (major and minor) losses, gravity-flow drainage, and hydrostatic pressure. Notation below follows the most common engineering conventions.

### Continuity (mass conservation)
For steady incompressible flow the volume flow rate is constant:

$$
Q = A V = A_1 V_1 = A_2 V_2
$$

- $Q$: volumetric flow rate  
- $A = \pi D^2/4$: internal cross-sectional area  
- $V$: mean velocity  
- $D$: internal diameter  

### Bernoulli / energy equation
Along a streamline, with friction and minor losses included:

$$
\frac{P_1}{\rho g} + \frac{V_1^2}{2g} + z_1 = \frac{P_2}{\rho g} + \frac{V_2^2}{2g} + z_2 + h_f + h_m
$$

or, in pressure form,

$$
P_1 + \tfrac12\rho V_1^2 + \rho g z_1 = P_2 + \tfrac12\rho V_2^2 + \rho g z_2 + \Delta P_\text{loss}
$$

- $P$: pressure  
- $\rho$: density  
- $g$: gravitational acceleration  
- $z$: elevation  
- $h_f$: frictional (major) head loss  
- $h_m$: minor-loss head  

### Reynolds number (flow regime)

$$
Re = \frac{\rho V D}{\mu} = \frac{V D}{\nu}
$$

- $\mu$: dynamic viscosity  
- $\nu = \mu/\rho$: kinematic viscosity  

Typically laminar for $Re < 2300$ and turbulent for $Re > 4000$.

### Major (friction) losses

**Darcy–Weisbach** (most general):

$$
h_f = f\frac{L}{D}\frac{V^2}{2g},\qquad
\Delta P = f\frac{L}{D}\frac{\rho V^2}{2}
$$

- $f$: Darcy friction factor  
- $L$: pipe length  

Laminar closed-form result:

$$
f = \frac{64}{Re}
$$

which is equivalent to the Hagen–Poiseuille law

$$
\Delta P = \frac{8\mu L Q}{\pi R^4}
$$

($R = D/2$).

Turbulent friction factor is given by the implicit Colebrook–White equation

$$
\frac{1}{\sqrt{f}} = -2\log_{10}\left(\frac{\varepsilon}{3.7D}+\frac{2.51}{Re\sqrt{f}}\right)
$$

($\varepsilon$: absolute roughness).

**Hazen–Williams** (empirical, water only, ordinary temperatures, turbulent flow—widely used in plumbing codes):

US customary (head loss in feet, $Q$ in gpm, $d$ in inches):

$$
h_f = 0.002083\,L\left(\frac{100}{C}\right)^{1.85}\frac{Q^{1.85}}{d^{4.8655}}
$$

or per 100 ft of pipe

$$
h_{100} = 0.2083\left(\frac{100}{C}\right)^{1.852}\frac{q^{1.852}}{d^{4.8655}}
$$

SI (head in metres, $Q$ in m³/s, $D$ in metres):

$$
h_f = \frac{10.67\,L\,Q^{1.852}}{C^{1.852}D^{4.87}}
$$

Typical $C$ values: copper $\approx 140$, PVC/PEX $\approx 150$, new steel $\approx 130$, older iron $\approx 100$.

### Minor losses (fittings, valves, entrances, exits)

$$
h_m = K\frac{V^2}{2g}
$$

or by equivalent-length method: add tabulated $L_\text{eq}$ of each fitting to the actual pipe length before applying Darcy–Weisbach or Hazen–Williams.

### Gravity drainage / sewers (Manning)
For uniform open-channel or partially-filled pipe flow:

$$
V = \frac{1}{n}R_h^{2/3}S^{1/2}\quad\text{(SI)},\qquad
V = \frac{1.486}{n}R_h^{2/3}S^{1/2}\quad\text{(US)}
$$

$$
Q = AV
$$

- $n$: Manning roughness  
- $R_h = A/P$: hydraulic radius ($P$ = wetted perimeter)  
- $S$: hydraulic slope (energy grade line)  

For a circular pipe flowing full or half-full, $R_h = D/4$.

Typical drain slopes (¼ in/ft $\approx 2\%$) are chosen so that self-cleansing velocities ($\approx 2$ ft/s or 0.6 m/s) are obtained from Manning’s formula.

### Hydrostatics

$$
P = \rho g h = \gamma h
$$

A useful US rule of thumb is $0.433$ psi per foot of water column.

### Fixture-unit demand (Hunter)
Water-supply and drainage sizing in codes is not a closed-form PDE; it uses empirically assigned fixture-unit (FU / DFU) values plus Hunter’s probability curves that convert simultaneous-use statistics into a peak flow $Q$. Continuous flows are converted by the rule “2 FU per gpm.”

These relations, together with tabulated roughness, $K$-factors, and code tables, constitute the mathematical core of plumbing engineering.

## Components of a Plumbing System

A typical plumbing system includes:

- **Pipes and Tubing:** Channels water to fixtures and drains wastewater; commonly made from copper, PVC, or PEX materials.  
- **Fixtures:** Devices like sinks, toilets, bathtubs, showers, faucets, and water heaters that use or deliver water.  
- **Valves:** Control water flow and pressure throughout the system, including shut-off valves for repairs.  
- **Drainage and Sewage Systems:** Carry wastewater away from the building to municipal sewer lines or septic systems.  
- **Vents:** Allow gases and sewer odors to escape and maintain proper air pressure in drainpipes.  

## Types of Plumbing Systems

Plumbing can be categorized into:

- **Water Supply Plumbing:** Brings clean water into the building.  
- **Drain-Waste-Vent (DWV) Plumbing:** Removes wastewater and sewage, venting sewer gases safely.  
- **Gas Plumbing:** Some systems also include piping for natural gas or propane.  

