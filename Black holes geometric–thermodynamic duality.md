## Black holes : geometric–thermodynamic duality
This note explains a geometric–thermodynamic duality for black holes built from three simple scaling laws: Schwarzschild radius R_s ∝ $M$, Hawking temperature T ∝ $1/M$, and Bekenstein–Hawking entropy S ∝ M^2. From these follow the thermodynamic identities (TS ∼ $Mc^2$), negative heat capacity (runaway evaporation), holographic area-scaling of entropy, and related timescales (evaporation ∝ $M^3$).

The Schwarzschild radius grows **linearly** with mass, the Hawking temperature falls **inversely** with mass, and the Bekenstein–Hawking entropy grows **quadratically** with mass (because area ∝ M²). Together they encode a geometric–thermodynamic duality: black holes behave like thermodynamic objects whose “microstates” scale with **area**, not volume.

### Three equations interlock

If take the mass $M$ as the loop parameter $t$, then:

- $R_s(M) \sim M$  
- $T(M) \sim M^{-1}$  
- $S(M) \sim M^2$

Plotting these in $\log M, \log R_s, \log T, \log S$ space gives a **three‑branch, cyclic, non‑self‑intersecting curve**. When projected into 3D, it is homeomorphic to a trefoil embedding.

#### 1. Temperature × Entropy gives energy

$$
T S \sim M c^2
$$

up to order‑unity factors.  
This is the black hole version of the thermodynamic identity $E = TS$ for scale‑invariant systems.

#### 2. Area law + inverse temperature → negative heat capacity  

$$
C = \frac{dE}{dT} < 0
$$

Small black holes heat up as they lose mass → runaway evaporation.

#### 3. The “thermodynamic triangle”  
- Geometry: $R_s(M)$  
- Quantum: $T(M)$  
- Information: $S(M)$

Each is a monotonic function of mass but with different exponents (1, −1, 2). This is why black hole thermodynamics is so tightly constrained.

---

## 1. **Schwarzschild Radius** — geometric boundary  

$$
R_s = \frac{2GM}{c^2}
$$

### Key implications  
- Linear scaling: doubling mass doubles horizon radius.  
- Density falls as $M^{-2}$:
  
$$
\rho_{\text{BH}} \sim \frac{3c^6}{32\pi G^3 M^2}
$$
  
  so larger black holes are *less* dense.  
- Horizon area:
  
$$
A = 4\pi R_s^2 = 16\pi \frac{G^2 M^2}{c^4}
$$

This quadratic area scaling is the seed for entropy.

---

## 2. **Hawking Temperature** — quantum leakage  

$$
T = \frac{\hbar c^3}{8\pi G k_B M}
$$

### Key implications  
- $T \propto 1/M$: small black holes are extremely hot; stellar‑mass holes are microkelvin.  
- Combine with $R_s$:  

$$
T \propto \frac{1}{R_s}
$$

  so larger horizons radiate more weakly.  
- Evaporation time (not in your list but tightly coupled):  

$$
t_{\text{evap}} \sim \frac{G^2 M^3}{\hbar c^4}
$$

  cubic scaling → massive holes live absurdly long.

---

## 3. **Bekenstein–Hawking Entropy** — area law  

$$
S = \frac{k_B c^3 A}{4\hbar G}
$$

or 

$$
S = \frac{k_B A}{4\ell_P^2}
$$

### Key implications  
- Entropy ∝ area, not volume → holographic scaling.  
- Using $A \propto M^2$:  

$$
S \propto M^2
$$

- In Planck units:  

$$
S = \frac{k_B}{4} \left(\frac{A}{\ell_P^2}\right)
$$
  
  meaning the horizon contains roughly one “bit” per $4\ell_P^2$.

This is the backbone of the **holographic principle** and modern quantum gravity.

---
