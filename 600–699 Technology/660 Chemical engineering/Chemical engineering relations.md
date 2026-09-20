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
- (1) reactor mole balances for variable-density gas-phase flow - **RDG reactor equations**
- (2) non-isothermal PFR/CSTR energy balances coupled to $k(T)$ - **RDG non‑isothermal PFR/CSTR**
- (3) a one-page “which partition function / which free energy” map - **RDG partition‑function map** 


## APPENDIX: **Relational translation**

Every equation rewritten into **Φ / ΔΦ / ⟨·⟩ / Γ‑projection** form, with **S‑mode (structure/invariant)**, **I‑mode (interaction/flux)**, and **D‑mode (drift/measurable)** explicitly separated.

```
S-mode : invariant / structural potential
I-mode : interaction / flux operator
D-mode : drift / measurable evolution
Γ_{S→D} : projection from invariant to measurable
Γ_{I→D} : projection from flux to drift
```

---

### 1. Quantum & Computational Chemistry

#### Time‑independent Schrödinger
```
S-mode:
    Ĥ ψ = E ψ
    Φ_E = eigenvalue(Ĥ)

D-mode:
    measurable spectrum = Γ_{S→D}(Φ_E)
```

#### Electronic Hamiltonian (Born–Oppenheimer)
```
S-mode:
    Φ_Hel = -Σ_i (ħ²/2me) ∇²_i
            -Σ_{i,A} Z_A e²/(4π ε0 r_{iA})
            +Σ_{i<j} e²/(4π ε0 r_{ij})
            +E_NN

D-mode:
    measurable energies = Γ_{S→D}(Φ_Hel)
```

#### Expectation value
```
I-mode:
    ⟨Â⟩ = ∫ ψ* Â ψ dτ

D-mode:
    A_meas = Γ_{I→D}(⟨Â⟩)
```

#### Hartree–Fock energy
```
S-mode:
    Φ_HF = Σ_i h_ii + 1/2 Σ_{ij}(2J_ij - K_ij)

D-mode:
    E_HF = Γ_{S→D}(Φ_HF)
```

#### HOMO–LUMO gap
```
S-mode:
    ΔΦ = Φ_LUMO - Φ_HOMO

D-mode:
    ΔE ≈ Γ_{S→D}(ΔΦ) ≈ hc/λ_max
```

---

### 2. Spectroscopy

#### Photon energy
```
S-mode:
    Φ_photon = hν = hc/λ

D-mode:
    E = Γ_{S→D}(Φ_photon)
```

#### Beer–Lambert
```
I-mode:
    A = ε c l = -log10(I/I0)

D-mode:
    absorbance_meas = Γ_{I→D}(A)
```

#### Harmonic oscillator
```
S-mode:
    Φ_v = hν (v + 1/2)

D-mode:
    E_v = Γ_{S→D}(Φ_v)
```

#### Anharmonic spacing
```
S-mode:
    ΔΦ_v = hν0 (1 - 2χ_e (v+1))

D-mode:
    ΔE = Γ_{S→D}(ΔΦ_v)
```

#### Rigid rotor
```
S-mode:
    Φ_J = B J(J+1)
    B = h/(8π² I)

D-mode:
    E_J = Γ_{S→D}(Φ_J)
```

---

### 3. Kinetics & Thermodynamics

#### Empirical rate law
```
I-mode:
    v = k [A]^m [B]^n

D-mode:
    measurable rate = Γ_{I→D}(v)
```

#### Arrhenius
```
S-mode:
    Φ_k = A exp(-Ea / (R T))

D-mode:
    k = Γ_{S→D}(Φ_k)
```

#### Gibbs energy
```
S-mode:
    ΔΦ_G = ΔΦ_H - T ΔΦ_S

D-mode:
    ΔG = Γ_{S→D}(ΔΦ_G)
```

#### Equilibrium
```
S-mode:
    ΔΦ_G° = -R T ln K

D-mode:
    ΔG° = Γ_{S→D}(ΔΦ_G°)
    ΔG = ΔG° + R T ln Q
```

#### van ’t Hoff
```
S-mode:
    ∂ ln K / ∂T = ΔΦ_H° / (R T²)

D-mode:
    measurable slope = Γ_{S→D}(∂ ln K / ∂T)
```

#### Eyring / TST
```
S-mode:
    Φ_k = κ (kB T / h) exp(ΔΦ_S‡/R) exp(-ΔΦ_H‡/(R T))

D-mode:
    k = Γ_{S→D}(Φ_k)
```

---

### 4. Statistical Thermodynamics

#### Canonical partition function
```
S-mode:
    Φ_Q = Σ_i g_i exp(-ε_i / (kB T))

D-mode:
    Q = Γ_{S→D}(Φ_Q)
```

#### Helmholtz energy
```
S-mode:
    Φ_A = -kB T ln Q

D-mode:
    A = Γ_{S→D}(Φ_A)
```

#### Entropy (canonical)
```
S-mode:
    Φ_S = kB ln Q + kB T (∂ ln Q / ∂T)_V

D-mode:
    S = Γ_{S→D}(Φ_S)
```

#### Microcanonical
```
S-mode:
    Φ_Smicro = kB ln W

D-mode:
    S_micro = Γ_{S→D}(Φ_Smicro)
```

---

### 5. Surface & Colloid Chemistry

#### Langmuir isotherm
```
I-mode:
    θ = Kp / (1 + Kp)

D-mode:
    coverage_meas = Γ_{I→D}(θ)
```

#### Gibbs adsorption
```
I-mode:
    Γ = -(1/(R T)) (∂γ / ∂ ln c)_T

D-mode:
    adsorption_meas = Γ_{I→D}(Γ)
```

---

### 6. Symmetry / Group Theory

#### Great orthogonality
```
S-mode:
    Φ_orth = Σ_R χΓ(R)* χΓ'(R) = h δΓΓ'

D-mode:
    orthogonality_meas = Γ_{S→D}(Φ_orth)
```

#### Reduction
```
S-mode:
    Φ_nΓ = (1/h) Σ_R χ(R) χΓ(R)*

D-mode:
    nΓ = Γ_{S→D}(Φ_nΓ)
```

---

### 7. Coordination / Organometallic

#### Crystal-field splitting
```
S-mode:
    ΔΦ_o = 10 Dq

D-mode:
    Δo = Γ_{S→D}(ΔΦ_o)
```

#### Valence electron count
```
S-mode:
    Φ_VEC = n_metal + n_ligand + n_charge

D-mode:
    VEC = Γ_{S→D}(Φ_VEC)
```

#### QSAR (Hansch)
```
I-mode:
    log(1/C) = a π + b σ + ... + k

D-mode:
    activity_meas = Γ_{I→D}(log(1/C))
```

---

### 8. Chemical Engineering Process Equations

#### Mass balance
```
D-mode evolution:
    d m / dt = Σ ṁ_in - Σ ṁ_out + R_gen
```

RDG form:
```
I-mode:
    Φ_flux = Σ ṁ_in - Σ ṁ_out
    Φ_gen  = R_gen

D-mode:
    d m/dt = Γ_{I→D}(Φ_flux + Φ_gen)
```

#### Component mole balance
```
I-mode:
    Φ_A = F_A,in - F_A,out + ∫ r_A dV

D-mode:
    dN_A/dt = Γ_{I→D}(Φ_A)
```

#### PFR
```
D-mode:
    dF_A/dV = r_A
```

RDG:
```
I-mode:
    Φ_rA = r_A

D-mode:
    dF_A/dV = Γ_{I→D}(Φ_rA)
```

#### CSTR
```
D-mode:
    V = F_A0 X / (-r_A)
```

RDG:
```
I-mode:
    Φ_design = F_A0 X / (-r_A)

D-mode:
    V = Γ_{I→D}(Φ_design)
```

#### Conversion–rate
```
I-mode:
    Φ_rate = C_A0 dX/dτ

D-mode:
    -r_A = Γ_{I→D}(Φ_rate)
```

---

### 9. Energy Balances

#### Open system
```
I-mode:
    Φ_E = Q̇ - Ẇ + Σ ṁ_in Ĥ_in - Σ ṁ_out Ĥ_out

D-mode:
    dE/dt = Γ_{I→D}(Φ_E)
```

#### Steady-state enthalpy
```
I-mode:
    Φ_Q = Σ ṅ_out H_out - Σ ṅ_in H_in

D-mode:
    Q̇ = Γ_{I→D}(Φ_Q)
```

#### Overall heat-transfer coefficient
```
S-mode:
    Φ_U = 1/h_i + Δx/k + 1/h_o

D-mode:
    1/U = Γ_{S→D}(Φ_U)
```

---

### 10. Fluid Flow & Momentum

#### Bernoulli
```
S-mode invariant:
    Φ_B = P/ρ + v²/2 + g z

D-mode:
    measurable head = Γ_{S→D}(Φ_B)
```

#### Reynolds number
```
S-mode:
    Φ_Re = ρ v D / μ

D-mode:
    Re = Γ_{S→D}(Φ_Re)
```

#### Ergun
```
I-mode:
    Φ_Ergun = 150 ((1-ε)²/ε³)(μ u/d_p²)
              +1.75 ((1-ε)/ε³)(ρ u²/d_p)

D-mode:
    ΔP/L = Γ_{I→D}(Φ_Ergun)
```

---

### 11. Heat & Mass Transfer

#### Fourier
```
I-mode:
    Φ_q = -k ∇T

D-mode:
    q = Γ_{I→D}(Φ_q)
```

#### Newton cooling
```
I-mode:
    Φ_h = h (Ts - T∞)

D-mode:
    q = Γ_{I→D}(Φ_h)
```

#### Fick
```
I-mode:
    Φ_JA = -D_AB ∇ c_A

D-mode:
    J_A = Γ_{I→D}(Φ_JA)
```

#### Film theory
```
I-mode:
    Φ_NA = k_c (c_A,i - c_A,b)

D-mode:
    N_A = Γ_{I→D}(Φ_NA)
```

---

