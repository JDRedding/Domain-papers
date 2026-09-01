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

A plumbing system is composed of interconnected components that deliver clean water, remove wastewater, and provide fixtures and fittings for daily use.

### 1. Water Supply System

The water supply system brings clean water into a building. Key components include:

- **Pipes and tubing:** Typically made of copper, PEX, PVC, or CPVC, these transport potable water throughout the building.  
- **Fittings:** Elbows, tees, couplings, and reducers change direction, connect pipes, or adjust pipe sizes.  
- **Valves:** Control water flow and pressure. Common types include shut-off valves, pressure-reducing valves, and check valves.  
- **Water meter:** Measures water usage for billing purposes.  
- **Pressure regulator:** Ensures consistent water pressure to prevent pipe damage.  

### 2. Drainage, Waste, and Vent System (DWV)

This system removes wastewater and prevents the buildup of harmful gases:

- **Drain pipes:** Carry wastewater from fixtures to the sewer or septic system; materials include PVC, ABS, or cast iron.  
- **Waste pipes:** Specifically transport liquid waste from sinks, showers, and toilets.  
- **Vents:** Allow sewer gases to escape and maintain proper pressure in the system to aid drainage.  
- **Traps:** U-shaped sections under sinks or tubs that prevent sewer gases from entering the living space by holding water as a barrier.  
- **Cleanouts:** Accessible points to remove blockages in the drainage system.  

### 3. Fixtures and Appliances

These are the end-use points for water or wastewater:

- **Sinks, toilets, showers, bathtubs** — supply water and remove wastewater.  
- **Water heaters** — provide hot water for domestic use or appliances.  
- **Dishwashers, washing machines** — connected to both water supply and drainage.  

### 4. Pumps and Water Treatment Components

- **Pump systems:** Boost water pressure in large buildings or areas with low supply pressure.  
- **Water softeners and filters:** Condition water to remove minerals, chemicals, or impurities.  

### 5. Support Components

- **Pipe hangers and supports:** Secure pipes and prevent sagging or movement.  
- **Insulation:** Protects pipes from freezing temperatures and minimizes heat loss in hot water lines.  
- **Backflow prevention devices:** Prevent contaminated water from flowing back into the potable supply.  

Understanding these components is essential for the maintenance, repair, or improvement of both residential and commercial plumbing systems, ensuring safe water delivery and effective wastewater management.

## Types of Plumbing Systems

Plumbing can be categorized into:

- **Water Supply Plumbing:** Brings clean water into the building.  
- **Drain-Waste-Vent (DWV) Plumbing:** Removes wastewater and sewage, venting sewer gases safely.  
- **Gas Plumbing:** Some systems also include piping for natural gas or propane.  

