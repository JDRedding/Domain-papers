# STANDARD MODEL 
## KEY EQUATIONS AND NOTATION

### Gauge Group

$$
\mathrm{SU}(3)_c \times \mathrm{SU}(2)_L \times \mathrm{U}(1)_Y
$$

### Fields
- $G_\mu^A$ ($A = 1\dots 8$) — gluons ($\mathrm{SU}(3)_c$ adjoint)
- $W_\mu^a$ ($a = 1,2,3$) — weak bosons ($\mathrm{SU}(2)_L$ adjoint)
- $B_\mu$ — hypercharge ($\mathrm{U}(1)_Y$)
- $\Phi$ — Higgs doublet ($\mathrm{SU}(2)_L$, $Y = +1/2$)

### Electroweak Mixing (no physical $W^0$)
Weinberg angle: $\theta_W$

$$
A_\mu = \cos\theta_W\, B_\mu + \sin\theta_W\, W_\mu^3 \qquad \text{(photon)}
$$

$$
Z_\mu = -\sin\theta_W\, B_\mu + \cos\theta_W\, W_\mu^3 \qquad \text{(Z boson)}
$$

Charged $W$ bosons:

$$
W_\mu^+ = \frac{W_\mu^1 - i W_\mu^2}{\sqrt{2}}, \qquad
W_\mu^- = \frac{W_\mu^1 + i W_\mu^2}{\sqrt{2}}
$$

Coupling relation:

$$
e = g\sin\theta_W = g'\cos\theta_W
$$

- $g$ — $\mathrm{SU}(2)_L$ coupling  
- $g'$ — $\mathrm{U}(1)_Y$ coupling  
- $e$ — electric charge

### Higgs Potential and VEV

$$
V(\Phi) = \mu^2\,(\Phi^\dagger\Phi) + \lambda\,(\Phi^\dagger\Phi)^2, \qquad \mu^2 < 0
$$

Vacuum expectation value:

$$
\langle\Phi\rangle = \begin{pmatrix} 0 \\ v/\sqrt{2} \end{pmatrix}, \qquad
v = \sqrt{-\mu^2/\lambda} \approx 246\,\mathrm{GeV}
$$

Physical Higgs mass (spin 0):

$$
m_h = \sqrt{2\lambda}\, v \approx 125\,\mathrm{GeV}/c^2
$$

### Covariant Derivatives

Left-handed fermion doublet $\psi_L$:

$$
D_\mu = \partial_\mu - ig\frac{\sigma^a}{2}W_\mu^a - ig'\frac{Y}{2}B_\mu
$$

($\sigma^a$ = Pauli matrices)

Quarks (color):

$$
D_\mu = \partial_\mu - ig_s\frac{\lambda^A}{2}G_\mu^A
$$

($\lambda^A$ = Gell-Mann matrices, $g_s$ = strong coupling)

### Yukawa Terms (fermion masses)

$$
\mathcal{L}_Y = -y_d\,\overline{Q}_L\Phi d_R - y_u\,\overline{Q}_L\tilde{\Phi}u_R - y_e\,\overline{L}_L\Phi e_R + \mathrm{h.c.}
$$

$$
\tilde{\Phi} = i\sigma^2\Phi^*
$$

After EWSB, fermion mass:

$$
m_f = y_f\frac{v}{\sqrt{2}}
$$

### Particle Content
(12 fermions + 5 gauge bosons + Higgs)

**Fermions** (3 generations)  

- Quarks: $(u,d)$, $(c,s)$, $(t,b)$  
- Leptons: $(e,\nu_e)$, $(\mu,\nu_\mu)$, $(\tau,\nu_\tau)$

**Gauge bosons after mixing**  
photon, $W^+$, $W^-$, $Z$, gluons (8 color states)

**Higgs**: scalar, spin 0
