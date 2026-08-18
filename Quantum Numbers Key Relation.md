**Quantum Numbers Key Relation**

The electric charge $Q$ of any particle is fixed by its weak isospin and weak hypercharge through the formula

$$
Q = T_3 + \frac{Y}{2}
$$

**Notation**  
- $Q$: electric charge (in units of the elementary charge $e$)  
- $T_3$ (or $I_3$): third component of weak isospin  
- $Y$: weak hypercharge  

This single algebraic relation determines every entry that appears on the diagram you saw.

**Gauge group of the Standard Model**

All interactions and quantum numbers arise from the local symmetry group

$$
G_{\text{SM}} = SU(3)_C \times SU(2)_L \times U(1)_Y
$$

- $SU(3)_C$: color (strong force)  
- $SU(2)_L$: weak isospin (acts only on left-handed fermions)  
- $U(1)_Y$: weak hypercharge  

**Covariant derivative (how particles interact)**

For a fermion field $\psi$ the ordinary derivative is replaced by the gauge-covariant derivative

$$
D_\mu = \partial_\mu - ig_s G_\mu^a \frac{\lambda^a}{2} - ig W_\mu^i \frac{\sigma^i}{2} - ig' B_\mu \frac{Y}{2}
$$

**Notation**  
- $g_s, g, g'$: strong, weak and hypercharge coupling constants  
- $G_\mu^a$ ($a=1\dots8$): gluon fields  
- $W_\mu^i$ ($i=1,2,3$): weak-isospin gauge fields  
- $B_\mu$: hypercharge gauge field  
- $\lambda^a$: Gell-Mann matrices (generators of $SU(3)$)  
- $\sigma^i$: Pauli matrices (generators of $SU(2)$)  

After electroweak symmetry breaking the physical photon and $Z$ fields are the orthogonal combinations

$$
A_\mu = \cos\theta_W\, B_\mu + \sin\theta_W\, W_\mu^3, \\
\qquad
Z_\mu = -\sin\theta_W\, B_\mu + \cos\theta_W\, W_\mu^3.
$$

where the weak mixing angle satisfies $\tan\theta_W = g'/g$.

**Field-strength tensors (kinetic terms of the gauge bosons)**

$$
\begin{align*}
G_{\mu\nu}^a &= \partial_\mu G_\nu^a - \partial_\nu G_\mu^a + g_s f^{abc} G_\mu^b G_\nu^c,\\
W_{\mu\nu}^i &= \partial_\mu W_\nu^i - \partial_\nu W_\mu^i + g \varepsilon^{ijk} W_\mu^j W_\nu^k,\\
B_{\mu\nu} &= \partial_\mu B_\nu - \partial_\nu B_\mu.
\end{align*}
$$

The pure-gauge Lagrangian is then

$$
\mathcal{L}_{\text{gauge}} = -\frac14 G_{\mu\nu}^a G^{a\mu\nu} -\frac14 W_{\mu\nu}^i W^{i\mu\nu} -\frac14 B_{\mu\nu} B^{\mu\nu}.
$$

**Higgs sector (origin of masses)**

The Higgs doublet $\Phi$ has hypercharge $Y=1$ and the potential

$$
V(\Phi) = \mu^2 \Phi^\dagger\Phi + \lambda (\Phi^\dagger\Phi)^2, \qquad \mu^2<0.
$$

Its vacuum expectation value is

$$
\langle\Phi\rangle = \frac1{\sqrt2}\begin{pmatrix}0\\v\end{pmatrix},\qquad v=\sqrt{-\mu^2/\lambda}\approx246\,\text{GeV}.
$$

**Yukawa couplings (fermion masses)**

$$
\mathcal{L}_{\text{Yukawa}} = -Y_u^{ij}\bar Q_L^i\tilde\Phi u_R^j - Y_d^{ij}\bar Q_L^i\Phi d_R^j - Y_e^{ij}\bar L_L^i\Phi e_R^j + \text{h.c.}
$$

After symmetry breaking these generate the fermion mass matrices $m_f = Y_f v/\sqrt2$.

**Complete fermion quantum numbers (one generation)**

| Field              | $SU(3)_C$ | $SU(2)_L$ | $Y$ | $T_3$ | $Q=T_3+Y/2$ |
|--------------------|-------------|-------------|-------|---------|---------------|
| $Q_L = \begin{pmatrix}u\d\end{pmatrix}_L$ | 3 | 2 | $+1/6$ | $\pm1/2$ | $+2/3,\,-1/3$ |
| $u_R$            | 3 | 1 | $+2/3$ | 0 | $+2/3$ |
| $d_R$            | 3 | 1 | $-1/3$ | 0 | $-1/3$ |
| $L_L = \begin{pmatrix}\nu\\e\end{pmatrix}_L$ | 1 | 2 | $-1/2$ | $\pm1/2$ | $0,\,-1$ |
| $e_R$            | 1 | 1 | $-1$ | 0 | $-1$ |

(The same pattern repeats for the second and third generations.)



