# **Hessian matrix**
## Operator chain

$$
f \xrightarrow{\nabla} \nabla f \xrightarrow{D} H_f = J_{\nabla f} = D(\nabla f).
$$

$f$ is the scalar field (potential, energy, score, utility, \ldots). $\nabla f$ is the first-order response field (force, drift, steepest-ascent direction). $H_f = D(\nabla f)$ is the linearization of that response field; its quadratic form measures directional curvature.

$\nabla S$ answers “which most increases?” $H_S$ answers “how does the value of every action change when the position itself changes?” Large positive eigenvalue = rigid direction (small moves cost a lot). Near-zero eigenvalue = flat strategic direction (many nearly equivalent moves). Negative eigenvalue = unstable direction (decreasing along that mode; any small perturbation is amplified by the dynamics).

Thus the Hessian is the local linear operator that converts a first-order tendency into the second-order architecture governing future tendencies. In pure gradient dynamics it is, up to sign, the stability operator of the flow.

## **Notation and formulas**

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


## Quadratic form (the geometrically primary object)

$$
Q(\mathbf{h}) = \mathbf{h}^\top H_f(\mathbf{x})\,\mathbf{h}.
$$

$Q(\mathbf{h}) > 0$ for all $\mathbf{h} \neq \mathbf{0}$ $\iff$ $H_f$ positive definite $\iff$ local minimum.
$Q(\mathbf{h}) < 0$ for all $\mathbf{h} \neq \mathbf{0}$ $\iff$ $H_f$ negative definite $\iff$ local maximum.
Sign of $Q$ depends on direction $\iff$ indefinite Hessian $\iff$ saddle (or higher-order degeneracy).

## Gradient-flow linearization

If the vector field is a pure gradient,

$$
\dot{\mathbf{x}} = F(\mathbf{x}) = -\nabla V(\mathbf{x}),
$$

then the Jacobian of the flow is exactly the negative Hessian of the potential:

$$
J_F = DF = -H_V.
$$

Consequently the eigenvalues of $J_F$ are the negatives of the eigenvalues of $H_V$. Local asymptotic stability of an equilibrium therefore requires $H_V \succ 0$ (positive definite).

## Functional / field-theoretic version

For a scalar functional $\mathcal{E}[M]$ on a configuration space with coordinates $M = (\phi,\pi,r,\ldots)$,

$$
(H_{\mathcal{E}})_{ab} = \frac{\delta^2\mathcal{E}}{\delta M^a\,\delta M^b}.
$$

The off-diagonal blocks

$$
\frac{\delta^2\mathcal{E}}{\delta\phi\,\delta\pi},\quad
\frac{\delta^2\mathcal{E}}{\delta\phi\,\delta r},\quad
\frac{\delta^2\mathcal{E}}{\delta\pi\,\delta r}
$$

are precisely the cross-couplings that describe how a variation in one component alters the first-order response of another. Eigenvectors of $H_{\mathcal{E}}$ are the principal response modes; eigenvalues are the associated stiffnesses (positive) or instabilities (negative).
