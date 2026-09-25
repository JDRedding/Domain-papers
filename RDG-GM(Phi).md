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

## **1. Purpose of Charts**

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

## **2. Standing Chart (RDG Default)**

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

## **3. Identity Chart**

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

## **4. Opposite Offset**

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

## **5. Pure Negation**

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

## **6. $n$-Shifted Chart**

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

## **7. $n$-Centered Chart**

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

## **8. Scaled Chart**

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

## **9. Folded (Absolute) Chart**

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

## **10. Twist Compatibility**

Twists always act on **w**, never on **n**, never on **z**.

Given a chart $\gamma:W\to Z$:

### **Law A (shift)**  
$$
(\tau_k c^{\mathrm{grade}})(z)
= c^{\mathrm{grade}}(\gamma(w+k)).
$$

### **Law B (character)**  
$$
(\tau_k c^{\mathrm{grade}})(z)
= \chi(k,w)\,c^{\mathrm{grade}}(\gamma(w)).
$$

If $\gamma$ is invertible, pull back through $\gamma^{-1}$.  
If $\gamma$ is non‑invertible (folded chart), twists become multi‑valued or summed.

---

## **11. Recommended Default Pair**

- **Wind chart (native):** $w$  
- **Grade chart (display):** any of 0–5 above  

This keeps the generator on $W$ while allowing flexible presentation on $Z$.

---
