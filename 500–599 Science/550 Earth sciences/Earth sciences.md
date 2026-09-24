# Earth sciences
Earth sciences (also called the geosciences) study Earth’s materials, processes, and systems—and how they interact across time. The field treats the planet as four coupled spheres: lithosphere (solid Earth), hydrosphere (water), atmosphere (air), and biosphere (life). Physics, chemistry, biology, and mathematics are used together to explain how the planet formed, how it works today, and how it is changing.

Earth sciences underpin practical decisions: forecasting hazards, managing water and energy, tracking climate change, protecting ecosystems, and planning land use. Understanding how the planet’s systems interact is the basis for both scientific insight and societal resilience.

### Core disciplines
The branches are not isolated. Oceans influence climate; climate shapes weather; weather and ice erode rock; rocks record past climates; life alters the atmosphere and oceans. Modern Earth science therefore emphasizes coupled models, satellite observations, and sensor networks.

Earth science is fundamentally a four‑sphere coupled dynamical system governed by a small set of shared operators — conservation laws, constitutive relations, and closure schemes. Your appendix already lists the primitive equations; the deeper insight is that each discipline is just a different projection of the same underlying operators onto different materials and timescales.

**Geology**  
Focuses on rocks, minerals, landforms, and Earth’s 4.5-billion-year history.  
- Plate tectonics explains mountains, earthquakes, volcanoes, and continental drift.  
- Mineralogy and petrology describe how minerals and rocks form.  
- Paleontology and stratigraphy reconstruct past life and environments.  
- Applied work includes geologic-hazard assessment.

**Meteorology and climatology**  
Meteorology deals with short-term weather: storms, jet streams, atmospheric chemistry, and forecasting.  
Climatology examines longer-term patterns: greenhouse gases, ice ages, droughts, and regional climate shifts.  
The two fields are tightly linked; weather is the day-to-day expression of climate.

**Oceanography**  
Covers the physical, chemical, biological, and geological ocean.  
Topics include currents and heat transport, marine ecosystems, seafloor tectonics, coastal erosion, and sea-level change. Oceans regulate global climate even for inland regions.

**Hydrology**  
Studies the distribution, movement, and quality of water—rivers, lakes, groundwater, and the water cycle. Models and remote sensing support flood prediction, drought management, and water-resource planning.

**Environmental science**  
Integrates the other disciplines to examine human–Earth interactions: pollution, soil and land use, ecosystem change, and sustainability. It is the most applied branch, informing agriculture, conservation, and policy.

### Related and supporting fields
- Geophysics uses seismic, magnetic, and gravity data to image Earth’s interior.  
- Geochemistry tracks chemical cycles through rocks, water, and air.  
- Planetary science compares Earth with other worlds to understand planet formation, habitability, and surface processes.








## APPENDIX: Notation

These are the workhorse relations. Weather and climate models close the primitive equations with parameterizations for radiation, clouds, turbulence, and convection; hydrologic models close Darcy/Richards with constitutive curves $K(\theta)$ and $\psi(\theta)$; solid-Earth models close elasticity or viscosity with rheology. Notation is defined with each block; SI units are assumed unless noted.

---

## Shared notation

| Symbol | Meaning |
|---|---|
| $p$ | pressure |
| $\rho$ | density |
| $T$ | temperature |
| $g$ | gravitational acceleration |
| $\mathbf{u}=(u,v,w)$ | velocity (east, north, up) |
| $f=2\Omega\sin\phi$ | Coriolis parameter |
| $\Omega$ | Earth’s angular velocity |
| $\phi$ | latitude |
| $\Phi=gz$ | geopotential |
| $R$ | specific gas constant |
| $c_p$ | specific heat at constant pressure |
| $\theta$ | potential temperature |
| $\nabla_h$ | horizontal gradient |

Material derivative:

$$
\frac{D}{Dt}=\frac{\partial}{\partial t}+\mathbf{u}\cdot\nabla
$$

---

## Atmosphere and climate

**Ideal-gas law (dry air)**

$$
p=\rho R_d T
$$

$R_d\approx 287\,\mathrm{J\,kg^{-1}K^{-1}}$.

**Virtual temperature** (accounts for water vapor)

$$
T_v=T(1+0.608q)
$$

where $q$ is specific humidity.

**Hydrostatic balance**

$$
\frac{\partial p}{\partial z}=-\rho g
\qquad\text{or}\qquad
\frac{\partial\Phi}{\partial p}=-\frac{RT}{p}
$$

**Hypsometric equation** (thickness between two pressure surfaces)

$$
z_2-z_1=\frac{R\bar{T}_v}{g}\ln\frac{p_1}{p_2}
$$

**Dry adiabatic lapse rate**

$$
\Gamma_d=\frac{g}{c_p}\approx 9.8\,\mathrm{K\,km^{-1}}
$$

**Potential temperature**

$$
\theta=T\left(\frac{p_0}{p}\right)^{R/c_p},\qquad p_0=1000\,\mathrm{hPa}
$$

**First law / thermodynamic energy**

$$
c_p\frac{DT}{Dt}-\frac{1}{\rho}\frac{Dp}{Dt}=Q
$$

$Q$ is diabatic heating per unit mass.

**Clausius–Clapeyron (saturation vapor pressure)**

$$
\frac{\mathrm{d}e_s}{\mathrm{d}T}=\frac{L_v e_s}{R_v T^2}
$$

Approximate integrated form (August–Roche–Magnus, $T$ in °C, $e_s$ in hPa):

$$
e_s(T)=6.1094\exp\left(\frac{17.625T}{T+243.04}\right)
$$

Rule of thumb: $e_s$ rises ~7% per 1 K.

**Horizontal momentum (primitive-equation form)**

$$
\frac{Du}{Dt}-fv=-\frac{\partial\Phi}{\partial x}+F_x
$$

$$
\frac{Dv}{Dt}+fu=-\frac{\partial\Phi}{\partial y}+F_y
$$

**Geostrophic wind**

$$
u_g=-\frac{1}{f}\frac{\partial\Phi}{\partial y},\qquad
v_g=\frac{1}{f}\frac{\partial\Phi}{\partial x}
$$

or

$$
f\mathbf{k}\times\mathbf{u}_g=-\nabla_h\Phi
$$

**Thermal wind**

$$
f\frac{\partial\mathbf{u}_g}{\partial\ln p}=-R\nabla_h T
$$

**Continuity (pressure coordinates)**

$$
\nabla_h\cdot\mathbf{u}+\frac{\partial\omega}{\partial p}=0
$$

where $\omega=Dp/Dt$.

**Planetary energy balance (zero-dimensional climate)**

$$
\frac{S_0}{4}(1-A)=\sigma T_e^4
$$

$S_0$ solar constant, $A$ albedo, $\sigma$ Stefan–Boltzmann constant, $T_e$ effective radiating temperature.

With a simple greenhouse:

$$
\sigma T_s^4=\frac{S_0}{4}(1-A)+\varepsilon\sigma T_a^4
$$

---

## Oceanography

Hydrostatic and geostrophic balances are the same form as above, with seawater density $\rho(S,T,p)$.

**Equation of state (schematic)**

$$
\rho=\rho(S,\theta,p)
$$

$S$ is practical or absolute salinity.

**Ekman transport** (integrated wind-driven transport)

$$
\mathbf{M}_E=\frac{1}{f}\boldsymbol{\tau}\times\mathbf{k}
$$

$\boldsymbol{\tau}$ is wind stress.

**Sverdrup relation**

$$
\beta V=\frac{1}{\rho}\nabla\times\boldsymbol{\tau}
$$

$\beta=\partial f/\partial y$, $V$ is northward volume transport.

**Reduced gravity / internal wave speed**

$$
c=\sqrt{g'H},\qquad g'=g\frac{\Delta\rho}{\rho}
$$

---

## Hydrology

**Catchment water balance**

$$
\frac{\mathrm{d}S}{\mathrm{d}t}=P-ET-Q
$$

$S$ storage, $P$ precipitation, $ET$ evapotranspiration, $Q$ runoff.

**Darcy’s law** (porous-media flow)

$$
\mathbf{q}=-K\nabla h
$$

$\mathbf{q}$ specific discharge, $K$ hydraulic conductivity, $h$ hydraulic head.

**Groundwater continuity (unconfined, Dupuit)**

$$
S_y\frac{\partial h}{\partial t}=\nabla\cdot(K h\nabla h)+R
$$

$S_y$ specific yield, $R$ recharge.

**Richards equation** (unsaturated flow)

$$
\frac{\partial\theta}{\partial t}=\nabla\cdot\bigl[K(\theta)\bigl(\nabla\psi+ \mathbf{k}\bigr)\bigr]
$$

$\theta$ volumetric water content, $\psi$ matric potential.

**Manning’s equation** (open-channel flow)

$$
V=\frac{1}{n}R_h^{2/3}S_0^{1/2}
$$

$n$ roughness, $R_h$ hydraulic radius, $S_0$ bed slope.

**Rational runoff formula**

$$
Q=CiA
$$

$C$ runoff coefficient, $i$ rainfall intensity, $A$ area.

---

## Solid Earth / geophysics

**Newton’s law of gravitation / gravity potential**

$$
\nabla^2\Phi=4\pi G\rho
\quad\text{(Poisson)}
$$

Outside the Earth, $\nabla^2\Phi=0$.

**Isostasy (Airy)**

$$
\rho_c h_c=\rho_m h_r
$$

crustal root $h_r$ balances elevated crust $h_c$.

**Seismic wave speeds (isotropic elastic solid)**

$$
V_P=\sqrt{\frac{K+\frac{4}{3}\mu}{\rho}},\qquad
V_S=\sqrt{\frac{\mu}{\rho}}
$$

$K$ bulk modulus, $\mu$ shear modulus.

**Elastic wave equation**

$$
\rho\frac{\partial^2\mathbf{u}}{\partial t^2}=\nabla\cdot\boldsymbol{\sigma}+\mathbf{f}
$$

with Hooke’s law $\sigma_{ij}=c_{ijkl}\varepsilon_{kl}$.

**Heat conduction**

$$
\rho c_p\frac{\partial T}{\partial t}=\nabla\cdot(k\nabla T)+H
$$

$k$ thermal conductivity, $H$ radiogenic heating.

**Radioactive decay / geochronology**

$$
N=N_0 e^{-\lambda t},\qquad
t=\frac{1}{\lambda}\ln\left(1+\frac{D}{P}\right)
$$

$D$ daughter, $P$ parent, $\lambda$ decay constant.

**Stokes settling (sediment / ash)**

$$
w=\frac{2}{9}\frac{r^2(\rho_p-\rho_f)g}{\eta}
$$

---

## Geochemistry / mass balance

**Box-model mass balance**

$$
\frac{\mathrm{d}M}{\mathrm{d}t}=F_{\mathrm{in}}-F_{\mathrm{out}}\pm R
$$

**Residence time**

$$
\tau=\frac{M}{F}
$$

**Rayleigh fractionation**

$$
\frac{C_L}{C_0}=F^{D-1}
$$

$F$ melt fraction remaining, $D$ bulk partition coefficient.

---

## Coupled Earth-system statements

**Global carbon mass balance** (atmosphere box)

$$
\frac{\mathrm{d}C_a}{\mathrm{d}t}=F_{\mathrm{ff}}+F_{\mathrm{luc}}-F_{\mathrm{land}}-F_{\mathrm{ocean}}
$$

**Surface energy budget**

$$
R_n=H+LE+G
$$

net radiation $R_n$, sensible heat $H$, latent heat $LE$, ground heat flux $G$.
