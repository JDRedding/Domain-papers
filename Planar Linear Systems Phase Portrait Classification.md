# Planar Linear Systems Phase Portrait Classification

## Abstract

The qualitative behavior of the flow of the linear dynamical system $\mathbf{x}' = A\mathbf{x}$ in $\mathbb{R}^2$, where $A$ is a constant real $2\times 2$ matrix, is completely determined by the eigenvalues of $A$. These eigenvalues are the roots of the characteristic equation $\lambda^2 - ({tr} A)\lambda + \det A = 0$. Writing $\tau = {tr} A$, $\Delta = \det A$, and $D = \tau^2 - 4\Delta$, the possible phase portraits fall into exactly nine topological types according to the signs of $\tau$, $\Delta$, and $D$. This paper presents the exhaustive classification, a canonical $3\times 3$ chart of the portraits, detailed descriptions of each case, an illustrative example of a stable spiral, and the associated trace-determinant bifurcation diagram.

## 1. Introduction and Preliminaries

Consider the linear system

$$
\mathbf{x}' = A\mathbf{x}, \qquad \mathbf{x}(t)\in\mathbb{R}^2,
$$

where $A$ is a constant real $2\times 2$ matrix. The origin is always an equilibrium. The qualitative dynamics near the origin (and, by linearity, throughout the plane) are governed by the eigenvalues of $A$, which satisfy the characteristic polynomial

$$
\lambda^2 - \tau\lambda + \Delta = 0,
$$

where $\tau = {tr} A$ and $\Delta = \det A$. The discriminant of this quadratic is

$$
D = \tau^2 - 4\Delta.
$$

The roots $\lambda_1,\lambda_2$ (counted with multiplicity) determine the form of the general solution via the matrix exponential, and hence the geometry of the trajectories. The nine possible phase portraits are completely classified by the signs of $\tau$, $\Delta$, and $D$.

## 2. The Canonical $3\times 3$ Classification Chart

The nine portraits may be arranged in the following canonical layout, matching the visual organization of the source material:

| Stable node<br>$\lambda_1 < \lambda_2 < 0$ | Unstable node<br>$0 < \lambda_1 < \lambda_2$ | Saddle<br>$\lambda_1 < 0 < \lambda_2$ |
|---|---|---|
| Stable spiral<br>$\lambda = \alpha \pm i\beta$, $\alpha < 0$ | Unstable spiral<br>$\lambda = \alpha \pm i\beta$, $\alpha > 0$ | Center<br>$\lambda = \pm i\beta$ |
| Star node<br>$A = \lambda I$, $\lambda < 0$ | Degenerate node<br>$\lambda_1 = \lambda_2$, $A \neq \lambda I$ | Line of fixed points<br>$\lambda_1 = 0$, $\lambda_2 < 0$ |

(The same layout appears, with animated trajectories, in the video attached to the original post that motivated this compilation.)

## 3. Classification by the Signs of $\tau$, $\Delta$, and $D$

- If $D > 0$ (two distinct real eigenvalues $\lambda_1, \lambda_2$):
  - $\Delta > 0$ and $\tau < 0$ $\implies$ stable node ($\lambda_1 < \lambda_2 < 0$);
  - $\Delta > 0$ and $\tau > 0$ $\implies$ unstable node ($0 < \lambda_1 < \lambda_2$);
  - $\Delta < 0$ $\implies$ saddle ($\lambda_1 < 0 < \lambda_2$).

- If $D = 0$ (repeated real eigenvalue $\lambda = \tau/2$):
  - $A = \lambda I$ $\implies$ star node;
  - $A \neq \lambda I$ $\implies$ degenerate (improper) node.

- If $D < 0$ (complex conjugate eigenvalues $\lambda = \alpha \pm i\beta$):
  - $\tau < 0$ $\implies$ stable spiral ($\alpha < 0$);
  - $\tau > 0$ $\implies$ unstable spiral ($\alpha > 0$);
  - $\tau = 0$ $\implies$ center ($\lambda = \pm i\beta$).

(The remaining “line of fixed points” occurs when one eigenvalue is zero and the other is negative.)

## 4. Detailed Case-by-Case Description

**Stable node.**  
The eigenvalues are real, distinct, and negative. Equivalently, $D > 0$, $\Delta > 0$, and $\tau < 0$. All trajectories tend to the origin as $t \to \infty$, approaching the origin asymptotically along the eigendirection corresponding to the eigenvalue of smaller absolute value. The origin is asymptotically stable.

**Unstable node.**  
The eigenvalues are real, distinct, and positive. Equivalently, $D > 0$, $\Delta > 0$, and $\tau > 0$. All trajectories leave any neighborhood of the origin as $t \to \infty$. The origin is unstable.

**Saddle.**  
The eigenvalues are real and of opposite sign. Equivalently, $D > 0$ and $\Delta < 0$. There exists a one-dimensional stable manifold along which solutions approach the origin and a one-dimensional unstable manifold along which solutions depart. The origin is unstable, and the phase portrait is topologically equivalent to that of a hyperbolic saddle.

**Stable spiral.**  
The eigenvalues are complex conjugates with negative real part. Equivalently, $D < 0$ and $\tau < 0$. Trajectories spiral into the origin as $t \to \infty$. The origin is asymptotically stable.  
(The concrete example given in the source post has $\tau = -1$ and $\Delta \approx 2.65$. Then

$$
D = 1 - 4 \cdot 2.65 = -9.6 < 0,
$$

so the eigenvalues are

$$
\lambda = \frac{-1 \pm \sqrt{-9.6}}{2} = -0.5 \pm 1.55\,i.
$$)

**Unstable spiral.**  
The eigenvalues are complex conjugates with positive real part. Equivalently, $D < 0$ and $\tau > 0$. Trajectories spiral away from the origin as $t \to \infty$. The origin is unstable.

**Center.**  
The eigenvalues are purely imaginary and nonzero. Equivalently, $D < 0$ and $\tau = 0$. Every trajectory is a closed orbit surrounding the origin. The origin is Lyapunov stable but not asymptotically stable.

**Star node.**  
There is a repeated real eigenvalue $\lambda \neq 0$ and $A$ is a scalar multiple of the identity. Equivalently, $D = 0$ and $A = \lambda I$. When $\lambda < 0$, trajectories approach the origin along straight rays and the origin is asymptotically stable (stable star). When $\lambda > 0$, trajectories depart along straight rays and the origin is unstable (unstable star).

**Degenerate node.**  
There is a repeated real eigenvalue $\lambda \neq 0$ but $A$ is not a scalar multiple of the identity. Equivalently, $D = 0$ and $A \neq \lambda I$. There is a single independent eigenvector. All trajectories are tangent to this eigendirection as they approach or leave the origin. The origin is asymptotically stable when $\lambda < 0$ and unstable when $\lambda > 0$.

**Line of equilibria.**  
One eigenvalue is zero and the other is negative. Equivalently, $\Delta = 0$ and $\tau < 0$. The eigenspace belonging to the zero eigenvalue consists entirely of equilibria. Trajectories approach this line of fixed points exponentially in the transverse direction. The set of equilibria is neutrally stable in the tangential direction and attracting transversely.

## 5. The Trace-Determinant Plane

All nine are completely determined by the single pair of numbers $(\tau, \Delta)$. Plotting these pairs in the trace-determinant plane yields the classic bifurcation diagram whose boundaries are the parabola $D = 0$ (i.e., $\Delta = \tau^2/4$) and the axes $\tau = 0$, $\Delta = 0$. Crossing any of those curves changes the topological type of the phase portrait. The asymptotically stable cases occupy the open region $\tau < 0$, $\Delta > 0$.

## 6. Exhaustiveness

These nine cases exhaust all possibilities for the phase portrait of a two-dimensional linear system. The first eight correspond to invertible matrices; the ninth arises precisely when $A$ is singular and possesses a negative eigenvalue. Every invertible $2\times 2$ matrix falls into exactly one of the first eight cases.

## 7. Conclusion

The classification of the phase portraits of planar linear systems by the invariants $\tau$, $\Delta$, and $D$ is classical and exhaustive. It provides both a complete geometric catalogue and a practical computational criterion: once the trace and determinant of $A$ are known, the qualitative behavior of every trajectory is determined without further computation of the fundamental matrix. The same invariants govern the local phase portrait of a nonlinear planar system near a hyperbolic equilibrium via linearization.

(Note: the phase portraits above were generated for representative matrices realizing each case, including the exact numerical example $\tau = -1$, $\Delta = 2.65$ for the stable spiral.)
