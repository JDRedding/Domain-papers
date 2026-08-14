# **Science Physics**
In classifications, Science denotes Physics, encompassing all fundamental concepts and studies of matter, motion, energy, and related phenomena. Understanding the classification helps researchers locate physics literature efficiently, distinguishing between classical topics (mechanics, fluids, heat) and modern subjects (quantum physics, electromagnetism). It also reflects the logical grouping of physical laws and experimental phenomena, which is useful for educational curricula, literature searches, and organizing libraries.

The formulas use conventional SI notation and are the most widely taught or applied starting points in each subdivision. Deeper or specialized topics (e.g., general relativity, quantum field theory, turbulent flow closures, nonlinear optics) introduce many additional equations. By using the category and its subcategories, one can access resources spanning from introductory physics concepts to advanced, specialized research in both theoretical and applied physics.

## General Description
The classification in the Dewey Decimal System covers the broad field of physics. This category includes the general principles, laws, and concepts of physical science as well as the foundational theories that explain natural phenomena. Equations and formula resources listed address the nature of matter and energy, the fundamental forces, and the mathematical descriptions of physical happenings.

## Subcategories 
Key mathematical equations and formulas for the main Physics subdivisions (with standard notation). These are foundational or representative equations commonly associated with each area; many fields have extensive further specializations. The system further breaks down physics into more specific areas to organize topics systematically:

### 531 Classical mechanics (solid mechanics)
– Includes Newtonian mechanics, statics, dynamics, elasticity, and the physics of rigid bodies.

Newton’s second law  

$$
\mathbf{F} = m\mathbf{a} = m\frac{d\mathbf{v}}{dt} = \frac{d\mathbf{p}}{dt}
$$

where $\mathbf{F}$ = net force, $m$ = mass, $\mathbf{a}$ = acceleration, $\mathbf{v}$ = velocity, $\mathbf{p} = m\mathbf{v}$ = momentum.

Equations of motion (constant acceleration)  

$$
v = u + at, \quad s = ut + \frac{1}{2}at^{2}, \quad v^{2} = u^{2} + 2as
$$

($u$ = initial velocity, $v$ = final velocity, $s$ = displacement, $a$ = acceleration, $t$ = time).

Work–energy theorem / kinetic energy  
$$
W = \Delta K = \frac{1}{2}m(v^{2} - u^{2}), \quad K = \frac{1}{2}mv^{2}
$$

($W$ = work, $K$ = kinetic energy).

Hooke’s law (elasticity)  

$$
\mathbf{F} = -k\mathbf{x}
$$

($k$ = spring constant, $\mathbf{x}$ = displacement).

Simple harmonic motion  

$$
\frac{d^{2}x}{dt^{2}} + \omega^{2}x = 0, \quad \omega = \sqrt{\frac{k}{m}}, \quad x(t) = A\sin(\omega t + \varphi)
$$

($A$ = amplitude, $\varphi$ = phase).

Lagrangian / Euler–Lagrange  

$$
\frac{d}{dt}\left(\frac{\partial L}{\partial\dot{q}{i}}\right) - \frac{\partial L}{\partial q{i}} = 0, \quad L = T - V
$$

($L$ = Lagrangian, $T$ = kinetic energy, $V$ = potential energy, $q_{i}$ = generalized coordinates).

Hamiltonian equations  

$$
\dot{q}{i} = \frac{\partial H}{\partial p{i}}, \quad \dot{p}{i} = -\frac{\partial H}{\partial q{i}}, \quad H = \mathbf{p}\cdot\dot{\mathbf{q}} - L
$$ 

($H$ = Hamiltonian, $p_{i}$ = conjugate momenta).

### 532 Fluid mechanics (liquid mechanics)
– Focuses on the behavior of fluids, hydrodynamics, and the mechanics of liquids in motion or at rest.

Continuity equation (conservation of mass)  

$$
\frac{\partial\rho}{\partial t} + \nabla\cdot(\rho\mathbf{u}) = 0
$$  

(or for incompressible flow: $\nabla\cdot\mathbf{u} = 0$; $\rho$ = density, $\mathbf{u}$ = velocity field).

Bernoulli’s equation (incompressible, inviscid, steady flow along a streamline)  

$$
p + \frac{1}{2}\rho v^{2} + \rho gy = \text{constant}
$$  

($p$ = pressure, $v$ = speed, $g$ = gravity, $y$ = height).

Navier–Stokes equations (momentum)  

$$
\rho\left(\frac{\partial\mathbf{u}}{\partial t} + \mathbf{u}\cdot\nabla\mathbf{u}\right) = -\nabla p + \nabla\cdot\mathbf{T}_{D} + \mathbf{f}
$$  

($\mathbf{T}_{D}$ = deviatoric stress tensor, $\mathbf{f}$ = body forces).

Archimedes’ principle / buoyant force  

$$
\mathbf{F}{b} = -\rho{f}V_{\text{imm}}\mathbf{g}
$$  

($\rho_{f}$ = fluid density, $V_{\text{imm}}$ = immersed volume).

### 533 Gas mechanics 
– Deals with the behavior of gases, gas laws, thermodynamic systems involving gases, and kinetic theory.
-  Pneumatics (gas mechanics)

Ideal gas law  

$$
pV = nRT = Nk_{B}T
$$

($p$ = pressure, $V$ = volume, $n$ = amount of substance in moles, $R$ = gas constant, $T$ = absolute temperature, $N$ = number of molecules, $k_{B}$ = Boltzmann constant).

Kinetic theory pressure  

$$
p = \frac{1}{3}\rho v_{\text{rms}}^{2} = \frac{1}{3}\frac{N}{V}m\langle v^{2}\rangle
$$  

($v_{\text{rms}}$ = root-mean-square speed, $m$ = molecular mass).

Average translational kinetic energy per molecule  

$$
\langle K\rangle = \frac{3}{2}k_{B}T
$$  

Boyle’s / Charles’ / Gay-Lussac relations (special cases of ideal gas law)  

$$
pV = \text{const}\ (T\text{ fixed}), \quad \frac{V}{T} = \text{const}\ (p\text{ fixed}), \quad \frac{p}{T} = \text{const}\ (V\text{ fixed}).
$$

### 534 Sound & related vibrations
– Covers acoustics, sound waves, vibration theory, and related physical phenomena.

1-D wave equation  

$$
\frac{\partial^{2}p}{\partial t^{2}} = c^{2}\frac{\partial^{2}p}{\partial x^{2}}
$$  

(or for displacement $u$: $\partial^{2}u/\partial t^{2} = c^{2}\partial^{2}u/\partial x^{2}$; $p$ = pressure perturbation, $c$ = wave speed).

Speed of sound in an ideal gas  

$$
c = \sqrt{\frac{\gamma p}{\rho}} = \sqrt{\gamma RT/M}
$$  

($\gamma = C_{p}/C_{v}$, $M$ = molar mass).

Harmonic wave / traveling wave  

$$
p = p_{0}\cos(kx - \omega t), \quad k = \frac{\omega}{c} = \frac{2\pi}{\lambda}
$$  

($\omega$ = angular frequency, $\lambda$ = wavelength, $k$ = wave number).

Acoustic intensity / impedance 

$$
I = \frac{p^{2}}{2\rho c}, \quad Z = \rho c
$$  

($I$ = intensity, $Z$ = acoustic impedance).

### 535 Light & infrared & ultraviolet phenomena 
– Focuses on optics, propagation of light, refraction, reflection, and other electromagnetic phenomena within visible, infrared, and ultraviolet ranges.
- Light and related radiation (optics / EM waves)

Maxwell’s equations (vacuum, microscopic form)  

$$
\begin{align*}
\nabla\cdot\mathbf{E} &= \frac{\rho}{\varepsilon_{0}}, \\
\nabla\cdot\mathbf{B} &= 0, \\
\nabla\times\mathbf{E} &= -\frac{\partial\mathbf{B}}{\partial t}, \\
\nabla\times\mathbf{B} &= \mu_{0}\mathbf{J} + \mu_{0}\varepsilon_{0}\frac{\partial\mathbf{E}}{\partial t}.
\end{align*}
$$  

($\mathbf{E}$ = electric field, $\mathbf{B}$ = magnetic field, $\rho$ = charge density, $\mathbf{J}$ = current density, $\varepsilon_{0}$ = vacuum permittivity, $\mu_{0}$ = vacuum permeability).

Speed of light / EM waves  

$$
c = \frac{1}{\sqrt{\mu_{0}\varepsilon_{0}}}
$$  

Snell’s law of refraction  

$$
n_{1}\sin\theta_{1} = n_{2}\sin\theta_{2}
$$  

($n$ = refractive index, $\theta$ = angle of incidence/refraction).

Thin-lens equation  

$$
\frac{1}{f} = \frac{1}{x_{1}} + \frac{1}{x_{2}}
$$  

($f$ = focal length, $x_{1}, x_{2}$ = object/image distances).

Plane EM wave  

$$
\mathbf{E} = \mathbf{E}{0}\sin(kx - \omega t), \quad \mathbf{B} = \mathbf{B}{0}\sin(kx - \omega t),\quad |\mathbf{B}| = \frac{|\mathbf{E}|}{c}.
$$

### 536 Heat (thermodynamics / heat transfer)
– Covers thermodynamics, heat transfer, temperature, and the laws governing energy transformation in systems.

First law of thermodynamics

$$
\Delta U = Q - W
$$  

($U$ = internal energy, $Q$ = heat added to system, $W$ = work done by system; sign conventions vary).

Ideal-gas internal energy / heat capacity  

$$
\Delta U = nC_{V}\Delta T, \quad Q = mc\Delta T
$$  

($C_{V}$ = molar heat capacity at constant volume, $c$ = specific heat).

Fourier’s law of conduction  

$$
\mathbf{q} = -k\nabla T \quad\text{or}\quad q_{x} = -k\frac{dT}{dx}
$$  

($\mathbf{q}$ = heat flux, $k$ = thermal conductivity, $T$ = temperature).

Newton’s law of cooling (convection)  

$$
\dot{Q} = hA(T - T_{\text{env}})
$$  

($h$ = heat-transfer coefficient, $A$ = area).

Stefan–Boltzmann law (radiation) 

$$
P = \sigma A T^{4}
$$  

($\sigma$ = Stefan–Boltzmann constant $\approx 5.67\times10^{-8}\,\mathrm{W\,m^{-2}K^{-4}}$).

Carnot efficiency  

$$
\eta = 1 - \frac{T_{C}}{T_{H}}
$$  

($T_{H}, T_{C}$ = hot/cold reservoir temperatures).

### 537 Electricity & electronics 
– Encompasses electrostatics, current electricity, circuits, electric fields, electromagnetism, and electronic applications.

537 Electricity and electronics
Ohm’s law  

$$
V = IR \quad\text{or}\quad \mathbf{J} = \sigma\mathbf{E}
$$  

($V$ = voltage, $I$ = current, $R$ = resistance, $\mathbf{J}$ = current density, $\sigma$ = conductivity).

Kirchhoff’s laws  
Current (KCL): $\sum I_{\text{in}} = \sum I_{\text{out}}$ (or $\sum I = 0$ at a node).  
Voltage (KVL): $\sum V = 0$ around a closed loop.

Coulomb’s law  

$$
\mathbf{F} = \frac{1}{4\pi\varepsilon_{0}}\frac{q_{1}q_{2}}{r^{2}}\hat{\mathbf{r}}
$$  

Electric field of a point charge 

$$
\mathbf{E} = \frac{1}{4\pi\varepsilon_{0}}\frac{q}{r^{2}}\hat{\mathbf{r}}
$$  

Maxwell’s equations (as listed under 535) also govern electricity and electronics, especially time-varying fields and circuits with capacitance/inductance.

### 538 Magnetism 
– Focused on magnetic fields, magnetic properties of materials, and related phenomena.

Biot–Savart law  

$$
d\mathbf{B} = \frac{\mu_{0}}{4\pi}\frac{I\,d\boldsymbol{\ell}\times\hat{\mathbf{r}}}{r^{2}}
$$  

($\mathbf{B}$ = magnetic field, $I$ = current, $d\boldsymbol{\ell}$ = current element).

Ampère’s law (steady currents)  

$$
\oint\mathbf{B}\cdot d\boldsymbol{\ell} = \mu_{0}I_{\text{enc}}
$$  

Faraday’s law of induction  

$$
\mathcal{E} = -\frac{d\Phi_{B}}{dt}, \quad \nabla\times\mathbf{E} = -\frac{\partial\mathbf{B}}{\partial t}
$$  

($\mathcal{E}$ = induced emf, $\Phi_{B} = \int\mathbf{B}\cdot d\mathbf{A}$ = magnetic flux).

Magnetic force on a moving charge / current  

$$
\mathbf{F} = q(\mathbf{v}\times\mathbf{B}), \quad d\mathbf{F} = I\,d\boldsymbol{\ell}\times\mathbf{B}
$$  

(Again, Maxwell’s equations fully unify electricity and magnetism.)

539 Modern physics – Deals with concepts developed after classical physics, including relativity, quantum mechanics, nuclear physics, and particle physics.

### 539 Modern physics
Mass–energy equivalence (special relativity)  

$$
E = mc^{2} \quad\text{(rest energy)}, \quad E = \gamma mc^{2} \quad\text{(total energy)}
$$  

where $\gamma = 1/\sqrt{1 - v^{2}/c^{2}}$, and the energy–momentum relation  

$$
E^{2} = (pc)^{2} + (mc^{2})^{2}.
$$

Time-dependent Schrödinger equation  

$$
i\hbar\frac{\partial\Psi}{\partial t} = \hat{H}\Psi
$$  

($\Psi$ = wave function, $\hat{H}$ = Hamiltonian operator, $\hbar = h/2\pi$).

Time-independent Schrödinger equation  

$$
-\frac{\hbar^{2}}{2m}\nabla^{2}\psi + V\psi = E\psi
$$  

de Broglie relation / Heisenberg uncertainty principle  

$$
\lambda = \frac{h}{p}, \quad \Delta x\,\Delta p \geq \frac{\hbar}{2}
$$  

Planck’s relation  

$$
E = hf = \hbar\omega
$$  

($h$ = Planck’s constant, $f$ = frequency).
