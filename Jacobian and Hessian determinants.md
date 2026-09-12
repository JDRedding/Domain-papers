# Jacobian and Hessian determinant Comparison

| Feature | Jacobian | Hessian |
|---|---|---|
| Domain of $F$ or $f$ | vector-valued $\mathbb{R}^n\to\mathbb{R}^m$ | scalar-valued $\mathbb{R}^n\to\mathbb{R}$ |
| Entries | first partials $\partial f_i/\partial x_j$ | second partials $\partial^2 f/\partial x_i\partial x_j$ |
| Shape | $m\times n$ | $n\times n$ (symmetric) |
| Determinant role | local volume / invertibility | local curvature / second-derivative test |

# JACOBIAN DETERMINANTS

* Type:     first-order partial derivative matrix (n x n)
* Variables: f = (f1, f2, ..., fn) : real-valued C1 functions; 
           x = (x1, x2, ..., xn)

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

# HESSIAN DETERMINANTS

* Type:     second-order partial derivative matrix (n x n)
* Variables: phi = phi(x1,x2,...,xn)   real-valued C2 function

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


