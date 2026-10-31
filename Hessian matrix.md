# **Hessian matrix**
**notation and formulas**

For a twice continuously differentiable scalar function $f: \mathbb{R}^n \to \mathbb{R}$, the **Hessian matrix** $H_f$ (also written $\nabla^2 f$ or $D^2 f$) is the $n \times n$ matrix of second-order partial derivatives:

$$
H_f(\mathbf{x}) = \left( \frac{\partial^2 f}{\partial x_i \partial x_j} \right)_{1 \leq i,j \leq n}
$$

or explicitly

$$
H_f(\mathbf{x}) = \begin{pmatrix}
\frac{\partial^2 f}{\partial x_1^2} & \frac{\partial^2 f}{\partial x_1 \partial x_2} & \cdots & \frac{\partial^2 f}{\partial x_1 \partial x_n} \\
\frac{\partial^2 f}{\partial x_2 \partial x_1} & \frac{\partial^2 f}{\partial x_2^2} & \cdots & \frac{\partial^2 f}{\partial x_2 \partial x_n} \\
\vdots & \vdots & \ddots & \vdots \\
\frac{\partial^2 f}{\partial x_n \partial x_1} & \frac{\partial^2 f}{\partial x_n \partial x_2} & \cdots & \frac{\partial^2 f}{\partial x_n^2}
\end{pmatrix}.
$$

Entry-wise:

$$
(H_f)_{ij} = \partial_i \partial_j f = \frac{\partial^2 f}{\partial x_i \partial x_j}.
$$

(Under standard smoothness assumptions the mixed partials are equal, so $H_f$ is symmetric.)

**Special case $n=2$** ( $f(x,y)$ ):

$$
H_f(x,y) = \begin{pmatrix}
f_{xx} & f_{xy} \\
f_{yx} & f_{yy}
\end{pmatrix}
= \begin{pmatrix}
\frac{\partial^2 f}{\partial x^2} & \frac{\partial^2 f}{\partial x \partial y} \\
\frac{\partial^2 f}{\partial y \partial x} & \frac{\partial^2 f}{\partial y^2}
\end{pmatrix}.
$$

**Relation to the gradient**  
The Hessian is the Jacobian matrix of the gradient:

$$
H_f(\mathbf{x}) = J_{\nabla f}(\mathbf{x}) = D(\nabla f)(\mathbf{x}).
$$

**Second-order Taylor expansion**  
Around a point $\mathbf{a}$,

$$
f(\mathbf{a}+\mathbf{h}) = f(\mathbf{a}) + \nabla f(\mathbf{a})^\top \mathbf{h} + \frac12 \mathbf{h}^\top H_f(\mathbf{a}) \mathbf{h} + o(\|\mathbf{h}\|^2).
$$

**Second-derivative test (critical-point classification)**  
At a critical point $\mathbf{c}$ where $\nabla f(\mathbf{c})=\mathbf{0}$:

- If $H_f(\mathbf{c})$ is positive definite (all eigenvalues $>0$), then $\mathbf{c}$ is a local minimum.
- If $H_f(\mathbf{c})$ is negative definite (all eigenvalues $<0$), then $\mathbf{c}$ is a local maximum.
- If $H_f(\mathbf{c})$ is indefinite (both positive and negative eigenvalues), then $\mathbf{c}$ is a saddle point.

For $n=2$, the test can also be stated with the determinant:

- If $\det H_f(\mathbf{c})>0$ and $f_{xx}(\mathbf{c})>0$, local min;
- If $\det H_f(\mathbf{c})>0$ and $f_{xx}(\mathbf{c})<0$, local max;
- If $\det H_f(\mathbf{c})<0$, saddle.
