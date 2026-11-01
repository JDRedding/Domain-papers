# Normalized sums
**Geometric meaning of normalization**

$$
S = \frac{y^{+} + y^{-} + y^{0}}{\| y^{+} + y^{-} + y^{0} \|}
$$

**Associated notation**
- $S$ — normalized result (unit quantity)
- $y^{+}$ — positive component
- $y^{-}$ — negative component
- $y^{0}$ — zero/neutral component
- $\| \cdot \|$ — Euclidean norm

Normalization takes any nonzero vector and scales it so that its length becomes exactly 1 while leaving its direction unchanged. Geometrically this is radial projection onto the unit sphere (or unit circle in 2D, or the two points $\{\pm 1\}$ in 1D).

- All vectors that point the same way, regardless of how long they are, land on the same point on the unit sphere.
- Magnitude (how strong or large the quantity is) is discarded; only direction (the relative balance of components) is kept.
- The set of all possible normalized results is the unit sphere of the appropriate dimension.

**Equivalent form**

$$
\mathbf{v} = y^{+} + y^{-} + y^{0}, \qquad
S = \frac{\mathbf{v}}{\|\mathbf{v}\|} \quad (\mathbf{v} \neq \mathbf{0})
$$

The formula is the standard unit-vector normalization:

$$
S = \frac{\mathbf{v}}{\|\mathbf{v}\|_2} \quad (\mathbf{v} \neq \mathbf{0}).
$$

**Norm definition** (when the terms are real numbers or vector components)

$$
\|\mathbf{v}\|_2 = \sqrt{(y^{+})^2 + (y^{-})^2 + (y^{0})^2}.
$$

**Properties expressed mathematically**

$$
\|S\|_2 = 1, \qquad S \parallel \mathbf{v}.
$$

The operation is undefined (or conventionally returns the zero vector) when

$$
\| y^{+} + y^{-} + y^{0} \| = 0.
$$

---

**Triadic (component-preserving) normalization**

$$
\mathbf{Y} =
\begin{bmatrix}
y^{+} \\
y^{-} \\
y^{0}
\end{bmatrix},
\qquad
\hat{\mathbf{Y}} = \frac{\mathbf{Y}}{\|\mathbf{Y}\|}
= \frac{\mathbf{Y}}{\sqrt{(y^{+})^{2} + (y^{-})^{2} + (y^{0})^{2}}}
$$

**Associated notation**
- $\mathbf{Y}$ — triadic state vector in $\mathbb{R}^{3}$
- $\hat{\mathbf{Y}}$ — normalized triadic state (unit vector)
- $\| \cdot \|$ — Euclidean norm on $\mathbb{R}^{3}$

**Magnitude–direction decomposition**

$$
A = \|\mathbf{Y}\|, \qquad
\mathbf{Y} = A \, \hat{\mathbf{Y}}, \qquad
\hat{\mathbf{Y}} \in S^{2}
$$

where $S^{2}$ is the unit sphere in $\mathbb{R}^{3}$.

---

**1D (scalar) version of the normalization**

The quantities are scalars:

- $y^{+}$ — positive contribution  
- $y^{-}$ — negative contribution  
- $y^{0}$ — neutral (zero-state) contribution  
- $v$ — total combined value  
- $|v|$ — absolute value (1D norm)  
- $S$ — normalized result  

**Formation of the total**

$$
v = y^{+} + y^{-} + y^{0}
$$

**Normalization**

$$
S = \frac{v}{|v|} \qquad (v \neq 0)
$$

In one dimension this reduces to the sign function:

$$
S =
\begin{cases}
+1 & \text{if } v > 0, \\
-1 & \text{if } v < 0.
\end{cases}
$$

When $v = 0$ the expression is undefined (or sometimes set to $0$ by convention).

**Example**

$$
y^{+} = 10,\quad y^{-} = -3,\quad y^{0} = 2
\quad\Rightarrow\quad
v = 9
\quad\Rightarrow\quad
S = \frac{9}{|9|} = +1
$$

Any other positive net value (e.g., $v = 900$) likewise yields $S = +1$. Magnitude is discarded; only the sign remains.

**Compact expression**

$$
S = \frac{y^{+} + y^{-} + y^{0}}{\left| y^{+} + y^{-} + y^{0} \right|}
\qquad
\bigl( y^{+} + y^{-} + y^{0} \neq 0 \bigr)
$$

---

**2D normalization**

Each channel is now a 2-vector:

$$
y^{+} = \begin{bmatrix} y_x^{+} \\ y_y^{+} \end{bmatrix}, \quad
y^{-} = \begin{bmatrix} y_x^{-} \\ y_y^{-} \end{bmatrix}, \quad
y^{0} = \begin{bmatrix} y_x^{0} \\ y_y^{0} \end{bmatrix}.
$$

Form the resultant:

$$
\mathbf{v} = y^{+} + y^{-} + y^{0}
= \begin{bmatrix}
y_x^{+} + y_x^{-} + y_x^{0} \\
y_y^{+} + y_y^{-} + y_y^{0}
\end{bmatrix}.
$$

Normalize:

$$
S = \frac{\mathbf{v}}{\|\mathbf{v}\|}
= \frac{\begin{bmatrix} v_x \\ v_y \end{bmatrix}}{\sqrt{v_x^{2} + v_y^{2}}}
\qquad (\mathbf{v} \neq \mathbf{0}).
$$

The result satisfies $\|S\| = 1$ and lies on the unit circle $S^{1}$. Direction is preserved; length is scaled to 1. There are continuously many possible directions rather than only two.

---

**3D version**

Each channel is now a 3-vector:

$$
y^{+} = \begin{bmatrix} y_x^{+} \\ y_y^{+} \\ y_z^{+} \end{bmatrix}, \quad
y^{-} = \begin{bmatrix} y_x^{-} \\ y_y^{-} \\ y_z^{-} \end{bmatrix}, \quad
y^{0} = \begin{bmatrix} y_x^{0} \\ y_y^{0} \\ y_z^{0} \end{bmatrix}.
$$

Form the resultant vector:

$$
\mathbf{v} = y^{+} + y^{-} + y^{0} = \begin{bmatrix}
y_x^{+} + y_x^{-} + y_x^{0} \\
y_y^{+} + y_y^{-} + y_y^{0} \\
y_z^{+} + y_z^{-} + y_z^{0}
\end{bmatrix}.
$$

Its Euclidean norm is

$$
\|\mathbf{v}\| = \sqrt{v_x^{2} + v_y^{2} + v_z^{2}}.
$$

The normalized result is the unit vector in the same direction:

$$
S = \frac{\mathbf{v}}{\|\mathbf{v}\|} = \frac{
\begin{bmatrix}
v_x \\
v_y \\
v_z
\end{bmatrix}
}{\sqrt{v_x^{2} + v_y^{2} + v_z^{2}}}
\qquad (\mathbf{v} \neq \mathbf{0}).
$$

Geometrically, $S$ lies on the unit sphere $S^{2}$ in $\mathbb{R}^{3}$:

$$
\|S\| = 1, \qquad S \in S^{2}.
$$

Every nonzero resultant is projected radially onto this sphere. All vectors pointing in the same direction (regardless of length) map to the same point; only the directional composition of the three channels survives.

---

**Dimensional summary**

- 1D → sign function, image $\{+1, -1\}$
- 2D → unit circle $S^{1}$
- 3D → unit sphere $S^{2}$

Higher dimensions replace the binary choice of sign with a continuous manifold of directions. All of the above is the standard Euclidean normalization of a sum (or of a vector), applied in the indicated dimension.

