# Electromagnetic Plane Wave in Vacuum
**(SI units, source-free)**

## Fundamentals

- Vacuum: $\rho = 0$, $\mathbf{J} = 0$
- Fields are transverse ($\mathbf{E} \perp \mathbf{B} \perp \mathbf{k}$)
- $\mathbf{E}$ and $\mathbf{B}$ oscillate **in phase**
- Propagation speed:

$$
c = \frac{1}{\sqrt{\mu_{0}\varepsilon_{0}}}
$$

## Types

| Symbol | Meaning | Units |
|--------|---------|-------|
| $\mathbf{E}$, $\mathbf{B}$ | vector fields | V/m and T |
| $\mathbf{k}$ | wave vector | rad/m |
| $\omega$ | angular frequency | rad/s |
| $\hat{\mathbf{k}}$ | unit vector in direction of travel | — |
| Eᵢ, Bᵢ | amplitude vectors | V/m, T |
| $\phi$ | phase constant | rad |
| $\varepsilon_{0}$ | vacuum permittivity | $8.854 \times 10^{-12}\,\mathrm{F/m}$ |
| $\mu_{0}$ | vacuum permeability | $4\pi \times 10^{-7}\,\mathrm{H/m}$ |

## Maxwell Equations (Vacuum)

$$
\nabla \cdot \mathbf{E} = 0
$$

$$
\nabla \cdot \mathbf{B} = 0
$$

$$
\nabla \times \mathbf{E} = -\frac{\partial \mathbf{B}}{\partial t}
$$

$$
\nabla \times \mathbf{B} = \mu_{0}\varepsilon_{0}\,\frac{\partial \mathbf{E}}{\partial t}
$$

## Wave Equations

$$
\nabla^{2}\mathbf{E} - \mu_{0}\varepsilon_{0}\,\frac{\partial^{2}\mathbf{E}}{\partial t^{2}} = 0
$$

$$
\nabla^{2}\mathbf{B} - \mu_{0}\varepsilon_{0}\,\frac{\partial^{2}\mathbf{B}}{\partial t^{2}} = 0
$$

## Plane-Wave Solution (Traveling $+\hat{\mathbf{k}}$)

$$
\mathbf{E}(\mathbf{r},t) = \mathbf{E}_{0}\,\cos(\mathbf{k}\cdot\mathbf{r} - \omega t + \phi)
$$

$$
\mathbf{B}(\mathbf{r},t) = \mathbf{B}_{0}\,\cos(\mathbf{k}\cdot\mathbf{r} - \omega t + \phi)
$$

### Constraints

$$
\mathbf{k}\cdot\mathbf{E}_{0} = 0
$$

$$
\mathbf{k}\cdot\mathbf{B}_{0} = 0
$$

$$
\mathbf{B}_{0} = \frac{1}{c}\,\hat{\mathbf{k}} \times \mathbf{E}_{0}
$$

$$
\omega = c\,|\mathbf{k}|
$$
