# Quaternion Haar measure
## Geometry + probability
The quaternion Haar measure is the unique (up to scaling) left‑invariant measure on the group of unit quaternions, which is isomorphic to the rotation group, and it provides the natural “uniform” volume form for 3D rotations

### Quaternion picture → Haar measure on $SO(3)$

- **Unit quaternions.** A unit quaternion $Q = S + V$ (scalar part $S$, vector part $V$) lies on the 3-sphere $S^3 \subset \mathbb{R}^4$.
- **Rotation action.** For a pure vector $W$ (zero scalar part), the rotation induced by $Q$ is

$$
QWQ^\*  = (\cos\theta)\,W  + (\sin\theta)\,(N \times W)  + (1 - \cos\theta)\,N(N \cdot W),
$$

  when $Q = \cos(\theta/2) + N\sin(\theta/2)$ with $\|N\| = 1$.
- **Double cover.** $Q$ and $-Q$ induce the same rotation, so $S^3$ is a double cover of $SO(3)$. Uniform measure on $S^3$ pushes forward to Haar measure on $SO(3)$.

Because left (or right) multiplication by a unit quaternion is a rigid rotation of $S^3$, Haar measure on $SO(3)$ is ordinary Lebesgue surface measure on $S^3$, descended by the identification $Q \sim -Q$.

---

### Distribution of the rotation angle $\theta$

Every element of $SO(3)$ is rotation by an angle $\theta$ about some axis $N$. Choosing a rotation uniformly with respect to Haar measure is equivalent to choosing a point uniformly on $S^3$ (modulo $Q \sim -Q$).

In suitable polar coordinates on $S^3$, the volume element separates into:

- **Axis.** A unit vector $N \in S^2$, uniformly distributed on the sphere.
- **Angle.** A scalar $\theta \in [0,\pi]$ with density

$$
p(\theta)  = \frac{2}{\pi}\sin^2\Bigl(\frac{\theta}{2}\Bigr),
\qquad 0 < \theta < \pi.
$$

Equivalently,

$$
p(\theta)= \frac{2}{\pi}\bigl(\sin(\theta/2)\bigr)^2.
$$

Intuition: small angles occupy only a tiny neighborhood of the identity in $SO(3)$, while angles near $\pi$ sit near a whole $\mathbb{RP}^2$ of half-turn rotations. Large angles therefore receive more weight.

---

### Expected rotation angle

$$
\mathbb{E}[\theta]= \int_0^\pi \theta\, p(\theta)\,d\theta= \int_0^\pi \theta\cdot\frac{2}{\pi}\sin^2\Bigl(\frac{\theta}{2}\Bigr)\,d\theta.
$$

Use $\sin^2(\theta/2) = (1 - \cos\theta)/2$:

$$
\mathbb{E}[\theta]= \frac{1}{\pi}\int_0^\pi \theta(1 - \cos\theta)\,d\theta= \frac{1}{\pi}\Biggl(  \int_0^\pi \theta\,d\theta  - \int_0^\pi \theta\cos\theta\,d\theta
\Biggr).
$$

The two integrals are

- $\displaystyle\int_0^\pi \theta\,d\theta = \pi^2/2$,
- $\displaystyle\int_0^\pi \theta\cos\theta\,d\theta = -2$
  (integrate by parts: $\theta\sin\theta + \cos\theta$ evaluated from $0$ to $\pi$).

Hence

$$
\mathbb{E}[\theta]= \frac{1}{\pi}\Bigl(\frac{\pi^2}{2} + 2\Bigr)= \frac{\pi}{2} + \frac{2}{\pi}.
$$

So the mean rotation angle of a Haar-uniform random rotation in 3D is

$$
\boxed{\displaystyle
\mathbb{E}[\theta]= \frac{\pi}{2} + \frac{2}{\pi}
\approx 126.48^\circ.}
$$
