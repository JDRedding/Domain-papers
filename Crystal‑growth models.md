# Crystal‑growth models

All continuum crystal‑growth models reduce to:

$$
v_n = M(\Delta\mu, T)\,\bigl[\Delta\mu - \gamma\Omega\kappa\bigr].
$$

Every mechanism — diffusion‑limited, nucleation‑limited, attachment‑limited, curvature‑driven, anisotropic faceting — enters through:

- the **form of \(M\)**,
- the **boundary conditions**,
- the **geometry** of the interface.

This is the fully generalized crystal‑growth equation.

## **1. Thermodynamic Driving Force**
The fundamental quantity governing growth is the **chemical‑potential difference**:

$$
\Delta\mu = \mu_\text{env} - \mu_\text{solid}.
$$

Supersaturation is the normalized form:

$$
\sigma = \frac{c - c_\text{eq}}{c_\text{eq}}.
$$

For small deviations from equilibrium:

$$
\Delta\mu \approx kT\sigma.
$$

**Curvature correction (Gibbs–Thomson):**

$$
\Delta\mu_\text{eff} = \Delta\mu - \gamma\Omega\kappa.
$$

- **Δμ** — chemical potential driving force  
- **σ** — supersaturation  
- **γ** — surface free energy  
- **Ω** — molecular volume  
- **κ** — interface curvature  

---

## **2. General Interface Kinetics**
The **normal velocity** of the interface is:

$$
v_n = M(\Delta\mu, T)\,\Delta\mu_\text{eff}.
$$

This is the universal kinetic law. Everything else is a specialization of:

- the **mobility** \(M\),
- the **effective driving force** \(\Delta\mu_\text{eff}\),
- the **geometry** of the interface.

**Linear attachment kinetics:**

$$
v_n = k\,\Delta\mu_\text{eff}.
$$

**Nonlinear kinetics (far from equilibrium):**

$$
v_n = k_1\Delta\mu + k_2(\Delta\mu)^2 + k_3(\Delta\mu)^3 + \cdots.
$$

- **v_n** — normal interface velocity  
- **M** — mobility  
- **k** — attachment coefficient  

---

## **3. Diffusion‑Limited Growth**
When mass transport controls growth:

$$
J = -D\nabla c,
$$

$$
R = \frac{J}{\rho_\text{solid}}.
$$

Boundary condition:

$$
c|_\text{interface} = c_\text{eq}(\kappa, T).
$$

- **D** — diffusion coefficient  
- **c** — concentration  
- **J** — diffusive flux  

---

## **4. Nucleation‑Controlled Growth**
When new layers or clusters must form:

$$
R_\text{nuc} = A\exp\!\left(-\frac{\Delta G^\ast}{kT}\right).
$$

Critical nucleus free energy:

$$
\Delta G^\ast = \frac{\gamma^3\Omega^2}{(kT\Delta\mu)^2}.
$$

- **A** — kinetic prefactor  
- **ΔG^\*** — nucleation barrier  

---

## **5. Curvature‑Driven Growth (Mean‑Curvature Flow)**
When surface tension dominates:

$$
v_n = M\gamma\kappa.
$$

This governs smoothing, sintering, and facet rounding.

---

## **6. Anisotropic Surface Energy and Faceting**
Orientation‑dependent surface energy:

$$
v_n = M\left[\Delta\mu - \gamma(\mathbf{n})\Omega\kappa_\gamma\right].
$$

- **\(\gamma(\mathbf{n})\)** — anisotropic surface energy  
- **\(\kappa_\gamma\)** — anisotropic curvature  

Facets correspond to cusps in \(\gamma(\mathbf{n})\).

---

## **7. Variational Formulation (Equilibrium Shapes)**
Total surface free energy:

$$
E = \int_{\partial\Omega} \gamma(\mathbf{n})\, dA.
$$

Wulff construction:

$$
\mathbf{x}\cdot\mathbf{n} = \gamma(\mathbf{n}).
$$

This determines the equilibrium crystal shape.



