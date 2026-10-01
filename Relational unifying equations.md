# Relational unifying equation (with types)

The pipeline is

$$
S \xrightarrow{I} D_{\mathrm{any}} \xrightarrow{\mathrm{PED}} Q
$$

with ownership

- $D \colon S \to S$ — dynamical laws acting on structural data  
- $\mathrm{PED} \colon (S,D) \to \mathbb{R},\mathbb{C},\text{operators}$ — extracted observables  
- $Q \colon \mathrm{PED} \to \mathrm{PED}/{\sim}$ — classification or deformation of observables  
- $I$ writes couplings into $S$.  
- $D_{\mathrm{any}}$ is every law on $S$.  
- $\mathrm{PED}$ reads invariants off $(S,D_{\mathrm{any}})$. 

---

### Slot types and variables

#### Structural slot $S$

Geometry, fields, symmetries.

| Name | Symbol |
| --- | --- |
| Manifold | $M$ |
| Triangulation | $\mathcal{T}$ |
| Connection | $A_\mu(x)\in\mathfrak{g}$ |
| Fields | $\phi(x),\;\psi(x),\;T_{\mu\nu}(x),\;J_{q+1}(x)$ |
| Bordism category | $\mathbf{Bord}_d^{\mathrm{or}}$ |
| Cobordism group | $\Omega_{d+1}^H$ |
| Couplings | $g,\;\lambda,\;k$ |
| Effective action field | $\Gamma_k[\Phi]$ (in $S$ when flowed) |

$$
S := \{ M,\mathcal{T},A,\phi,\psi,T_{\mu\nu},J_{q+1},\mathbf{Bord}_d^{\mathrm{or}},\Omega_{d+1}^H,g,\lambda,k,\Gamma_k,\dots \}.
$$

---

#### Interaction slot $I$

How objects in $S$ couple. Type: builds interaction terms from structural data.

**Yang–Mills**

$$
I_{\mathrm{YM}}(A)=\frac{1}{2g^2}\int_M\mathrm{tr}\,F\wedge{*}F,
\qquad
F=dA+A\wedge A.
$$

**Scalar $\phi^4$**

$$
I_{\phi^4}(\phi)=\frac{\lambda}{4!}\int\phi^4(x)\,dx.
$$

**Chern–Simons**

$$
I_{\mathrm{CS}}(A)=\frac{k}{4\pi}\int_M\mathrm{tr}\Bigl(A\wedge dA+\tfrac{2}{3}A\wedge A\wedge A\Bigr).
$$

**Moyal kernel**

$$
(f\star_\theta g)(x)=\Bigl[e^{\frac{i}{2}\theta^{\mu\nu}\partial_\mu^x\partial_\nu^y}f(x)g(y)\Bigr]_{y=x}.
$$

**GFT face kernel (schematic)**

$$
I_{\mathrm{GFT}}(\varphi)=\frac{\lambda}{d+1}\int\prod_{\mathrm{faces}}\varphi(g_i)\,dg_i.
$$

---

#### Dynamics slot $D_{\mathrm{any}}$

All laws on $S$. Tags `_local`, `_flow`, `_quantum`, `_global`, `_constraint` are comments only.

**Local laws**

$$
\begin{aligned}
F_{\mu\nu}&=\partial_\mu A_\nu-\partial_\nu A_\mu+[A_\mu,A_\nu],\\
D_\mu F^{\mu\nu}&=0,\qquad D_\mu=\partial_\mu+[A_\mu,\cdot],\\
\partial_\mu T^{\mu\nu}&=0,\qquad T^\mu{}_\mu=0,\\
\partial_i\partial_j E^{ij}&=\rho,\\
D^s\phi(x)&=C_s\int_{\mathbb{Q}_p^d}\frac{\phi(x)-\phi(y)}{|x-y|_p^{d+s}}\,dy,\\
\delta_h&=2\pi-\sum_{s\ni h}\theta_{s,h},\\
\{Q_\alpha,\bar Q_{\dot\alpha}\}&=2\sigma^\mu_{\alpha\dot\alpha}P_\mu,\qquad
\{Q,Q\}=\{\bar Q,\bar Q\}=0.
\end{aligned}
$$

**Global conservation**

$$
d{\*}J_{q+1}=0,\qquad
Q(\Sigma_{d-q-1})=\int_\Sigma{\*}J.
$$

**Constraints / kernels**

$$
T(z)T(0)=\frac{c/2}{z^4}+\frac{2T(0)}{z^2}+\frac{\partial T(0)}{z}+\cdots,
\qquad
D_{\mathrm{gf}}(A)=0.
$$

**Flows on $S$-data**

$$
\partial_k\Gamma_k[\Phi]=\frac12\mathrm{STr}\Bigl[(\Gamma_k^{(2)}+R_k)^{-1}\partial_k R_k\Bigr],
\qquad
k\frac{dg_k}{dk}=\beta(g_k).
$$

**Quantum operators on $S$**

$$
\begin{aligned}
I_6&=\frac{1}{24\pi^2}\mathrm{tr}\,F^3,\\
\mathcal{A}_4&=\mathrm{Descent}(I_6),\\
k_{\mathrm{eff}}&=k+h^\vee,\\
\partial_\lambda S_\lambda&=\int d^2x\,(T\bar T)_\lambda,\qquad T\bar T=\det T_{\mu\nu}\quad(d=2).
\end{aligned}
$$

$$
D_{\mathrm{any}}\colon S\to S.
$$

---

#### PED slot

Extracted observables.

$$
\begin{aligned}
\langle\mathcal{O}_\Delta(x)\mathcal{O}_\Delta(0)\rangle&=\frac{C}{|x|^{2\Delta}},\\
\langle W(\mathcal{C})\rangle&\sim e^{-\sigma\,\mathrm{Area}(\mathcal{C})},\\
\sigma(H)&\subset\{0\}\cup[m,\infty),\quad m>0,\\
Z(M_{\mathrm{closed}})&\in\mathbb{C},\\
I&=\mathrm{Tr}[(-1)^F e^{-\beta H}\bigr]=n_B-n_F|_{E=0},\\
\mathcal{O}_{\Delta,J}(z)&=\int_0^\infty d\omega\,\omega^{\Delta-1}\,\mathcal{A}(\omega\,\hat q(z)),\\
\omega^2&=\kappa k^{2z}+\cdots.
\end{aligned}
$$

$$
\mathrm{PED}\colon(S,D_{\mathrm{any}})\to\mathbb{R},\;\mathbb{C},\;\text{Hilbert-space operators}.
$$

---

#### Q slot

Maps and labels on PED.

- Continuum limit: a sequence of lattice PED data converges to a continuum theory.  
- Cobordism class: $[Z]\in\mathrm{Hom}(\Omega_{d+1}^H,U(1))$.  
- RG on observables: $\mathrm{PED}\to\mathrm{PED}$.  
- $T\bar T$ label: “this $E_n(R,\lambda)$ is the image of that CFT spectrum.”  
- Phase / duality: $\mathrm{PED}/{\sim}$.

$$
Q\colon\mathrm{PED}\to\mathrm{PED}/{\sim}.
$$

---

