# Equilibria via linearization
Mathematical classification

The phase portraits in continuous dynamical systems show how eigenvalues of the linearized Jacobian classify equilibria into nodes, saddles, foci, and saddle-foci that dictate whether trajectories repel, attract, spiral, or diverge. The eight 2D flow patterns: repelling/attracting nodes with radial arrows, saddle nodes with crossing hyperbolas, spiraling foci, and saddle-foci that blend unstable directions with rotation around colored fixed points.

The same eigenvalue geometry governs stability decisions across neural network loss surfaces, population dynamics, robot controllers, and fluid flows, revealing universal rules for whether systems settle, oscillate, or diverge. These eigenvalue criteria are exactly the geometric classification illustrated in the phase portraits.

Consider an autonomous continuous-time dynamical system

$$
\dot{\mathbf{x}} = \mathbf{f}(\mathbf{x}), \qquad \mathbf{x} \in \mathbb{R}^n,
$$

where \(\mathbf{f}:\mathbb{R}^n\to\mathbb{R}^n\) is smooth. An equilibrium (fixed point) \(\mathbf{x}^*\) satisfies

$$
\mathbf{f}(\mathbf{x}^*) = \mathbf{0}.
$$

The local behaviour of trajectories near $\mathbf{x}^*$ is completely determined (when the equilibrium is hyperbolic) by the *Jacobian matrix* of the vector field evaluated at the equilibrium:

$$
A = D\mathbf{f}(\mathbf{x}^) = \Bigl(\tfrac{\partial f_i}{\partial x_j}(\mathbf{x}^)\Bigr)_{1\le i,j\le n}.
$$

The eigenvalues $\lambda\in\mathbb{C}$ of $A$ are the roots of the characteristic polynomial

$$
\det(A-\lambda I)=0.
$$

Two-dimensional case (\(n=2\))

Let the eigenvalues of \(A\) be \(\lambda_1,\lambda_2\).

Node (source or sink)**  
  Both eigenvalues real and of the same sign:

$$
  \lambda_1,\lambda_2\in\mathbb{R},\qquad \lambda_1\lambda_2>0.
$$

  $\lambda_1>0$, $\lambda_2>0$: repelling node (source)  
  $\lambda_10$: repelling focus  
  $\alpha<0$: attracting focus

(When $\alpha=0$ one obtains a linear centre, which is non-hyperbolic and requires higher-order terms.)

Higher-dimensional / mixed case

Saddle-focus**  
  Combination of a real eigenvalue and a complex-conjugate pair of opposite stability type. Typical in \(\mathbb{R}^3\):

$$
  \lambda_1\in\mathbb{R},\qquad \lambda_{2,3}=\alpha\pm i\beta
$$

  with

$$
  \{sign}(\lambda_1)\neq\{sign}(\alpha)
$$

  (and \(\beta\neq 0\)).  
  Trajectories approach (or leave) along the real eigendirection while spiralling in the complementary plane.

Hyperbolicity condition

An equilibrium is called hyperbolic when

$$
\{Re}(\lambda)\neq 0\quad\text{for every eigenvalue }\lambda\text{ of }A.
$$

In that case the Hartman–Grobman theorem guarantees that the nonlinear flow is topologically equivalent to the linear flow $\dot{\mathbf{y}}=A\mathbf{y}$ in a neighbourhood of $\mathbf{x}^*$.

