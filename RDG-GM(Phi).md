# RDG–GM(Φ): The Grade Machine with Explicit Coefficient Law

## 1. Typed Domains

Natural axis:
    N = {0,1,2,3,...}

Winding axis:
    W = {0,1,2,3,...}

Grade axis:
    Z = {...,-2,-1,0,1,2,...}

Chart:
    z = w - 1
    w = z + 1

## 2. Coefficient Law (Curried Form)

Φ : N → (W → ℂ)

For each natural number n ∈ N,
Φ(n) is a whole-indexed number stream:

    Φ(n) : W → ℂ
    Φ(n)(w) = Φ(n,w)

Define the winding-indexed coefficients:

    c_n^wind(w) = Φ(n,w)

Define the grade-indexed coefficients:

    c_n^grade(z) = Φ(n, z+1)

## 3. Series

Winding form:
    T_n(q) = Σ_{w ≥ 0} Φ(n,w) q^(w-1)

Grade form:
    T_n(q) = Σ_{z ≥ -1} Φ(n,z+1) q^z

These are identical under the chart z = w - 1.

## 4. Twist Operators

Twists act on the winding coordinate w, not on n.

Law A (shift):
    Φ^(k)(n,w) = Φ(n, w + k)

Law B (character weight):
    Φ^(k)(n,w) = χ(k,w) Φ(n,w)

Identity:
    Φ^(0)(n,w) = Φ(n,w)

## 5. Machine Object

The RDG Grade Machine with explicit coefficient law is:

    (n, Φ, {τ_k})

where:
    n     = natural series label
    Φ     = coefficient generator
    τ_k   = twist operators acting on w

All other structures (replication, mirror, pseudo-j, arithmetic encodings)
are optional layers built on top of this backbone.

## APPENDIX: **RDG‑GM Charts**

### **1. Purpose of Charts**

A **chart** is a bijection (or partial map)  

$$
\gamma:W\to Z
$$

that **re‑indexes the same winding stream**  

$$
\Phi(n,\cdot):W\to\mathbb{C}.
$$

Charts do **not** modify the generator $\Phi$.  
Charts do **not** modify twists.  
Charts do **not** modify the machine.

They only change:

- the **displayed grade** $z$,  
- the **exponent of $q$** in the series,  
- the **indexing** of coefficients.

The native axis is always $w\in W$.  
The grade axis $z\in Z$ is a *view* of the same data.

---

### **2. Standing Chart (RDG Default)**

$$
z=w-1,\qquad w=z+1.
$$

Grade coefficients:

$$
c_n^{\mathrm{grade}}(z)=\Phi(n,z+1).
$$

Series:

$$
T_n(q)=\sum_{z\ge -1}\Phi(n,z+1)\,q^z.
$$

This chart aligns:

- $w=0$ ↔ $z=-1$ (pole slot)  
- $w=1$ ↔ $z=0$ (hinge)  
- $w\ge2$ ↔ $z\ge1$ (occupied grades)

---

### **3. Identity Chart**

$$
z=w,\qquad w=z.
$$

$$
c_n^{\mathrm{grade}}(z)=\Phi(n,z).
$$

$$
T_n(q)=\sum_{z\ge0}\Phi(n,z)\,q^z.
$$

Ordinary power series.  
No negative powers.

---

### **4. Opposite Offset**

$$
z=1-w,\qquad w=1-z.
$$

$$
c_n^{\mathrm{grade}}(z)=\Phi(n,1-z).
$$

$$
T_n(q)=\sum_{z\le1}\Phi(n,1-z)\,q^z.
$$

Reverses the stream and centers the constant term at $z=1$.

---

### **5. Pure Negation**

$$
z=-w,\qquad w=-z.
$$

$$
c_n^{\mathrm{grade}}(z)=\Phi(n,-z).
$$

$$
T_n(q)=\sum_{z\le0}\Phi(n,-z)\,q^z.
$$

Laurent series with non‑positive powers only.

---

### **6. $n$-Shifted Chart**

$$
z=w-n,\qquad w=z+n.
$$

$$
c_n^{\mathrm{grade}}(z)=\Phi(n,z+n).
$$

$$
T_n(q)=\sum_{z\ge -n}\Phi(n,z+n)\,q^z.
$$

Each series $T_n$ begins at a different lowest grade.  
Natural when $n$ is a weight or level.

---

### **7. $n$-Centered Chart**

$$
z=w-n-1,\qquad w=z+n+1.
$$

$$
c_n^{\mathrm{grade}}(z)=\Phi(n,z+n+1).
$$

$$
T_n(q)=\sum_{z\ge -n-1}\Phi(n,z+n+1)\,q^z.
$$

Lowest term is always $q^{-n-1}$.

---

### **8. Scaled Chart**

$$
z=kw-m,\qquad k\in\mathbb{Z}_{\ne0},\;m\in\mathbb{Z}.
$$

$$
c_n^{\mathrm{grade}}(z)=
\begin{cases}
\Phi(n,(z+m)/k), & k\mid(z+m),\\
0, & \text{otherwise}.
\end{cases}
$$

Lacunary, even/odd, mod‑$N$, or arithmetic progression series.

---

### **9. Folded (Absolute) Chart**

Non‑invertible.

$$
z=|w-1|.
$$

$$
c_n^{\mathrm{grade}}(z)=
\begin{cases}
\Phi(n,1+z)+\Phi(n,1-z), & z>0,
\Phi(n,1), & z=0.
\end{cases}
$$

Two windings collapse onto one grade.  
Produces a one‑sided generating function from a two‑sided stream.

---

### **10. Twist Compatibility**

Twists always act on **w**, never on **n**, never on **z**.

Given a chart $\gamma:W\to Z$:

#### **Law A (shift)**  
$$
(\tau_k c^{\mathrm{grade}})(z)
= c^{\mathrm{grade}}(\gamma(w+k)).
$$

#### **Law B (character)**  
$$
(\tau_k c^{\mathrm{grade}})(z)
= \chi(k,w)\,c^{\mathrm{grade}}(\gamma(w)).
$$

If $\gamma$ is invertible, pull back through $\gamma^{-1}$.  
If $\gamma$ is non‑invertible (folded chart), twists become multi‑valued or summed.

---

### **11. Recommended Default Pair**

- **Wind chart (native):** $w$  
- **Grade chart (display):** any of 0–5 above  

This keeps the generator on $W$ while allowing flexible presentation on $Z$.

---

## APPENDIX: GM(K), Chart Kernel Module
- chart kernel  
- grade vs winding
  
GM(K) is the **chart kernel**: the typed operator that maps *winding coordinate* $w$ to *display coordinate* $z$. It is the layer that makes charts first‑class objects rather than ad‑hoc index rewrites. GM(K) is the formalization of “grade = view,” not “grade = generator.”

---

### **0. Typed signature**

GM(K) is a typed morphism:

$$
K:\mathbb{W}\to\mathbb{Z}
$$

with the machine:

$$
\mathrm{GM}(K): (n,\Phi,\{\tau_k\}) \mapsto \left[z = K(w)\right]
$$

It is **not** a twist, **not** a generator, **not** a family label.  
It is a *chart operator*.

---

### **1. Purpose inside the GM stack**
- index shift  
- pole slot  

GM(K) enforces the separation:

- **Φ** generates coefficients indexed by **w**  
- **τₖ** acts on **w** (transport, winding, mode shift)  
- **K** maps **w → z** (display coordinate)  
- **series** are emitted in **z**

This prevents the classical collapse:

- “shift the index”  
- “move the pole”  
- “center the weight”  
- “fold the spectrum”  

All of those are **chart operations**, not generator operations.

---

### **2. Kernel types**

GM(K) defines a **typed family** of kernels. Each kernel is a morphism $K$ with a declared type:

#### **2.1 Standing kernel**

$$
K_{\mathrm{std}}(w)=w-1
$$

- Single pole slot at $z=-1$  
- Classical moonshine chart  
- Default for GM(Φ)

#### **2.2 Identity kernel**

$$
K_{\mathrm{id}}(w)=w
$$

- Ordinary power series  
- No pole slot  
- CAS‑friendly

#### **2.3 Negation kernel**

$$
K_{\mathrm{neg}}(w)=-w
$$

- Non‑positive Laurent series  
- Useful for backward spectra

#### **2.4 Shifted / centered kernels**

$$
K_{n}(w)=w-n
$$

- Weight/level‑dependent lowest grade  
- Used for modular forms of weight $n$

#### **2.5 Scaled kernels**
- folded kernel  
- scaled kernel
  
$$
K_{k,m}(w)=kw-m
$$

- lacunary  
- even/odd  
- arithmetic progression  
- spectral thinning

#### **2.6 Folded kernel**

$$
K_{\mathrm{fold}}(w)=\|w-1\|
$$

- one‑sided GF from two‑sided stream  
- used for SID/PED anomaly compression

---

### **3. Kernel algebra**
- kernel inversion
  
GM(K) includes a small algebra of kernels:

#### **3.1 Composition**

$$
K_2\circ K_1:\ w\mapsto K_2(K_1(w))
$$

Example:  
Fold then scale → lacunary one‑sided GF.

#### **3.2 Affine closure**
All kernels are affine maps:

$$
K(w)=aw+b
$$

with $a,b\in\mathbb{Z}$ or $\mathbb{Q}$.

This is the **chart algebra**.  
GM forbids nonlinear kernels because they destroy the typed separation between generator and display.

#### **3.3 Kernel inversion**

If $a\neq 0$:

$$
K^{-1}(z)=\frac{z-b}{a}
$$

Used for:

- comparing two machines under different charts  
- proving identity of coefficient streams  
- normalizing pole slots

---

### **4. Kernel semantics**

GM(K) defines the semantics of charts:

#### **4.1 Grade is a *view***  
Grade $z$ is not a physical coordinate.  
It is a *chart*.

#### **4.2 Winding is the *generator coordinate***  
All dynamics, twists, transport, and SID/PED geometry act on **w**.

#### **4.3 Kernels never modify Φ**  
Changing the chart never recomputes the generator.

#### **4.4 Kernels never apply twists**  
Twists act on **w**, not on **z**.

#### **4.5 Kernels never touch n** 

- winding coordinate  
- display coordinate 

Family label is orthogonal.

---

### **5. Kernel operations in software**
- chart normalization 

GM(K) defines the chart API:

```
series = machine(n, Phi, twists).emit(K, q, truncation)
```

Operations:

- `apply_kernel(K)`  
- `compose_kernel(K1, K2)`  
- `invert_kernel(K)`  
- `normalize_pole(K)`  
- `export_series(K, format)`  

This is the layer that lets you:

- switch charts without touching Φ  
- compare two machines under a common chart  
- test identities by chart normalization  
- export to CAS formats without rewriting indices

---

### **6. Kernel examples in the RDG corpus**

- carry front  
- digit block  


GM(K) already applies to:

- block‑defect spectra  
- carry‑front anomalies  
- Q‑slice discontinuities  
- lacunary SID/PED slices  
- digit‑block expansions of $1/(b^d-1)^2$

These objects have natural **w** coordinates (geometry, combinatorics, or field structure) and arbitrary **z** coordinates (display). GM(K) prevents mixing them.

---

### **7. What GM(K) is *not***  

GM(K) does **not**:
typed separation

- prove modularity  
- enforce moonshine normalization  
- stabilize RDG dynamics  
- define twists  
- define generators  
- define families  

It is purely the **chart kernel**:  
the typed operator that keeps **grade**, **winding**, **label**, and **twist** apart.

---
