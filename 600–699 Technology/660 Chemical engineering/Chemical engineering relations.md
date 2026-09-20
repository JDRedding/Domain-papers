# Chemical engineering relations
Chemical engineering core mathematical relations that sit behind the topic, with standard notation.

**Quantum chemistry & computational chemistry**
- Time-independent Schrödinger equation: $\hat{H}\psi = E\psi$
- Hamiltonian operator (electronic): $\hat{H} = -\sum_i\frac{\hbar^2}{2m_e}\nabla_i^2 - \sum_{i,A}\frac{Z_A e^2}{4\pi\epsilon_0 r_{iA}} + \sum_{i<j}\frac{e^2}{4\pi\epsilon_0 r_{ij}}$
- Expectation value: $\langle\hat{A}\rangle = \int\psi^*\hat{A}\psi\,d\tau$

**Chemical kinetics & thermodynamics**
- Rate law: $v = k[\mathrm{A}]^m[\mathrm{B}]^n$
- Arrhenius equation: $k = A\exp(-E_a/RT)$
- Gibbs free energy: $\Delta G = \Delta H - T\Delta S = -RT\ln K$
- van ’t Hoff: $\frac{d\ln K}{dT} = \frac{\Delta H^\circ}{RT^2}$

**Statistical thermodynamics**
- Canonical partition function: $Q = \sum_i g_i\exp(-\varepsilon_i/k_BT)$
- Helmholtz energy: $A = -k_BT\ln Q$
- Entropy: $S = k_B\ln W + k_BT(\partial\ln Q/\partial T)_V$

**Molecular / applied spectroscopy**
- Photon energy: $E = h\nu = hc/\lambda$
- Beer–Lambert law: $A = \varepsilon cl = -\log_{10}(I/I_0)$
- Selection-rule energy difference (rigid rotor / harmonic oscillator): $\Delta E = h\nu_0(1-2\chi_e(v+1))$ or $E_J = BJ(J+1)$

**Surface & colloid chemistry**
- Langmuir isotherm: $\theta = \frac{Kp}{1+Kp}$
- Gibbs adsorption isotherm: $\Gamma = -\frac{1}{RT}\left(\frac{\partial\gamma}{\partial\ln c}\right)_T$

**Organic reaction mechanisms (transition-state theory)**
- Eyring equation: $k = \frac{k_BT}{h}\exp(-\Delta G^\ddagger/RT)$

## Working equations
These are the working equations that connect the chemistry topics in the original posts (kinetics, thermodynamics, surface processes, industrial operations) to actual chemical-engineering calculations.

**Material and mole balances**
- General mass balance: $\frac{dm}{dt}=\sum\dot{m}_{\text{in}}-\sum\dot{m}_{\text{out}}+R_{\text{gen}}$
- Component mole balance: $\frac{dN_A}{dt}=F_{A,\text{in}}-F_{A,\text{out}}+\int r_A\,dV$
- PFR design equation: $\frac{dF_A}{dV}=r_A$
- CSTR design equation: $V=\frac{F_{A0}X}{-r_A}$

**Energy balances**
- Open-system energy balance:

$$
\frac{dE}{dt}=\dot{Q}-\dot{W}+\sum\dot{m}_{\text{in}}\hat{H}_{\text{in}}-\sum\dot{m}_{\text{out}}\hat{H}_{\text{out}}
$$

- Steady-state enthalpy balance (no shaft work):

$$
\dot{Q}=\sum\dot{n}_{\text{out}}H_{\text{out}}-\sum\dot{n}_{\text{in}}H_{\text{in}}
$$

**Fluid flow and momentum**
- Bernoulli equation: $\frac{P}{\rho}+\frac{v^2}{2}+gz=\text{const}$
- Reynolds number: ${Re}=\frac{\rho vD}{\mu}$
- Ergun equation (packed bed):

$$
\frac{\Delta P}{L}=150\frac{(1-\varepsilon)^2}{\varepsilon^3}\frac{\mu u}{d_p^2}+1.75\frac{1-\varepsilon}{\varepsilon^3}\frac{\rho u^2}{d_p}
$$

**Heat and mass transfer**
- Fourier’s law: $\mathbf{q}=-k\nabla T$
- Newton’s law of cooling: $q=h(T_s-T_\infty)$
- Fick’s first law: $\mathbf{J}_A=-D_{AB}\nabla c_A$
- Film theory flux: $N_A=k_c(c_{A,i}-c_{A,b})$

**Reactor and process relations**
- Arrhenius rate constant: $k=A\exp(-E_a/RT)$
- Conversion–rate relationship (constant density): $-r_A=C_{A0}\frac{dX}{d\tau}$
- Overall heat-transfer coefficient: $\frac{1}{U}=\frac{1}{h_i}+\frac{\Delta x}{k}+\frac{1}{h_o}$

## Natural-product chemistry 
Mostly structural and biosynthetic rather than equation-heavy

**Quantum chemistry / computational chemistry**

Hartree–Fock energy (closed-shell):

$$
E_{\text{HF}} = \sum_i h_{ii} + \frac12\sum_{ij}(2J_{ij}-K_{ij})
$$

$h_{ii}$ = one-electron integrals, $J$ = Coulomb, $K$ = exchange.

**Statistical thermodynamics**
Canonical partition function:

$$
Z = \sum_i g_i\,e^{-\beta E_i},\qquad\beta=1/kT
$$

Helmholtz free energy and entropy:

$$
A=-kT\ln Z,\qquad S=k\ln Z+kT\left(\frac{\partial\ln Z}{\partial T}\right)_V
$$

**Chemical kinetics & thermodynamics**
Arrhenius equation:

$$
k=A e^{-E_a/RT}
$$

Gibbs free energy and equilibrium:

$$
\Delta G^\circ=-RT\ln K,\qquad\Delta G=\Delta H-T\Delta S
$$

Eyring transition-state theory:

$$
k=\frac{k_BT}{h}e^{\Delta S^\ddagger/R}e^{-\Delta H^\ddagger/RT}
$$

**Molecular spectroscopy**
Harmonic-oscillator vibrational energy:

$$
E_v=h\nu\left(v+\frac12\right),\qquad v=0,1,2,\dots
$$

Rigid-rotor rotational energy (linear molecule):

$$
E_J=BJ(J+1),\qquad B=\frac{h}{8\pi^2I}
$$

Beer–Lambert law:

$$
A=\varepsilon cl=-\log_{10}(I/I_0)
$$

**Symmetry & group theory**
Great orthogonality theorem (characters):

$$
\sum_R\chi^{(\Gamma)}(R)^*\chi^{(\Gamma')}(R)=h\,\delta_{\Gamma\Gamma'}
$$

$h$ = order of the group, $\chi$ = character of irreducible representation $\Gamma$.

Reduction of a representation:

$$
n_\Gamma=\frac1h\sum_R\chi(R)\chi^{(\Gamma)}(R)^*
$$

**Coordination / organometallic chemistry**
Crystal-field splitting energy (octahedral):

$$
\Delta_o=10\,Dq
$$

CFSE for $d^n$ configurations is counted in units of $\Delta_o$ (or $\Delta_t$).

18-electron rule (electron count):

$$
\text{VEC}=n_{\text{metal}}+n_{\text{ligand}}+n_{\text{charge}}
$$

(typically 18 for stable organometallics).

**Colour / medicinal chemistry (selected relations)**
HOMO–LUMO gap that sets the colour of conjugated dyes:

$$
\Delta E=E_{\text{LUMO}}-E_{\text{HOMO}}\approx\frac{hc}{\lambda_{\max}}
$$

Hansch QSAR (approximate):

$$
\log(1/C)=a\pi+b\sigma+\dots+k
$$

$\pi$ = hydrophobic parameter, $\sigma$ = Hammett constant.

