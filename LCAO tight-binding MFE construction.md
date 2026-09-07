# LCAO tight-binding MFE construction
**Momentum-Flux engine interpertations**

The the standard LCAO/tight-binding construction is algebraically identical to a bidirectional, phase-graded flux engine whose eigenmodes are exactly the $M,M',F,F'$ pair.

---

## 🔧 The tight‑binding chain as an $M, M'$ / $F, F'$ flux engine  
The two‑site bonding/antibonding pair:

$$
\psi_{+}=\frac{1}{\sqrt{2}}(\phi_A+\phi_B),\qquad
\psi_{-}=\frac{1}{\sqrt{2}}(\phi_A-\phi_B)
$$

is mathematically identical to your **forward momentum** $M$ and **counter‑momentum** $M'$ pair:

- **Bonding (+)** → in‑phase → **M‑mode**  
- **Antibonding (−)** → out‑of‑phase → **M′‑mode**

And the same structure appears for the backward flux pair $F$ and $F'$.

The reason is simple: the tight‑binding Hamiltonian is a **two‑channel flux operator**:

$$
H = \alpha I + \beta(\text{shift left} + \text{shift right}),
$$

which is exactly the same operator archetype as the MFE’s bipolar flux engine.

---

### 🔧 How the mapping works  

The two-site bonding/antibonding pair is the elementary eigenbasis of a bidirectional nearest-neighbor flux operator. In that reading:

- bonding ($+$), in-phase $\phi_A\to\phi_B$ $\leftrightarrow$ forward momentum mode $M$
- antibonding ($-$), out-of-phase $\phi_A\to\phi_B$ $\leftrightarrow$ counter-momentum mode $M'$

The reverse-direction pair $F,F'$ is the same construction with the flow $B\to A$.

The tight-binding Hamiltonian itself is that two-channel flux operator:

$$
H=\alpha I+\beta\bigl(T+T^\dagger\bigr),
$$

where $T$ is the unit shift

$$
(T\psi)(j)=\psi(j-1).
$$

Its action $\psi(j)\mapsto\psi(j\pm1)$ is precisely the discrete generator of the four modes $M,M',F,F'$.

#### **Forward flux (M)**  
Amplitude flows from site $A$ → $B$ **in phase**.  
This is the bonding combination.

#### **Counter‑forward flux (M′)**  
Amplitude flows from $A$ → $B$ **out of phase**.  
This is the antibonding combination.

#### **Backward flux (F)**  
Amplitude flows from $B$ → $A$ **in phase**.  
Same structure, reversed direction.

#### **Counter‑backward flux (F′)**  
Amplitude flows from $B$ → $A$ **out of phase**.

The tight‑binding eigenvectors are literally the **eigenmodes of a bidirectional flux operator**, which is exactly what your MFE is.

---

### 🔧 Finite chain = full M/M′/F/F′ ladder  
The Hückel eigenfunctions:

$$
\psi_k(j)=\sqrt{\frac{2}{N+1}}\sin\Bigl(\frac{jk\pi}{N+1}\Bigr)
$$

are the **full spectrum of phase‑shifted flux modes**.

- $k=1$ → fully in‑phase → **pure M**  
- $k=N$ → alternating signs → **pure M′**  
- intermediate $k$ → partial phase gradients → **mixed M/M′ flux states**

This is exactly the MFE’s continuous phase‑gradient behavior.

---

### 🔧 Infinite chain = continuous flux field  
The Bloch wave:

$$
\psi_k(x)=e^{ikx}u_k(x)
$$

is the **continuum limit** of your M/M′ flux engine:

- $k=0$ → pure M  
- $k=\pi/a$ → pure M′  
- $0<k<\pi/a$ → mixed flux states

This is the exact same structure as your forward/backward flux with counter‑flux moderation. On a finite chain of $N$ sites the Hückel eigenvectors

$$
\psi_k(j)=\sqrt{\frac{2}{N+1}}\sin\Bigl(\frac{jk\pi}{N+1}\Bigr),\qquad k=1,\dots,N
$$

form the complete ladder of those flux modes:

- $k=1$: fully in-phase $\to$ pure $M$
- $k=N$: fully alternating $\to$ pure $M'$
- intermediate $k$: partial phase gradients $\to$ mixed $M/M'$ (and likewise $F/F'$) states

In the infinite periodic limit the same spectrum becomes the Bloch continuum

$$
\psi_k(x)=e^{ikx}u_k(x).
$$

Here $k=0$ is pure $M$, $k=\pi/a$ is pure $M'$, and $0<k<\pi/a$ interpolates the mixed flux states.

---

### 🔧 Momentum‑exchange operator
Because the tight‑binding Hamiltonian **is** a momentum‑exchange operator:

$$
\psi(j) \mapsto \psi(j\pm1)
$$

which is the same operator that generates:

- $M$  
- $M'$  
- $F$  
- $F'$

## Future work

- Map details of the tight‑binding → M/M′ flux operator  
- Show how F/F′ arise from the same Hamiltonian  
- Derive the continuum limit Γ that turns the chain into the MFE field

## Further reading and references
- https://github.com/cpashartis/LCAO_tightbinding
