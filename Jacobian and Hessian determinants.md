# Jacobian and Hessian Determinant Comparison

The **Jacobian determinant** measures **first‑order volume distortion** of a vector map, while the **Hessian determinant** measures **second‑order curvature** of a scalar field. They are structurally similar (both are determinants of derivative matrices) but conceptually live in different parts of analysis and geometry.

## 🧩 Relational comparison

### 1. **Jacobian determinant — first‑order geometry**
- Object: derivative of a **vector map** $F:\mathbb{R}^n\to\mathbb{R}^n$  
- Matrix: $J_F = D F$ (first partials)  
- Determinant meaning:  
  - **local volume scaling**  
  - **orientation**  
  - **invertibility test** (inverse function theorem)  
- Relational interpretation:  
  - Lives in the **Interaction** mode of the **Structure** triad  
  - Encodes how the map **pushes forward** infinitesimal regions  
  - Determinant = signed measure of the linearized transformation

### 2. **Hessian determinant — second‑order geometry**
- Object: derivative of the **gradient** of a scalar field $\phi:\mathbb{R}^n\to\mathbb{R}$  
- Matrix: $H_\phi = D^2\phi$ (second partials)  
- Determinant meaning:  
  - **curvature signature**  
  - **classification of critical points**  
  - **convexity test**  
- Relational interpretation:  
  - Lives in the **Dynamics** mode of the **Structure** triad  
  - Encodes how the scalar field bends around a point  
  - Determinant = product of principal curvatures (in 2D: $f_{xx}f_{yy}-f_{xy}^2$)

---

## Comparison

| Feature | Jacobian | Hessian |
|---|---|---|
| Domain of $F$ or $f$ | vector-valued $\mathbb{R}^n\to\mathbb{R}^m$ | scalar-valued $\mathbb{R}^n\to\mathbb{R}$ |
| Entries | first partials $\partial f_i/\partial x_j$ | second partials $\partial^2 f/\partial x_i\partial x_j$ |
| Shape | $m\times n$ | $n\times n$ (symmetric) |
| Determinant role | local volume / invertibility | local curvature / second-derivative test |

### 🧮 Structural comparison (matrix‑level)

| Feature | **Jacobian** | **Hessian** |
|---|---|---|
| Function type | $F:\mathbb{R}^n\to\mathbb{R}^m$ | $\phi:\mathbb{R}^n\to\mathbb{R}$ |
| Matrix entries | $\partial f_i/\partial x_j$ | $\partial^2\phi/\partial x_i\partial x_j$ |
| Symmetry | none | symmetric (Schwarz theorem) |
| Determinant meaning | volume scaling | curvature signature |
| Used for | invertibility, change of variables | optimization, convexity |

## JACOBIAN DETERMINANTS

* Type: first-order partial derivative matrix (n x n)
* Variables: f = (f1, f2, ..., fn) : real-valued C1 functions; x = (x1, x2, ..., xn)

If f1,...,fn are differentiable w.r.t. x1,...,xn then
the Jacobian J_f(x) is the determinant of the matrix of first partials:

```
        | df1/dx1   df1/dx2   ...   df1/dxn |
J_f(x)= | df2/dx1   df2/dx2   ...   df2/dxn |
        |   :         :      ...      :     |
        | dfn/dx1   dfn/dx2   ...   dfn/dxn |
```

### Fundamentals
- det(J) is the local volume scaling factor
- used in change-of-variables formula, implicit/inverse function theorems
- J_f(x) itself is the linear map that best approximates f near x
- If $\det J_F(x_0)\neq 0$, the inverse-function theorem says $F$ is locally invertible near $x_0$.

### **Notation**
Notation: $J_f$, $Df$, or $\frac{\partial(f_1,\dots,f_n)}{\partial(x_1,\dots,x_n)}$.

Let $f = (f_1, f_2, \dots, f_n)$ be a $C^1$ map $\mathbb{R}^n \to \mathbb{R}^n$.  
The Jacobian matrix is

$$
J_f(x) = \begin{pmatrix}
\frac{\partial f_1}{\partial x_1} & \frac{\partial f_1}{\partial x_2} & \cdots & \frac{\partial f_1}{\partial x_n} \\
\frac{\partial f_2}{\partial x_1} & \frac{\partial f_2}{\partial x_2} & \cdots & \frac{\partial f_2}{\partial x_n} \\
\vdots & \vdots & \ddots & \vdots \\
\frac{\partial f_n}{\partial x_1} & \frac{\partial f_n}{\partial x_2} & \cdots & \frac{\partial f_n}{\partial x_n}
\end{pmatrix}
$$

The Jacobian determinant is $\det J_f(x)$.

## HESSIAN DETERMINANTS

* Type: second-order partial derivative matrix (n x n)
* Variables: phi = phi(x1,x2,...,xn), real-valued C2 function

The Jacobian of the gradient (dphi/dx1, ..., dphi/dxn)
is called the Hessian H of phi:

```
      | d2phi/dx1^2     d2phi/dx1 dx2   ...   d2phi/dx1 dxn |
H =   | d2phi/dx2 dx1   d2phi/dx2^2     ...   d2phi/dx2 dxn |
      |      :               :         ...         :        |
      | d2phi/dxn dx1   d2phi/dxn dx2   ...   d2phi/dxn^2   |
```

### Fundamentals
- H is always symmetric (Clairaut / Schwarz theorem)
- eigenvalues of H classify local min / max / saddle
- positive-definite H  =>  local convexity / local minimum
- appears in Newton methods and Taylor expansion of order 2

### **Notation**
Notation: $H_\phi$, $\nabla^2\phi$, or $D^2\phi$.

Let $\phi:\mathbb{R}^n\to\mathbb{R}$ be $C^2$.  
The Hessian matrix is the Jacobian of the gradient $\nabla\phi$:

$$
H_\phi(x) = \begin{pmatrix}
\frac{\partial^2\phi}{\partial x_1^2} & \frac{\partial^2\phi}{\partial x_1\partial x_2} & \cdots & \frac{\partial^2\phi}{\partial x_1\partial x_n} \\
\frac{\partial^2\phi}{\partial x_2\partial x_1} & \frac{\partial^2\phi}{\partial x_2^2} & \cdots & \frac{\partial^2\phi}{\partial x_2\partial x_n} \\
\vdots & \vdots & \ddots & \vdots \\
\frac{\partial^2\phi}{\partial x_n\partial x_1} & \frac{\partial^2\phi}{\partial x_n\partial x_2} & \cdots & \frac{\partial^2\phi}{\partial x_n^2}
\end{pmatrix}
$$

By Schwarz’s theorem the matrix is symmetric: $\frac{\partial^2\phi}{\partial x_i\partial x_j} = \frac{\partial^2\phi}{\partial x_j\partial x_i}$.

Schwarz’s theorem gives $H_f=H_f^\top$. Notations: $H_f$, $\nabla^2 f$, $D^2 f$.

For $n=2$, write $D=\det H_f=f_{xx}f_{yy}-(f_{xy})^2$. At a critical point:
- $D>0$ and $f_{xx}>0$ $\Rightarrow$ local minimum,
- $D>0$ and $f_{xx}<0$ $\Rightarrow$ local maximum,
- $D<0$ $\Rightarrow$ saddle,
- $D=0$ $\Rightarrow$ test inconclusive.

Example. $f(x,y)=x^3+3xy+y^3$

$$
H_f=\begin{pmatrix} 6x & 3 \\ 3 & 6y \end{pmatrix},\qquad
\det H_f=36xy-9.
$$

---

## 🧭 Determinant geometric language

### **Jacobian determinant**

$$
\det J_F(x_0) = \text{signed volume distortion of }F\text{ near }x_0.
$$

If $\det J_F(x_0)\neq 0$, then:
- $F$ is locally invertible  
- the linearization $DF(x_0)$ is nonsingular  
- infinitesimal cubes map to parallelepipeds with volume $|\det J_F|$

### **Hessian determinant**
For $n=2$:

$$
\det H_\phi = \phi_{xx}\phi_{yy} - (\phi_{xy})^2.
$$

At a critical point:
- $\det H>0$, $\phi_{xx}>0$ → local minimum  
- $\det H>0$, $\phi_{xx}<0$ → local maximum  
- $\det H<0$ → saddle  
- $\det H=0$ → inconclusive  

In higher dimensions, $\det H$ is the product of eigenvalues (principal curvatures).

---

## 🧱 Relational notation 

### Jacobian

$$
J_F = D F = \left[\frac{\partial F_i}{\partial x_j}\right]
$$

### Hessian

$$
H_\phi = D^2\phi = \left[\frac{\partial^2\phi}{\partial x_i\partial x_j}\right]
$$

Both are **derivative operators**, but:
- $DF$ is a **first‑order pushforward operator**  
- $D^2\phi$ is a **second‑order curvature operator**

---

## 🧪 Example ($f(x,y)=x^3+3xy+y^3$)

Gradient:

$$
\nabla f = (3x^2+3y,\; 3y^2+3x)
$$

Hessian:

$$
H_f = \begin{pmatrix}
6x & 3 \\
3 & 6y
\end{pmatrix}
$$

Determinant:

$$
\det H_f = 36xy - 9.
$$

This determinant tells the **curvature type** at each point.

---

## Future work

- a **Jacobian–Hessian operator lattice** (Relational‑formatted)  
- a **full ASCII diagram of derivative operators**  
- a **manifold‑placement map for Jacobian/Hessian**  
