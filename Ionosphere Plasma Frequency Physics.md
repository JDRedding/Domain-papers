# **Ionosphere Plasma Physics**

### Plasma Frequency
The plasma frequency (critical frequency for wave reflection/refraction) is

$$
\omega_p = \sqrt{\frac{N e^2}{\varepsilon_0 m_e}}
$$

### Variables
- $N$: electron number density ($\mathrm{m}^{-3}$)
- $e$ or $|q|$: elementary charge ($\mathrm{C}$)
- $\varepsilon_0$: vacuum permittivity ($\mathrm{F/m}$)
- $m_e$: electron mass ($\mathrm{kg}$)
- $\omega$: angular frequency of the radio wave ($\mathrm{rad/s}$)
- $\omega_p$: plasma angular frequency ($\mathrm{rad/s}$)

### Derived Relations
(From the force balance on electrons and Maxwell’s equations)

**Current density:**

$$
\mathbf{J}_\mathrm{ex} = -N |q| \mathbf{v}_e
$$

**Electron velocity under an oscillating electric field:**

$$
\mathbf{v}_e = -\frac{|q| \mathbf{E}}{j \omega m_e}
$$

**Resulting plasma current:**

$$
\mathbf{J}_\mathrm{ex} = -\frac{N |q|^2 \mathbf{E}}{j \omega m_e}
$$

**Effective relative permittivity:**

$$
\varepsilon_r = 1 - \frac{\omega_p^2}{\omega^2}
$$

where

$$
\omega_p = \sqrt{\frac{N |q|^2}{\varepsilon_0 m_e}}
$$

### Practical Approximations

- For $N$ in $\mathrm{m}^{-3}$:

$$
\omega_p \approx 56.4 \sqrt{N} \quad (\mathrm{rad/s})
$$

- For $N$ in $\mathrm{cm}^{-3}$:

$$
\omega_p \approx 5.64 \times 10^4 \sqrt{N} \quad (\mathrm{rad/s})
$$

(Equivalently, the ordinary frequency $f_p = \omega_p / 2\pi \approx 9 \sqrt{N}$ Hz when $N$ is in $\mathrm{m}^{-3}$.)

### Fundamentals
- Sunlight ionizes atmospheric gases above roughly 60 km, creating free electrons.
- Radio waves with frequency below the local plasma frequency are reflected.
- This allows HF signals to bounce back to Earth beyond the geometric horizon.
- Higher electron density (daytime, elevated solar activity) raises $\omega_p$ and extends the reflection range.
- The D, E, F1, and F2 layers have different peak densities and therefore different critical frequencies.
