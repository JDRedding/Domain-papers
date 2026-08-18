# Hyperbolic geometry
**Hyperbolic geometry** (constant Gaussian curvature $K = -1$) uses the following standard models, metrics, distance formulas, and trigonometric identities. Notation is conventional.

All the formulas listed are exactly the standard toolkit for **constant‑curvature $K=-1$** hyperbolic geometry. Below is a clean, structured notation, correctness, and a few clarifying connections across models.

- They are exactly the ones used in Escher‑style tessellations (Poincaré disk).  
- They are the backbone of PSL(2,ℝ) isometries and modern hyperbolic embeddings in machine learning. 
- They encode the fact that hyperbolic triangles have **no similarity classes** — AAA determines the triangle uniquely.   

Hyperbolic geometry is the unique, complete, simply‑connected 2D Riemannian manifold of constant curvature **$-1$**. The three main models — **Poincaré disk**, **upper half‑plane**, and **hyperboloid** — are isometric, and all metric, distance, and triangle identities match the canonical forms used in modern texts. These are the core equations and the standard associated notation for hyperbolic geometry (especially the Poincaré disk, which matches the visual style of the Escher-type tessellation).
 
### Models and metrics

**Poincaré disk model**  
The open unit disk $\mathbb{D} = \{ z \in \mathbb{C} : |z| < 1 \}$ equipped with the Riemannian metric

$$
ds^2 = \frac{4\,|dz|^2}{(1 - |z|^2)^2}.
$$

In real coordinates $z = x + iy$,

$$
ds^2 = \frac{4(dx^2 + dy^2)}{(1 - x^2 - y^2)^2}.
$$

**Poincaré upper half-plane model**  

$\mathbb{H} = \{ z = x + iy : y > 0 \}$ with metric

$$
ds^2 = \frac{dx^2 + dy^2}{y^2}.
$$

### Distance formulas

**Poincaré disk**  

$$
\mathbb{D}=\{z\in\mathbb{C}:|z|<1\},\qquad 
ds^2=\frac{4\,|dz|^2}{(1-|z|^2)^2}.
$$

This matches the standard conformal metric. Geodesics are diameters or circle arcs orthogonal to the boundary.   

For points $z,w \in \mathbb{D}$,

$$
d(z,w) = 2\,{artanh}\left|\frac{z-w}{1-\overline{z}w}\right| = {arcosh}\left(1 + \frac{2|z-w|^2}{(1-|z|^2)(1-|w|^2)}\right).
$$

Equivalently,

$$
\tanh\frac{d(z,w)}{2} = \left|\frac{z-w}{1-\overline{z}w}\right|.
$$

## 🌀 Models and metrics (constant curvature $K=-1$)

### **Upper half‑plane model**  
 
$$
d(z,w) = {arcosh}\left(1 + \frac{|z-w|^2}{2\,{Im}(z) {Im}(w)}\right).
$$

$$
\mathbb{H}=\{x+iy:y>0\},\qquad 
ds^2=\frac{dx^2+dy^2}{y^2}.
$$

Geodesics are vertical lines and semicircles centered on the real axis.
 
$$
d(z,w)={arcosh}\!\left(1+\frac{|z-w|^2}{2\,{Im}(z) {Im}(w)}\right).
$$

Matches the canonical PSL(2,ℝ)‑invariant distance.  

### **Disk model** 

$$
d(z,w)={arcosh}\!\left(1+\frac{2|z-w|^2}{(1-|z|^2)(1-|w|^2)}\right),
$$

$$
\tanh\frac{d(z,w)}{2}=\left|\frac{z-w}{1-\overline{z}w}\right|.
$$

This is exactly the standard arcosh form.  

**Hyperboloid model**  
The sheet $\{ (x,y,t) \in \mathbb{R}^{2,1} : x^2 + y^2 - t^2 = -1,\ t > 0 \}$ of the two-sheeted hyperboloid in Minkowski space, with the induced Riemannian metric from the ambient Lorentzian metric $dx^2 + dy^2 - dt^2$. If $u,v$ are points on the hyperboloid, then

$$
\cosh d(u,v) = -\langle u,v\rangle_{\text{Minkowski}}.
$$

$$
x^2+y^2-t^2=-1,\quad t>0,
$$

with induced metric from Minkowski space. This model gives the cleanest distance formula via Lorentzian inner product.

This is the defining relation for the hyperboloid model.

## 🔺 Hyperbolic triangle trigonometry
Hyperbolic trigonometry (triangle with sides $a,b,c$ and opposite angles $A,B,C$)

**Law of cosines**  

$$
\cosh c = \cosh a\cosh b - \sinh a\sinh b\cos C,
$$

$$
\cos C = -\cos A\cos B + \sin A\sin B\cosh c.
$$

$$
\cosh c=\cosh a\cosh b-\sinh a\sinh b\cos C.
$$

**Law of sines**  

$$
\frac{\sinh a}{\sin A} = \frac{\sinh b}{\sin B} = \frac{\sinh c}{\sin C}.
$$

$$
\frac{\sinh a}{\sin A}=\frac{\sinh b}{\sin B}=\frac{\sinh c}{\sin C}.
$$

**Right triangle** ($C = \pi/2$)  

$$
\cosh c = \cosh a\cosh b,\qquad
\sinh a = \sinh c\sin A,\qquad
\tanh a = \tanh c\cos B.
$$

### Common hyperbolic functions (used throughout)

$$
\sinh x = \frac{e^x - e^{-x}}{2},\qquad
\cosh x = \frac{e^x + e^{-x}}{2},\qquad
\tanh x = \frac{\sinh x}{\cosh x},
$$

$$
{arsinh} x = \ln\bigl(x + \sqrt{x^2+1}\bigr),\qquad
{arcosh} x = \ln\bigl(x + \sqrt{x^2-1}\bigr)\ (x\ge 1).
$$

Definitions of $\sinh$, $\cosh$, $\tanh$, ${arsinh}$, and ${arcosh}$ match the standard analytic definitions used in all hyperbolic geometry formulas. 


## 📐 Area and angle defect

For curvature $K=-1$, the area of a geodesic triangle is:

$$
{Area}=\pi-(A+B+C).
$$

This is the classical **angular defect theorem**, confirmed in multiple sources. 

More generally, for any region $\Omega$,

$$
{Area}(\Omega)=\int_\Omega dA,
$$

since $K=-1$ makes the curvature term $-K\,dA=dA$.

More generally, the Gaussian curvature form yields

$$
{Area}(\Omega) = -\int_\Omega K\,dA = \int_\Omega dA
$$

when $K\equiv -1$.

$$
\cosh c=\cosh a\cosh b,\qquad 
\sinh a=\sinh c\sin A,\qquad 
\tanh a=\tanh c\cos B.
$$

These are exactly the standard right‑triangle relations.

---

