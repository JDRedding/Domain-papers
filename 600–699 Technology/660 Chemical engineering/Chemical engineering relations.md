# Chemical engineering relations
Chemical engineering core mathematical relations that sit behind the topic, with standard notation. These are the working equations that connect the chemistry topics in engineering (kinetics, thermodynamics, surface processes, industrial operations) to actual chemical calculations.

---

## Quantum and computational chemistry

**Time-independent Schrödinger equation**

$$
\hat{H}\psi = E\psi
$$

**Electronic Hamiltonian (SI, Born–Oppenheimer; nuclei fixed)**

$$
\hat{H}_{\mathrm{el}} = -\sum_i\frac{\hbar^2}{2m_e}\nabla_i^2 -\sum_{i,A}\frac{Z_A e^2}{4\pi\varepsilon_0 r_{iA}} +\sum_{i<j}\frac{e^2}{4\pi\varepsilon_0 r_{ij}} +E_{\mathrm{NN}}
$$

$E_{\mathrm{NN}}$ is the nuclear–nuclear repulsion (a constant at fixed geometry).

**Expectation value**

$$
\langle\hat{A}\rangle=\int\psi^*\hat{A}\psi\,d\tau
$$

**Closed-shell Hartree–Fock energy (spin-orbital form)**

$$
E_{\mathrm{HF}}=\sum_i h_{ii}+\frac12\sum_{ij}(2J_{ij}-K_{ij})
$$

If the sum is over *spatial* occupied orbitals of a closed-shell molecule, the equivalent form is

$$
E_{\mathrm{HF}}=2\sum_i h_{ii}+\sum_{ij}(2J_{ij}-K_{ij}).
$$

**HOMO–LUMO / colour (order-of-magnitude)**

$$
\Delta E=E_{\mathrm{LUMO}}-E_{\mathrm{HOMO}}\approx\frac{hc}{\lambda_{\max}}
$$

---

## Spectroscopy

**Photon energy**

$$
E=h\nu=\frac{hc}{\lambda}
$$

**Beer–Lambert law**

$$
A=\varepsilon cl=-\log_{10}\frac{I}{I_0}
$$

**Harmonic oscillator**

$$
E_v=h\nu\left(v+\tfrac12\right),\qquad v=0,1,2,\ldots
$$

**Anharmonic vibrational spacing (common spectroscopic form)**

$$
\Delta E_{v\to v+1}=h\nu_0\bigl(1-2\chi_e(v+1)\bigr)
$$

**Rigid rotor (linear molecule)**

$$
E_J=BJ(J+1),\qquad B=\frac{h}{8\pi^2 I}
$$

---

## Chemical kinetics and thermodynamics

**Empirical rate law**

$$
v=k[\mathrm{A}]^m[\mathrm{B}]^n
$$

**Arrhenius**

$$
k=A\exp(-E_a/RT)
$$

**Gibbs energy and equilibrium (standard-state form)**

$$
\Delta G=\Delta H-T\Delta S
$$

$$
\Delta G^\circ=-RT\ln K,\qquad
\Delta G=\Delta G^\circ+RT\ln Q
$$

The equality $\Delta G=-RT\ln K$ is only true at equilibrium if one writes $\Delta G=0$, or if $\Delta G$ is being used loosely for $\Delta G^\circ$.

**van ’t Hoff**

$$
\frac{d\ln K}{dT}=\frac{\Delta H^\circ}{RT^2}
$$

**Eyring / transition-state theory**

$$
k=\kappa\frac{k_B T}{h}\,e^{-\Delta G^\ddagger/RT}
=\kappa\frac{k_B T}{h}\,e^{\Delta S^\ddagger/R}\,e^{-\Delta H^\ddagger/RT}
$$

$\kappa$ is the transmission coefficient (often taken as 1). For bimolecular reactions in solution an extra standard-state concentration factor appears.

---

## Statistical thermodynamics

Use $Q$ for the *canonical* (system) partition function and $q$ for the *molecular* partition function. Your notes mix $Q$ and $Z$; they are the same object.

**Canonical partition function**

$$
Q=\sum_i g_i\,e^{-\varepsilon_i/k_BT},\qquad \beta=1/k_BT
$$

For $N$ indistinguishable non-interacting molecules,

$$
Q=\frac{q^N}{N!}.
$$

**Helmholtz energy**

$$
A=-k_BT\ln Q
$$

**Entropy (canonical)**

$$
S=k_B\ln Q+k_BT\left(\frac{\partial\ln Q}{\partial T}\right)_V
$$

Microcanonical:

$$
S=k_B\ln W
$$

Do not add those two expressions together; they belong to different ensembles.

---

## Surface and colloid chemistry

**Langmuir isotherm**

$$
\theta=\frac{Kp}{1+Kp}
$$

**Gibbs adsorption isotherm (ideal dilute solute)**

$$
\Gamma=-\frac{1}{RT}\left(\frac{\partial\gamma}{\partial\ln c}\right)_T
$$

---

## Symmetry / group theory

**Great orthogonality theorem for characters**

$$
\sum_R\chi^{(\Gamma)}(R)^*\chi^{(\Gamma')}(R)=h\,\delta_{\Gamma\Gamma'}
$$

**Reduction of a representation**

$$
n_\Gamma=\frac1h\sum_R\chi(R)\,\chi^{(\Gamma)}(R)^*
$$

---

## Coordination / organometallic chemistry

**Octahedral crystal-field splitting**

$$
\Delta_o=10\,Dq
$$

CFSE is counted in units of $\Delta_o$ (or $\Delta_t$ for tetrahedral).

**Valence electron count (18-electron rule)**

$$
\mathrm{VEC}=n_{\mathrm{metal}}+n_{\mathrm{ligand}}+n_{\mathrm{charge}}
$$

Stable organometallics often have $\mathrm{VEC}=18$; this is a counting heuristic, not a conservation law.

**Hansch-type QSAR (empirical)**

$$
\log(1/C)=a\pi+b\sigma+\cdots+k
$$

---

## Working process equations (chemical engineering)

### Material and mole balances

**General mass balance**

$$
\frac{dm}{dt}=\sum\dot m_{\mathrm{in}}-\sum\dot m_{\mathrm{out}}+R_{\mathrm{gen}}
$$

**Component mole balance**

$$
\frac{dN_A}{dt}=F_{A,\mathrm{in}}-F_{A,\mathrm{out}}+\int_V r_A\,dV
$$

**PFR design equation**

$$
\frac{dF_A}{dV}=r_A
$$

**CSTR design equation (single reaction)**

$$
V=\frac{F_{A0}X}{-r_A}
$$

**Conversion–rate (constant density / constant volume batch or constant-density flow)**

$$
-r_A=C_{A0}\frac{dX}{d\tau}
$$

### Energy balances

**Open-system energy balance**

$$
\frac{dE}{dt}=\dot Q-\dot W+\sum\dot m_{\mathrm{in}}\hat H_{\mathrm{in}}-\sum\dot m_{\mathrm{out}}\hat H_{\mathrm{out}}
$$

**Steady-state enthalpy balance (no shaft work, KE/PE neglected)**

$$
\dot Q=\sum\dot n_{\mathrm{out}}H_{\mathrm{out}}-\sum\dot n_{\mathrm{in}}H_{\mathrm{in}}
$$

**Overall heat-transfer coefficient (plane wall, three resistances)**

$$
\frac1U=\frac1{h_i}+\frac{\Delta x}{k}+\frac1{h_o}
$$

### Fluid flow and momentum

**Bernoulli (inviscid, steady, incompressible, streamline)**

$$
\frac{P}{\rho}+\frac{v^2}{2}+gz=\mathrm{const}
$$

Engineering form adds a friction / head-loss term.

**Reynolds number**

$$
\mathrm{Re}=\frac{\rho v D}{\mu}
$$

**Ergun equation (packed bed)**

$$
\frac{\Delta P}{L} =150\frac{(1-\varepsilon)^2}{\varepsilon^3}\frac{\mu u}{d_p^2} +1.75\frac{1-\varepsilon}{\varepsilon^3}\frac{\rho u^2}{d_p}
$$

### Heat and mass transfer

**Fourier**

$$
\mathbf{q}=-k\nabla T
$$

**Newton cooling**

$$
q=h(T_s-T_\infty)
$$

**Fick’s first law**

$$
\mathbf{J}_A=-D_{AB}\nabla c_A
$$

**Film theory**

$$
N_A=k_c(c_{A,i}-c_{A,b})
$$

---

Natural-product chemistry is mostly structure and biosynthesis; the equations that actually get used there are the spectroscopic, thermochemical, and QSAR relations above, not a separate equation set.

## Future work
- (1) reactor mole balances for variable-density gas-phase flow,
- (2) non-isothermal PFR/CSTR energy balances coupled to $k(T)$,
- (3) a one-page “which partition function / which free energy” map
