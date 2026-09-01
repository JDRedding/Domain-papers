# Astronomy
- 520 Astronomy

Astronomy is the scientific study of celestial objects, space, and the physical universe beyond Earth’s atmosphere, encompassing everything from planets to galaxies and the cosmos itself.
Astronomy is a vast field connecting observational data with physical theory to explore and explain the universe’s countless wonders, from nearby planets to the farthest galaxies ever observed.

## Importance

Astronomy has advanced fundamental science, enhanced navigation and technology, and expanded our understanding of Earth’s place in the universe. It also drives interest in science, engineering, and space exploration.

## Overview of Astronomy

Astronomy explores the formation, behavior, and physical properties of objects and phenomena in the universe. It combines observation, theory, and experimentation to understand the cosmos on scales ranging from our solar system to billions of light-years across. Unlike astrology, astronomy is a scientific discipline grounded in physics, mathematics, and chemistry.

## Major Branches of Astronomy

1. **Observational Astronomy**  
   Uses telescopes and detectors across multiple wavelengths (optical, radio, infrared, X-ray, gamma-ray) to collect data on stars, planets, and galaxies. Modern observatories, including space telescopes like Hubble, allow deeper and clearer observations than possible from Earth alone.

2. **Astrophysics**  
   Studies the physical processes and properties of celestial bodies, including stellar evolution, black holes, neutron stars, and planetary atmospheres. It applies laws of physics to interpret observations and model cosmic events.

3. **Planetary Science**  
   Focuses on planets, moons, and small Solar System bodies. Research includes planet formation, geology, atmospheres, and the potential for life elsewhere.

4. **Stellar Astronomy**  
   Investigates stars, their lifecycles from formation to supernova or white dwarf stages, and their composition, luminosity, and energy generation.

5. **Galactic and Extragalactic Astronomy**  
   Studies the structure and dynamics of galaxies, galaxy formation, and interactions, as well as clusters of galaxies and large-scale cosmic structures.

6. **Cosmology**  
   Examines the origin, evolution, and ultimate fate of the universe. Key topics include the Big Bang, dark matter, dark energy, and cosmic microwave background radiation.

## Key Concepts and Phenomena

- **Light and Electromagnetic Spectrum:** Light from stars and galaxies reveals their composition, distance, and motion through spectral analysis.  
- **Gravity:** Fundamental force governing planetary orbits, galaxy formation, and black hole behavior.  
- **Exoplanets:** Planets orbiting stars outside our solar system; detected using methods like transits and radial velocity.  
- **Black Holes and Neutron Stars:** Extremely dense remnants of massive stars with intense gravitational effects.  
- **Cosmic Expansion:** Observations show the universe is expanding, influencing theories about dark energy and cosmology.  

## Tools and Techniques

Astronomers use a combination of ground-based and space-based telescopes, spectroscopy, astrometry, radar observations, and computer simulations to study celestial objects and test theoretical models.

Astronomy is built from a relatively compact set of core equations that recur across celestial mechanics, stellar physics, radiation, and cosmology. Below is a structured collection of the most-used formulas, with the standard notation that accompanies them.

This is not every equation in the field (radiative transfer, plasma kinetics, galactic dynamics, and numerical relativity fill entire books), but it covers the relations that appear in almost every serious treatment of astronomy and astrophysics.

## Common notation and constants

| Symbol | Meaning |
|---|---|
| $G$ | Newton’s gravitational constant $\approx 6.67430 \times 10^{-11}\,\mathrm{m}^3\mathrm{kg}^{-1}\mathrm{s}^{-2}$ |
| $c$ | Speed of light $= 299\,792\,458\,\mathrm{m\,s}^{-1}$ |
| $k_B$ | Boltzmann constant |
| $\sigma$ | Stefan–Boltzmann constant $\approx 5.6704 \times 10^{-8}\,\mathrm{W\,m}^{-2}\mathrm{K}^{-4}$ |
| $h$, $\hbar$ | Planck’s constant and reduced Planck constant |
| $M_\odot$, $R_\odot$, $L_\odot$ | Solar mass, radius, luminosity |
| $a$ | Semi-major axis *or* cosmic scale factor (context-dependent) |
| $P$ | Orbital period *or* pressure |
| $m$, $M$ | Apparent and absolute magnitude |
| $z$ | Redshift |
| $H$, $H_0$ | Hubble parameter and its present value |

Useful units:
- $1\,\mathrm{au} = 1.495978707 \times 10^{11}\,\mathrm{m}$ (exact)
- $1\,\mathrm{pc} = 3.085677581 \times 10^{16}\,\mathrm{m}$
- $1\,\mathrm{yr} \approx 3.15576 \times 10^7\,\mathrm{s}$

## Gravity and celestial mechanics

**Newton’s law of gravitation**

$$
F = G\frac{m_1 m_2}{r^2}
$$

Force magnitude between two point masses. Vector form: $\mathbf{F}_{12} = -G m_1 m_2 \mathbf{r}/r^3$.

**Gravitational potential and potential energy**

$$
\Phi = -\frac{GM}{r},\qquad U = -\frac{G m_1 m_2}{r}
$$

**Circular-orbit speed and escape speed**

$$
v_\mathrm{circ} = \sqrt{\frac{GM}{r}},\qquad v_\mathrm{esc} = \sqrt{\frac{2GM}{r}}
$$

**Vis-viva equation** (speed on a Keplerian orbit of semi-major axis $a$)

$$
v^2 = GM\left(\frac{2}{r}-\frac{1}{a}\right)
$$

**Kepler’s third law (Newton’s form)**

$$
P^2 = \frac{4\pi^2}{G(M_1+M_2)}\,a^3
$$

In convenient solar-system units ($P$ in years, $a$ in au, masses in solar masses):

$$
\frac{M_1+M_2}{M_\odot} = \frac{(a/\mathrm{au})^3}{(P/\mathrm{yr})^2}
$$

**Orbital elements of an ellipse**

Periapsis and apoapsis distances:

$$
r_p = a(1-e),\qquad r_a = a(1+e)
$$

where $e$ is the eccentricity.

**Small-angle formula** (angular size)

$$
\theta \approx \frac{D}{d}
$$

with $\theta$ in radians; if $\theta$ is in arcseconds and $D,d$ in consistent units,

$$
\theta'' \approx 206265\,\frac{D}{d}.
$$

## Distances, magnitudes, and photometry

**Trigonometric parallax**

$$
d\,(\mathrm{pc}) = \frac{1}{\varpi}
$$

where $\varpi$ is the parallax in arcseconds.

**Inverse-square flux–luminosity relation**

$$
F = \frac{L}{4\pi d^2}
$$

($F$: energy flux at Earth; $L$: bolometric luminosity.)

**Pogson’s magnitude scale**

$$
m_1 - m_2 = -2.5\log_{10}\left(\frac{F_1}{F_2}\right)
$$

or, equivalently,

$$
\frac{F_1}{F_2} = 10^{-0.4(m_1-m_2)}\approx 2.512^{m_2-m_1}.
$$

**Distance modulus**

$$
m - M = 5\log_{10}\left(\frac{d}{10\,\mathrm{pc}}\right) = 5\log_{10} d_{\mathrm{pc}} - 5
$$

$m$: apparent magnitude, $M$: absolute magnitude (the apparent magnitude the object would have at $10\,\mathrm{pc}$).

With interstellar extinction $A$:

$$
m - M = 5\log_{10} d_{\mathrm{pc}} - 5 + A.
$$

## Radiation and stellar properties

**Stefan–Boltzmann law** (blackbody flux and stellar luminosity)

$$
F = \sigma T^4,\qquad L = 4\pi R^2\sigma T_\mathrm{eff}^4
$$

**Wien’s displacement law**

$$
\lambda_\mathrm{max} T = 2.897772 \times 10^{-3}\,\mathrm{m\,K}
$$

**Planck’s law** (spectral radiance)

Frequency form:

$$
B_\nu(T) = \frac{2h\nu^3}{c^2}\frac{1}{e^{h\nu/k_B T}-1}
$$

Wavelength form:

$$
B_\lambda(T) = \frac{2hc^2}{\lambda^5}\frac{1}{e^{hc/\lambda k_B T}-1}
$$

Rayleigh–Jeans limit ($h\nu\ll k_B T$): $B_\nu\approx 2k_B T\nu^2/c^2$.

**Redshift definition**

$$
z = \frac{\lambda_\mathrm{obs}-\lambda_\mathrm{emit}}{\lambda_\mathrm{emit}} = \frac{\lambda_\mathrm{obs}}{\lambda_\mathrm{emit}}-1
$$

**Non-relativistic Doppler formula**

$$
z \approx \frac{v_r}{c}\qquad (v_r\ll c)
$$

Relativistic radial Doppler formula:

$$
1+z = \sqrt{\frac{1+v_r/c}{1-v_r/c}}
$$

**Mass–energy equivalence** (nuclear energy generation in stars)

$$
E = mc^2
$$

Hydrogen-to-helium fusion converts about $0.007$ of the rest mass into energy.

## Stellar structure

The four classical equations of stellar structure (spherical, static star):

**Hydrostatic equilibrium**

$$
\frac{\mathrm{d}P}{\mathrm{d}r} = -\frac{GM(r)\rho}{r^2}
$$

**Mass continuity**

$$
\frac{\mathrm{d}M}{\mathrm{d}r} = 4\pi r^2\rho
$$

**Energy generation**

$$
\frac{\mathrm{d}L_r}{\mathrm{d}r} = 4\pi r^2\rho\,\varepsilon
$$

where $\varepsilon$ is the energy-generation rate per unit mass.

**Radiative temperature gradient**

$$
\frac{\mathrm{d}T}{\mathrm{d}r} = -\frac{3\kappa\rho L_r}{16\pi ac r^2 T^3}
$$

($\kappa$: opacity; $a=4\sigma/c$: radiation constant.)

In a convective region the adiabatic gradient is used instead:

$$
\frac{\mathrm{d}T}{\mathrm{d}r} = \left(1-\frac{1}{\gamma}\right)\frac{T}{P}\frac{\mathrm{d}P}{\mathrm{d}r}.
$$

**Ideal-gas equation of state** (plus radiation pressure)

$$
P = \frac{\rho k_B T}{\mu m_H} + \frac{1}{3}a T^4
$$

**Virial theorem** (self-gravitating system in equilibrium)

$$
2K + W = 0
$$

where $K$ is total kinetic energy and $W$ is gravitational potential energy. For a star this implies $\langle T\rangle\sim GM\mu m_H/k_B R$.

**Jeans mass** (gravitational instability of a cloud)

$$
M_J \approx \left(\frac{5k_B T}{G\mu m_H}\right)^{3/2}\left(\frac{3}{4\pi\rho}\right)^{1/2}
$$

**Eddington luminosity** (radiation-pressure limit)

$$
L_\mathrm{Edd} = \frac{4\pi GMc}{\kappa}\approx 3.3\times 10^4\left(\frac{M}{M_\odot}\right)L_\odot
$$

(for electron-scattering opacity).

**Main-sequence lifetime (order of magnitude)**

$$
\tau_\mathrm{MS}\sim 10^{10}\left(\frac{M}{M_\odot}\right)^{-2.5}\,\mathrm{yr}
$$

## Relativity and compact objects

**Schwarzschild radius**

$$
R_S = \frac{2GM}{c^2}\approx 3\left(\frac{M}{M_\odot}\right)\,\mathrm{km}
$$

**Gravitational redshift** (from the surface of a non-rotating compact object)

$$
1+z = \left(1-\frac{R_S}{R}\right)^{-1/2}
$$

**Lorentz factor**

$$
\gamma = \frac{1}{\sqrt{1-v^2/c^2}}
$$

**Tolman–Oppenheimer–Volkoff equation** (relativistic hydrostatic equilibrium)

$$
\frac{\mathrm{d}P}{\mathrm{d}r} = -\frac{GM(r)\rho}{r^2}\left(1+\frac{P}{\rho c^2}\right)\left(1+\frac{4\pi r^3 P}{M(r)c^2}\right)\left(1-\frac{2GM(r)}{rc^2}\right)^{-1}
$$

## Cosmology

**Hubble’s law** (low redshift)

$$
v = H_0 d\qquad\text{or}\qquad cz \approx H_0 d
$$

**Friedmann equation**

$$
\left(\frac{\dot{a}}{a}\right)^2 = H^2 = \frac{8\pi G}{3}\rho - \frac{kc^2}{a^2} + \frac{\Lambda c^2}{3}
$$

where $a(t)$ is the scale factor, $k=+1,0,-1$ is spatial curvature, and $\Lambda$ is the cosmological constant.

**Acceleration equation**

$$
\frac{\ddot{a}}{a} = -\frac{4\pi G}{3}\left(\rho+\frac{3P}{c^2}\right)+\frac{\Lambda c^2}{3}
$$

**Critical density**

$$
\rho_\mathrm{crit} = \frac{3H^2}{8\pi G}
$$

Density parameters: $\Omega_i=\rho_i/\rho_\mathrm{crit}$. Flat universe today: $\Omega_m+\Omega_\Lambda+\Omega_k=1$.

**Cosmological redshift**

$$
1+z = \frac{a(t_0)}{a(t_\mathrm{emit})}
$$

**Conservation laws in an expanding universe**

- Matter (dust): $\rho_m a^3=\mathrm{const}$
- Radiation: $\rho_r a^4=\mathrm{const}$ (equivalently $T\propto 1/a$)

## A few more relations that appear constantly

**Optical depth**

$$
\tau_\nu = \int\kappa_\nu\rho\,\mathrm{d}s
$$

**Saha ionization equation** (degree of ionization $x$)

$$
\frac{x^2}{1-x} = \frac{1}{n}\left(\frac{2\pi m_e k_B T}{h^2}\right)^{3/2}e^{-\chi/k_B T}
$$

**Cluster mass from velocity dispersion** (virial)

$$
M \approx \frac{\langle v^2\rangle R}{G}
$$

**Einstein field equation** (the geometric origin of the Friedmann and TOV equations)

$$
G_{\mu\nu} + \Lambda g_{\mu\nu} = \frac{8\pi G}{c^4}T_{\mu\nu}
$$

These equations, together with an equation of state $P=P(\rho,T,\dots)$ and an opacity law $\kappa(\rho,T)$, are the mathematical backbone of modern astronomy. Almost every specialized formula in orbital dynamics, stellar evolution, or observational cosmology is a specialization or integral of one of the relations above.
