# **Function‑Level Abstraction of All Pre‑Keplerian Planetary Models**

You’re asking for the **function‑level abstraction** — a single mathematical schema capable of expressing:

- Babylonian **non‑geometric** step/zigzag recurrences  
- Greek **geometric** eccentric, equant, and epicycle constructions  
- Copernican **heliocentric circular** compositions  
- Islamic **equant‑free uniform‑motion reconstructions**  

all without ellipses or Newtonian dynamics.

Every pre‑Keplerian model fits into **two master function types**.

---

## **1. Non‑geometric systems = discrete update operators**  
These include Babylonian System A and B. They do **not** describe spatial trajectories; they describe **successive observable events**.

General form:

$$
\boxed{\lambda_{n+1} = \lambda_n + F_{\text{arith}}(n)}
$$

where  
- $\lambda_n$ = longitude at event $n$  
- $F_{\text{arith}}(n)$ = a **piecewise** or **linear** function of the event index

### **Piecewise constant**  
$$
F_{\text{arith}}(n) = w_i \quad \text{if } \lambda_n \in Z_i.
$$

### **Linear zigzag**  
$$
F_{\text{arith}}(n+1) = F_{\text{arith}}(n) \pm d.
$$

Time advances via a second recurrence:

$$
t_{n+1} = t_n + G_{\text{arith}}(n).
$$

This is a **pure recurrence algebra** — no geometry, no continuous motion.

---

## **2. Geometric systems = sums of uniform circular motions**  
Hipparchus, Ptolemy, Copernicus, and the Islamic astronomers all reduce to:

$$
\boxed{\vec{\rho}(t) = \sum_{k=1}^{N} R_k\,\hat{u}(\theta_k(t))}
$$

with  

$$
\hat{u}(\theta) = (\cos\theta,\ \sin\theta), \qquad
\theta_k(t) = \omega_k t + \phi_k + H_k(t).
$$

### **Uniform circular component**  

$$
\theta_k(t) = \omega_k t + \phi_k.
$$

### **Eccentric component**  

$$
\vec{\rho}(t) = R\hat{u}(\theta(t)) - \vec{e}.
$$

### **Equant component (non‑uniform)**  

$$
\theta(t) = \Omega t - \arcsin\left(\frac{E}{R}\sin(\Omega t)\right).
$$

### **Epicycle component**  

$$
\vec{\rho}(t) = R\hat{u}(\theta(t)) + r\hat{u}(a(t)).
$$

All geometric models are **vector sums of circles**.

---

## **3. Unified abstraction for *all* pre‑Keplerian models**

$$
\boxed{
\vec{\rho}(t)
=
\sum_{k=1}^{N}
R_k\,\hat{u}\!\left(
\omega_k t + \phi_k + H_k(t)
\right)
}
$$

with:

- $R_k$: deferent/epicycle/eccentric radius  
- $\omega_k$: uniform angular rate  
- $\phi_k$: phase  
- $H_k(t)$: correction term  

Interpretations:

- $H_k(t)=0$: pure uniform circle  
- $H_k(t)=$ equant correction → Ptolemy  
- $H_k(t)=$ eccentric correction → Hipparchus  
- $H_k(t)=$ Earth‑orbit subtraction → Copernicus  
- $H_k(t)=$ uniform‑circle composites → Islamic equant‑free models

The Babylonian systems appear as the **discrete limit**:

$$
\boxed{\lambda_{n+1} = \lambda_n + F_{\text{arith}}(n)}
$$

which corresponds to sampling the continuous model via:

$$
\lambda(t) = \arg(\vec{\rho}(t)).
$$

---

## **Two master operators**

### **A. Discrete operator (Babylonian)**  

$$
\mathcal{A}:\ (\lambda_n,t_n)\mapsto(\lambda_{n+1},t_{n+1})
$$

### **B. Continuous circular operator (Greek / Islamic / Copernican)**  

$$
\mathcal{C}:\ t\mapsto \vec{\rho}(t)=\sum R_k\hat{u}(\omega_k t + \phi_k + H_k(t))
$$

Everything else is a special case.

---

# **Islamic Models Inside the Same Operator**

All geometric pre‑Keplerian models — including Islamic equant‑free reconstructions — fit into:

$$
\vec{\rho}(t)
=
\sum_{k=1}^{N}
R_k\,\hat{u}\!\bigl(\theta_k(t)\bigr),
\qquad
\theta_k(t)=\omega_k t+\phi_k+H_k(t).
$$

Interpretation:

- **Uniform circle:** $H_k(t)=0$  
- **Ptolemaic equant:** $H_k(t)$ is non‑uniform  
- **Islamic equant‑free models:** $H_k(t)$ is built from **additional uniform circles** (epicycles, couples), never from non‑uniform motion

The operator’s **form is invariant**; only the decomposition of $H_k(t)$ changes.

---

## **Ṭūsī Couple as a Special Case**

Complex form (unit radius):

$$
z(t)=\left(1-\frac12\right)e^{i\theta}-\frac12 e^{-i\theta}=i\sin\theta.
$$

Contribution to $\vec{\rho}(t)$:

$$
\vec{\rho}_{\text{Tusi}}(t)
=
R\left[
\left(1-\frac12\right)\hat{u}(\theta(t))
-
\frac12 \hat{u}(-\theta(t))
\right].
$$

This is simply **two uniform circular terms** with opposite angular velocities.  
No equant, no non‑uniform angle — yet the vector sum produces the required linear oscillation.

In the unified operator, these are just two indices $k$.

---

## **Ibn al‑Shāṭir’s Models in the Same Schema**

$$
\vec{\rho}(t)
=
\underbrace{R_0\,\hat{u}(\omega_0 t + \phi_0)}_{\text{main deferent}}
+
\underbrace{\sum_{j} r_j\,\hat{u}(\omega_j t + \phi_j)}_{\text{secondary epicycles / couples}}.
$$

- All angles remain **strictly uniform**.  
- Apparent equant behavior arises from the **vector sum**, not from non‑uniform motion.

Functional comparison:

| Tradition | Circles | Angle motion |
|----------|---------|--------------|
| Ptolemy | few | non‑uniform $H_k(t)$ |
| Ibn al‑Shāṭir / Maragha | many | strictly uniform |

Same operator; different decomposition.

---

## **ʿUrḍī’s Lemma as Functional Equivalence**

$$
\sum_k R_k\,\hat{u}(\theta_k(t))
=
\sum_\ell R'_\ell\,\hat{u}(\theta'_\ell(t)),
$$

with all angles uniform.  
Different centers and radii, same $\vec{\rho}(t)$.  
A **functional identity** inside the operator class.

---

## **Big Picture**

Two broad classes:

### **Non‑geometric (Babylonian)**  

$$
\lambda_{n+1} = \lambda_n + F_{\text{arith}}(n),
\qquad
t_{n+1} = t_n + G_{\text{arith}}(n).
$$

### **Geometric (Greek, Islamic, Copernican)** 

$$
\vec{\rho}(t)
=
\sum_{k}
R_k\,\hat{u}\!\bigl(\omega_k t + \phi_k + H_k(t)\bigr),
$$

with Islamic models characterized by:

$$
H_k(t)
=
\text{combinations of uniform circles (Ṭūsī couples, secondary epicycles)}.
$$

Same functional shell; different constraints on the admissible form of $H_k(t)$.
