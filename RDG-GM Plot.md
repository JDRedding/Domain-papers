## RDG-GM v 1
### 1. Free‑grade law (top panel)

chose:

$$
c(w) =
e^{-0.15w}\cos(0.8w)
+
0.1\cdot\mathbf{1}_{w=0},
\qquad n=5,
$$

with the chart

$$
z = w - 1.
$$

So:

- **w‑axis:** $0,1,2,\dots$ (rest‑first transport)  
- **z‑axis:** $-1,0,1,2,\dots$ (signed grade)  
- **c(w):** damped cosine with a small bump at $w=0$.

Top panel is exactly:

$$
T_5(q) =
\sum_{w\ge 0} c(w)\,q^{w-1} =
\sum_{z\ge -1} c(z+1)\,q^{z}.
$$

plotting $\Re c(z)$ against the RDG grade axis.

---

### 2. Twist A — relabel winding (middle panel)

Law A:

$$
c^{(3)}(w) = c(w+3),
$$

with the same chart $z = w - 1$.

So applied:

$$
\tau_3:\quad T_5 \mapsto T_5^{(3)},
$$

where:

$$
T_5^{(3)}(q) =
\sum_{w\ge 0} c^{(3)}(w)\,q^{w-1} =
\sum_{w\ge 0} c(w+3)\,q^{w-1}.
$$

This is pure **transport**:  slid the coefficient pattern three steps along the w‑axis, but  did **not** change:

- $n$  
- the chart $z = w - 1$  
- the backbone

Middle panel is exactly **Twist A** definition in action.

---

### 3. Twist B — character‑weight (bottom panel)

Law B:

$$
c^{(\chi)}(w) =
\chi(w)\,c(w),
\qquad
\chi(w)=\cos\left(\frac{\pi w}{3}\right).
$$

Same chart, same backbone, same $n$.

So:

$$
T_5^{(\chi)}(q) =
\sum_{w\ge 0} \chi(w)c(w)\,q^{w-1}.
$$

wrapped the free‑grade law in a **w‑dependent phase/weight**, without touching:

- the grade axis  
- the modulus  
- the vacuum/hinge structure

Bottom panel is exactly **Twist B** definition.

---

### 4. What this proves about RDG‑GM

demonstrated, visually:

- The backbone $(n,z,w)$ stays fixed.  
- The chart $z = w - 1$ stays fixed.  
- Twists $\tau_k$ act **only** on the coefficient law $c_n(w)$.  
- Law A = transport.  
- Law B = character weighting.  
- The grade machine is fully functional with a simple free‑grade law.

have:

$$
(n,z,w) = (\text{level},\text{grade},\text{winding}),
$$

and a working example of:

$$
c:\mathbb{N}\times W\to\mathbb{C}
$$

with twists.
